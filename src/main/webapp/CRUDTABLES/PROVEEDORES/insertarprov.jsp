<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String razon = request.getParameter("razon_social");
    String ruc = request.getParameter("ruc");
    String direccion = request.getParameter("direccion");

    // Ejecutar la inserción
    String sql = "INSERT INTO proveedor (razon_social, ruc, direccion) VALUES ('" + razon + "', '" + ruc + "', '" + direccion + "')";
    conex.executeUpdate(sql);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Proveedor Insertado</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="refresh" content="2; URL=mostrarprov.jsp"> <!-- Redirección en 2 segundos -->
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <div class="alert alert-success shadow-sm" role="alert">
                    <h4 class="alert-heading">¡Proveedor Insertado!</h4>
                    <p>La información del proveedor ha sido registrada correctamente.</p>
                    <hr>
                    <p class="mb-0">Redirigiendo a la lista de proveedores...</p>
                </div>
                <a href="mostrarprov.jsp" class="btn btn-outline-primary mt-3">Ir ahora</a>
            </div>
        </div>
    </div>
</body>
</html>
