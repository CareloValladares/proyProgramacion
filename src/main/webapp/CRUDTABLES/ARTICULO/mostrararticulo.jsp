<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artículos</title>
</head>
<body>
    <h1>Mantenimiento de Artículos</h1>
    <%
        String sql = "SELECT * FROM articulo";
        java.sql.ResultSet res = conex.executeQuery(sql);
    %>

    <center>
    <table border="3">
        <tr>
            <th>CÓDIGO</th><th>CATEGORÍA</th><th>MARCA</th><th>NOMBRE</th><th>Eliminar</th><th>Editar</th>
        </tr>
        <%
            while(res.next()){
                int cod = res.getInt("cod_articulo");
                String cat = res.getString("categoria");
                String mar = res.getString("marca");
                String nom = res.getString("nom_articulo");
        %>
        <tr>
            <td><%= cod %></td>
            <td><%= cat %></td>
            <td><%= mar %></td>
            <td><%= nom %></td>
            <td><a href="eliminararticulo.jsp?cod=<%= cod %>">Eliminar</a></td>
            <td><a href="formumodificararticulo.jsp?cod=<%= cod %>">Modificar</a></td>
        </tr>
        <%
            }
            res.close();
        %>
    </table>

    <p>
    <form method="post" action="insertararticulo.jsp">
        Categoría: <input type="text" name="categoria"><br>
        Marca: <input type="text" name="marca"><br>
        Nombre: <input type="text" name="nom_articulo"><br><br>
        <input type="submit" value="Insertar">
        <input type="reset" value="Limpiar">
    </form>
    </center>

    <p><h3><a href="../mantenimiento.html">Regresar al menú</a></h3>
</body>
</html>
