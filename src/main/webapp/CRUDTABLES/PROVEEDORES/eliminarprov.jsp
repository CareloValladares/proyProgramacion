<%@page import="java.sql.*"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>

<%
    String cod = request.getParameter("cod");
    try {
        // Primero eliminamos relaciones en la tabla intermedia
        String sql1 = "DELETE FROM art_prov WHERE PROVEEDOR_cod_proveedor = " + cod;
        conex.executeUpdate(sql1);

        // Luego eliminamos al proveedor
        String sql2 = "DELETE FROM proveedor WHERE cod_proveedor = " + cod;
        conex.executeUpdate(sql2);

        response.sendRedirect("mostrarprov.jsp");
    } catch (Exception e) {
        out.print("Error al eliminar: " + e.getMessage());
    }
%>

