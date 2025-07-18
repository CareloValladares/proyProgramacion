<%@include file="../../CONEX/CONEXION.jsp"%>
<%
int c=Integer.parseInt(request.getParameter("v"));
String sql="delete from usuario where codigou='"+c+"'";
re.executeUpdate(sql);
re.close();
response.sendRedirect("mostrarusu.jsp");
%>
