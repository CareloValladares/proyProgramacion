<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String sql = "SELECT * FROM proveedor";
    java.sql.ResultSet res = conex.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mantenimiento de Proveedores</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="text-center mb-4">
            <h2 class="text-primary">Mantenimiento de Proveedores</h2>
        </div>

       
        <div class="table-responsive">
            <table class="table table-bordered table-striped align-middle text-center shadow-sm">
                <thead class="table-dark">
                    <tr>
                        <th>CÓDIGO</th>
                        <th>RAZÓN SOCIAL</th>
                        <th>RUC</th>
                        <th>DIRECCIÓN</th>
                        <th>ELIMINAR</th>
                        <th>EDITAR</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while(res.next()) {
                            int cod = res.getInt("cod_proveedor");
                            String razon = res.getString("razon_social");
                            String ruc = res.getString("ruc");
                            String direccion = res.getString("direccion");
                    %>
                    <tr>
                        <td><%= cod %></td>
                        <td><%= razon %></td>
                        <td><%= ruc %></td>
                        <td><%= direccion %></td>
                        <td>
                            <a href="eliminarprov.jsp?cod=<%= cod %>" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
                        <td>
                            <a href="formumodificarprov.jsp?cod=<%= cod %>" class="btn btn-warning btn-sm">Modificar</a>
                        </td>
                    </tr>
                    <%
                        }
                        res.close();
                    %>
                </tbody>
            </table>
        </div>

        
        <div class="card mt-5 shadow">
            <div class="card-header bg-success text-white text-center">
                <h5>Insertar Nuevo Proveedor</h5>
            </div>
            <div class="card-body">
                <form method="post" action="insertarprov.jsp">
                    <div class="mb-3">
                        <label class="form-label">Razón Social</label>
                        <input type="text" name="razon_social" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">RUC</label>
                        <input type="text" name="ruc" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Dirección</label>
                        <input type="text" name="direccion" class="form-control" required>
                    </div>
                    <div class="d-flex justify-content-between">
                        <button type="submit" class="btn btn-primary">Insertar</button>
                        <button type="reset" class="btn btn-secondary">Limpiar</button>
                    </div>
                </form>
            </div>
        </div>

      
        <div class="text-center mt-4">
            <a href="../mantenimiento.jsp" class="btn btn-outline-primary">Regresar al Menú</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
