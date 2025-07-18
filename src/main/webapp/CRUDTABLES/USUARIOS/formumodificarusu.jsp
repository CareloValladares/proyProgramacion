<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-warning text-white">
            <h4 class="mb-0">Modificar Usuario</h4>
        </div>
        <div class="card-body">
            <%
                int c = Integer.parseInt(request.getParameter("v"));
                String sql = "SELECT * FROM usuario WHERE cod_usuario = " + c;
                java.sql.ResultSet res = conex.executeQuery(sql);

                if (res.next()) {
                    int cod_usuario = res.getInt("cod_usuario");
                    String nombre = res.getString("nomapeu");
            %>

            <form method="post" action="modificarusu.jsp">
                <input type="hidden" name="codu" value="<%= cod_usuario %>">
                
                <div class="mb-3">
                    <label for="nomu" class="form-label">Nombre del Usuario</label>
                    <input type="text" class="form-control" id="nomu" name="nomu" 
                           onkeyup="this.value = this.value.toUpperCase()" 
                           value="<%= nombre %>" required>
                </div>
                
                <button type="submit" class="btn btn-success">Modificar</button>
                <button type="reset" class="btn btn-secondary">Borrar</button>
                <a href="javascript:history.back();" class="btn btn-danger">Volver</a>
            </form>

            <%
                } else {
            %>
                <div class="alert alert-danger">Usuario no encontrado.</div>
            <%
                }
                res.close();
            %>
        </div>
    </div>
</div>

</body>
</html>
