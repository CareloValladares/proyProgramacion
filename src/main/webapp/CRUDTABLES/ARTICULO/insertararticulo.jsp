<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String categoria = request.getParameter("categoria");
    String marca = request.getParameter("marca");
    String nombre = request.getParameter("nom_articulo");

    if (categoria != null && marca != null && nombre != null) {
        String sql = "INSERT INTO articulo (categoria, marca, nom_articulo) VALUES ('" + categoria + "', '" + marca + "', '" + nombre + "')";
        conex.executeUpdate(sql);
    }
    response.sendRedirect("mostrararticulo.jsp");
%>
