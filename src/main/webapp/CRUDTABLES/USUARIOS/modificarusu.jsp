<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    int cu=Integer.parseInt(request.getParameter("codu"));
    String nu=request.getParameter("nomu");
    String sql="UPDATE usuario SET nomapeu='"+nu+"' WHERE cod_usuario='"+cu+"'";
    conex.executeUpdate(sql);
    conex.close();
    response.sendRedirect("mostrarusu.jsp");
%>
