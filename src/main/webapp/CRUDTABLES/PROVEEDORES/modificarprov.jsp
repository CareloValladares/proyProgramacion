<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    int cod = Integer.parseInt(request.getParameter("cod_proveedor"));
    String razon = request.getParameter("razon_social");
    String ruc = request.getParameter("ruc");
    String direccion = request.getParameter("direccion");

    String sql = "UPDATE proveedor SET razon_social='" + razon + "', ruc='" + ruc + "', direccion='" + direccion + "' WHERE cod_proveedor=" + cod;
    conex.executeUpdate(sql);
    conex.close();
    response.sendRedirect("mostrarprov.jsp");
%>
