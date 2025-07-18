<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mantenimiento de Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="text-center mb-4">Mantenimiento de Usuarios</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th>Código</th>
                    <th>Usuario</th>
                    <th>Eliminar</th>
                    <th>Modificar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String sql = "SELECT * FROM usuario";
                    java.sql.ResultSet res = conex.executeQuery(sql);
                    while(res.next()) {
                        int cu = res.getInt("cod_usuario");
                        String nu = res.getString("nomapeu");
                %>
                <tr>
                    <td><%= cu %></td>
                    <td><%= nu %></td>
                    <td>
                        <a href="eliminarusu.jsp?v=<%= cu %>" class="btn btn-danger btn-sm">Eliminar</a>
                    </td>
                    <td>
                        <a href="formumodificarusu.jsp?v=<%= cu %>" class="btn btn-primary btn-sm">Modificar</a>
                    </td>
                </tr>
                <%
                    }
                    res.close();
                %>
            </tbody>
        </table>
    </div>

    <hr>

    <h4>Registrar nuevo usuario</h4>
    <form method="post" action="insertarusu.jsp" class="mt-3">
        <div class="mb-3">
            <label for="nomapeu" class="form-label">Nombre y Apellido:</label>
            <input type="text" name="nomapeu" id="nomapeu" class="form-control"
                   onkeyup="this.value = this.value.toUpperCase()" required>
        </div>
        <div class="mb-3">
            <label for="codigou" class="form-label">Código Usuario:</label>
            <input type="text" name="codigou" id="codigou" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="claveu" class="form-label">Clave:</label>
            <input type="password" name="claveu" id="claveu" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-success">Insertar</button>
        <button type="reset" class="btn btn-secondary">Limpiar</button>
    </form>

    <div class="mt-4">
        <a href="../mantenimiento.jsp" class="btn btn-outline-dark">Retornar al Menú</a>
    </div>
</div>

</body>
</html>
