<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artículos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h1 class="text-center mb-4">Mantenimiento de Artículos</h1>

    <%
        String sql = "SELECT * FROM articulo";
        java.sql.ResultSet res = conex.executeQuery(sql);
    %>

    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead class="table-dark">
                <tr>
                    <th>CÓDIGO</th>
                    <th>CATEGORÍA</th>
                    <th>MARCA</th>
                    <th>NOMBRE</th>
                    <th>Eliminar</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(res.next()){
                        int cod = res.getInt("cod_articulo");
                        String cat = res.getString("categoria");
                        String mar = res.getString("marca");
                        String nom = res.getString("nom_articulo");
                %>
                <tr>
                    <td><%= cod %></td>
                    <td><%= cat %></td>
                    <td><%= mar %></td>
                    <td><%= nom %></td>
                    <td>
                        <a href="eliminararticulo.jsp?cod=<%= cod %>" class="btn btn-danger btn-sm">Eliminar</a>
                    </td>
                    <td>
                        <a href="formumodificararticulo.jsp?cod=<%= cod %>" class="btn btn-warning btn-sm">Modificar</a>
                    </td>
                </tr>
                <%
                    }
                    res.close();
                %>
            </tbody>
        </table>
    </div>

    <h3 class="mt-5">Insertar nuevo artículo</h3>
    <form method="post" action="insertararticulo.jsp" class="row g-3">
        <div class="col-md-4">
            <label class="form-label">Categoría</label>
            <input type="text" name="categoria" class="form-control" required>
        </div>
        <div class="col-md-4">
            <label class="form-label">Marca</label>
            <input type="text" name="marca" class="form-control" required>
        </div>
        <div class="col-md-4">
            <label class="form-label">Nombre</label>
            <input type="text" name="nom_articulo" class="form-control" required>
        </div>
        <div class="col-12 mt-3">
            <button type="submit" class="btn btn-success">Insertar</button>
            <button type="reset" class="btn btn-secondary">Limpiar</button>
        </div>
    </form>

    <div class="mt-4">
        <a href="../mantenimiento.jsp" class="btn btn-outline-primary">Regresar al menú</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
