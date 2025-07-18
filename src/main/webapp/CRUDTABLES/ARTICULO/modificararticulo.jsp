<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    try {
        int codigo = Integer.parseInt(request.getParameter("cod_articulo"));
        String categoria = request.getParameter("categoria");
        String marca = request.getParameter("marca");
        String nombre = request.getParameter("nom_articulo");

        String sql = "UPDATE articulo SET categoria = ?, marca = ?, nom_articulo = ? WHERE cod_articulo = ?";
        PreparedStatement ps = cn.prepareStatement(sql);
        ps.setString(1, categoria);
        ps.setString(2, marca);
        ps.setString(3, nombre);
        ps.setInt(4, codigo);

        ps.executeUpdate();
        ps.close();

        response.sendRedirect("mostrararticulo.jsp");

    } catch (Exception e) {
        out.println("<div style='color:red;'>Error al modificar el artículo: " + e.getMessage() + "</div>");
    }
%>
