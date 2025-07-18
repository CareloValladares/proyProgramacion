<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../CONNECTION/conexion.jsp"%>
<%
int c=Integer.parseInt(request.getParameter("v"));
String sql="DELETE FROM usuario WHERE cod_usuario='"+c+"'";
conex.executeUpdate(sql);
conex.close();
response.sendRedirect("mostrarusu.jsp");
%>
