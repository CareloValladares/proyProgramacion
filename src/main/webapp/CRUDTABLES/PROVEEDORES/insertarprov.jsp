<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String razon = request.getParameter("razon_social");
    String ruc = request.getParameter("ruc");
    String direccion = request.getParameter("direccion");

    String sql = "INSERT INTO proveedor (razon_social, ruc, direccion) VALUES ('" + razon + "', '" + ruc + "', '" + direccion + "')";
    conex.executeUpdate(sql);
    response.sendRedirect("mostrarprov.jsp");
%>
