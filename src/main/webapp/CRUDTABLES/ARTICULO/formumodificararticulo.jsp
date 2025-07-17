<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String codigo = request.getParameter("cod");
    String sql = "SELECT * FROM articulo WHERE cod_articulo=" + codigo;
    java.sql.ResultSet res = conex.executeQuery(sql);
    res.next();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Artículo</title>
</head>
<body>
    <h1>Modificar Artículo</h1>
    <form method="post" action="modificararticulo.jsp">
        <input type="hidden" name="cod_articulo" value="<%= res.getInt("cod_articulo") %>">
        Categoría: <input type="text" name="categoria" value="<%= res.getString("categoria") %>"><br>
        Marca: <input type="text" name="marca" value="<%= res.getString("marca") %>"><br>
        Nombre: <input type="text" name="nom_articulo" value="<%= res.getString("nom_articulo") %>"><br><br>
        <input type="submit" value="Modificar">
        <input type="reset" value="Cancelar">
    </form>
</body>
</html>
<%
    res.close();
%>
