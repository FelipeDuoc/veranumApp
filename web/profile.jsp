<%-- 
    Document   : profile
    Created on : 07-06-2018, 23:28:25
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
    </head>
    <%
            String nombreUsuario = (String)session.getAttribute("nombreUsuario");
            if(nombreUsuario==null)
            {
               response.sendRedirect("login.jsp");
            }
        %>
    <body>
        <h1>Bienvenido <%=nombreUsuario %> </h1>
        <p>
            Texto de prueba
            
        </p>
        <h3><a href="http://localhost:8080/VeranumApp/cierreSesion.jsp">Cierre Sesion</a></h3>
    </body>
</html>
