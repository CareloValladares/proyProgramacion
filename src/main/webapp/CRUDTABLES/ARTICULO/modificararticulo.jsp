<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    int codigo = Integer.parseInt(request.getParameter("cod_articulo"));
    String categoria = request.getParameter("categoria");
    String marca = request.getParameter("marca");
    String nombre = request.getParameter("nom_articulo");

    String sql = "UPDATE articulo SET categoria='" + categoria + "', marca='" + marca + "', nom_articulo='" + nombre + "' WHERE cod_articulo=" + codigo;
    conex.executeUpdate(sql);
    response.sendRedirect("mostrararticulo.jsp");
%>
