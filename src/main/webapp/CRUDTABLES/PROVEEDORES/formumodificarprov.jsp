<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Proveedor</title>
</head>
<body>
    <h1>Modificar Proveedor</h1>
    <%
        int cod = Integer.parseInt(request.getParameter("cod"));
        String sql = "SELECT * FROM proveedor WHERE cod_proveedor=" + cod;
        java.sql.ResultSet res = conex.executeQuery(sql);
        res.next();
    %>

    <form method="post" action="modificarprov.jsp">
        <input type="hidden" name="cod_proveedor" value="<%= res.getInt("cod_proveedor") %>">
        Razón Social: <input type="text" name="razon_social" value="<%= res.getString("razon_social") %>"><br>
        RUC: <input type="text" name="ruc" value="<%= res.getString("ruc") %>"><br>
        Dirección: <input type="text" name="direccion" value="<%= res.getString("direccion") %>"><br><br>
        <input type="submit" value="Modificar">
    </form>
</body>
</html>
