<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String codigo = request.getParameter("cod");
    String sql = "DELETE FROM articulo WHERE cod_articulo=" + codigo;
    conex.executeUpdate(sql);
    response.sendRedirect("mostrararticulo.jsp");
%>
