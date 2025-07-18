<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../CONNECTION/conexion.jsp"%>
<%
String nu=request.getParameter("nomapeu");
String cu=request.getParameter("codigou");
String cv=request.getParameter("claveu");
String sql="INSERT INTO usuario(nomapeu,codigou,claveu)VALUES('"+nu+"','"+cu+"','"+cv+"')";
conex.executeUpdate(sql);
conex.close();
response.sendRedirect("mostrarusu.jsp");
%>
