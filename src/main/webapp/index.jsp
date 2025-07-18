<%-- 
    Document   : index
    Created on : 4 jul. 2025, 7:25:28 p. m.
    Author     : DanielValladares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOLTEC SOFT - Inicio Sesion</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    </head>
    <body>
        <p>
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="card" style="width: 18rem;">
                    <img src="LogoDanyris.png" class="card-img-top" alt="...">
                    <div class="card-body">

                        <form action="LOGIN/validaracceso.jsp" method="post">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="nomusu" aria-describedby="emailHelp" name="nomusu">
                                <%--<div id="emailHelp" class="form-text">Usuario otorgado por el administrador del sistema.</div>--%>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="claveusu" name="claveusu">
                            </div>
                            <%--<div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Recordar</label>
                            </div>--%>
                            <button type="submit" class="btn btn-primary">Ingresar</button>
                            <button type="reset" class="btn btn-primary">Limpiar</button>
                        </form>


                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
    </body>
</html>
