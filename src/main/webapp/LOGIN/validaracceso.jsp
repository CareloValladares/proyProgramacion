<%@ include file="../CONNECTION/conexion.jsp" %>

<%
String nu = request.getParameter("nomusu");
String cv = request.getParameter("claveusu");

String sql = "SELECT * FROM usuario WHERE codigou='" + nu + "' AND claveu='" + cv + "'";
java.sql.ResultSet res = conex.executeQuery(sql);

if (res.absolute(1)) {
    // Guarda datos del usuario en la sesión
    session.setAttribute("codUsuario", res.getString("codigou"));
    session.setAttribute("nombreUsuario", res.getString("nomapeu")); // nombre y apellidos
    response.sendRedirect("../CRUDTABLES/mantenimiento.jsp"); // cambiamos .html a .jsp
} else {
%>
    <h1>ACCESO DENEGADO</h1>
    <center>
        <input type="button" value="Retornar" onclick="history.back()">
    </center>
<%
}
%>
