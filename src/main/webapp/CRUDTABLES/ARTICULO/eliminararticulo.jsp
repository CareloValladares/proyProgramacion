<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String codigo = request.getParameter("cod");

    if (codigo != null && !codigo.trim().isEmpty()) {
        try {
            // Primero elimina las relaciones de art_prov
            String deleteRelacion = "DELETE FROM art_prov WHERE ARTICULO_cod_articulo = " + codigo;
            conex.executeUpdate(deleteRelacion);

            // Luego elimina el artículo
            String deleteArticulo = "DELETE FROM articulo WHERE cod_articulo = " + codigo;
            conex.executeUpdate(deleteArticulo);

            response.sendRedirect("mostrararticulo.jsp");
        } catch (Exception e) {
            out.println("Error al eliminar: " + e.getMessage());
        }
    } else {
        out.println("Código no válido para eliminar.");
    }
%>
