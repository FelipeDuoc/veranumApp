<%-- 
    Document   : cierreSesion
    Created on : 08-06-2018, 0:09:47
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesion Terminada</title>
    </head>
    <%
        session.invalidate();
        response.sendRedirect("login.jsp");
    %>
</html>
