<%-- 
    Document   : mostrarusu
    Created on : 15 jul. 2025, 9:25:53 a. m.
    Author     : DanielValladares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../CONNECTION/conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOLTEC SOFT</title>
    </head>
    <body>
        <h1>Mantenimiento de Usuarios</h1>
        <%
            String sql="select * from usuario";
            java.sql.ResultSet res= conex.executeQuery(sql);
            
        %>
        
        <center>
        <table border="3">
            <tr>
                <td>CODIGO</td><td>USUARIO</td><td>Eliminar</td><td>Editar</td>
            </tr>
            <%
                while(res.next()){
                int cu=res.getInt("cod_usuario");
                String nu=res.getString("nomapeu");
                
            %>
            <tr>
                <td><% out.print(cu); %></td>
                <td><% out.print(nu); %></td>
                <td><a href="eliminausu.jsp?v=<%out.print(cu);%>">Eliminar</a></td>
                <td><a href="formumodificarsu.jsp?v=<%out.print(cu);%>">Modificar</a></td>
            </tr>
            
            <%
                }
            res.close();
            %>
        </table>
        <p>
        <form method="post" action="insertarusu.jsp">
            Nombre y Apellido del nuevo usuario:
            <input type="text" onkeyup="this.value = this.value.toUpperCase()" name="nomapeusu"><p>
                <input type="submit" value="Insertar">
                <input type="reset" value="Limpiar">
            
        </form>
        
    </center>
        
    <p>
    <h3><a href="../mantenimiento.html">Retorno al menu</a></h3>
    
    
    </body>
</html>
