<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    int cod = Integer.parseInt(request.getParameter("cod"));
    String sql = "SELECT * FROM proveedor WHERE cod_proveedor=" + cod;
    java.sql.ResultSet res = conex.executeQuery(sql);
    res.next();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Proveedor</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow rounded">
                    <div class="card-header bg-warning text-white text-center">
                        <h4>Modificar Proveedor</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="modificarprov.jsp">
                            <input type="hidden" name="cod_proveedor" value="<%= res.getInt("cod_proveedor") %>">

                            <div class="mb-3">
                                <label class="form-label">Razón Social</label>
                                <input type="text" name="razon_social" class="form-control" value="<%= res.getString("razon_social") %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">RUC</label>
                                <input type="text" name="ruc" class="form-control" value="<%= res.getString("ruc") %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Dirección</label>
                                <input type="text" name="direccion" class="form-control" value="<%= res.getString("direccion") %>" required>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button type="submit" class="btn btn-success">Modificar</button>
                                <button type="reset" class="btn btn-secondary">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="text-center mt-3">
                    <a href="../menu.jsp" class="btn btn-link">Volver al Menú</a>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%
    res.close();
%>
