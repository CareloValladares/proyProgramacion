<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Proveedores</title>
</head>
<body>
    <h1>Mantenimiento de Proveedores</h1>
    <%
        String sql = "SELECT * FROM proveedor";
        java.sql.ResultSet res = conex.executeQuery(sql);
    %>

    <center>
    <table border="3">
        <tr>
            <th>CÓDIGO</th><th>RAZÓN SOCIAL</th><th>RUC</th><th>DIRECCIÓN</th><th>Eliminar</th><th>Editar</th>
        </tr>
        <%
            while(res.next()){
                int cod = res.getInt("cod_proveedor");
                String razon = res.getString("razon_social");
                String ruc = res.getString("ruc");
                String direccion = res.getString("direccion");
        %>
        <tr>
            <td><%= cod %></td>
            <td><%= razon %></td>
            <td><%= ruc %></td>
            <td><%= direccion %></td>
            <td><a href="eliminarprov.jsp?cod=<%= cod %>">Eliminar</a></td>
            <td><a href="formumodificarprov.jsp?cod=<%= cod %>">Modificar</a></td>
        </tr>
        <%
            }
            res.close();
        %>
    </table>

    <p>
    <form method="post" action="insertarprov.jsp">
        Razón Social: <input type="text" name="razon_social"><br>
        RUC: <input type="text" name="ruc"><br>
        Dirección: <input type="text" name="direccion"><br><br>
        <input type="submit" value="Insertar">
        <input type="reset" value="Limpiar">
    </form>
    </center>

    <p><h3><a href="../mantenimiento.html">Regresar al menú</a></h3>
</body>
</html>
