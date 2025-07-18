<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>SOLTEC SOFT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap 5 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container py-5">
            <div class="text-center mb-4">
                <h1 class="display-5">Mantenimiento de Tablas</h1>
                <hr class="my-4">
            </div>

            <!-- Mostrar nombre del usuario logueado -->
            <%
                String nombre = (String) session.getAttribute("nombreUsuario");
                if (nombre != null) {
            %>
                <div class="alert alert-success text-center fw-bold">
                    Bienvenido, <%= nombre %> 👋
                </div>
            <%
                } else {
            %>
                <div class="alert alert-warning text-center">
                    No has iniciado sesión
                </div>
            <%
                }
            %>

            <div class="list-group">
                <a href="USUARIOS/mostrarusu.jsp" class="list-group-item list-group-item-action">Usuarios</a>
                <a href="PROVEEDORES/mostrarprov.jsp" class="list-group-item list-group-item-action">Proveedores</a>
                <a href="ARTICULO/mostrararticulo.jsp" class="list-group-item list-group-item-action">Artículos</a>
            </div>

            <div class="text-center mt-4">
                <a href="../index.jsp" class="btn btn-secondary">Cerrar sesión</a>
            </div>
        </div>

        <!-- Bootstrap JS (opcional si usas componentes interactivos) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
