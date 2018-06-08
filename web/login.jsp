<%-- 
    Document   : login
    Created on : 07-06-2018, 23:22:38
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>INICIO SESION</h1>
        <form  method="post" action="http://localhost:8080/VeranumApp/Controlador">
        Usuario: <input type="text" name="usuario" required="" /><br/>
        <p>
        Password: <input type="password" name="password" required="" /><br/>
        <p>
        <input type="submit" value="login" style="width:100px; height:25px" />
        <input type="hidden" value="1" name="seleccion" />
        </form>
    </body>
</html>
