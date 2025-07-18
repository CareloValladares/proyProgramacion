<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<%
    String codigo = request.getParameter("cod");
    String sql = "SELECT * FROM articulo WHERE cod_articulo=" + codigo;
    java.sql.ResultSet res = conex.executeQuery(sql);
    res.next();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Artículo</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow rounded">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Modificar Artículo</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="modificararticulo.jsp">
                            <input type="hidden" name="cod_articulo" value="<%= res.getInt("cod_articulo") %>">

                            <div class="mb-3">
                                <label class="form-label">Categoría</label>
                                <input type="text" name="categoria" class="form-control" value="<%= res.getString("categoria") %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Marca</label>
                                <input type="text" name="marca" class="form-control" value="<%= res.getString("marca") %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Nombre del Artículo</label>
                                <input type="text" name="nom_articulo" class="form-control" value="<%= res.getString("nom_articulo") %>" required>
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
