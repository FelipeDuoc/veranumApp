<%-- 
    Document   : cancelarReserva
    Created on : 29-06-2018, 23:30:05
    Author     : Felipe
--%>

<%@page import="modelo.DAO.ReservaDAO"%>
<%@page import="modelo.DAO.ReservaDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        String _idReserva = request.getParameter("idReserva");
        int idReserva = Integer.parseInt(_idReserva);
        String _idHabitacion = request.getParameter("idHabitacion");
        int idHabitacion = Integer.parseInt(_idHabitacion);
        
        ReservaDAO reserva = new ReservaDAOImpl();
        int resultado = reserva.cancelarReserva(idReserva, idHabitacion);
        
        if(resultado ==1){
            response.sendRedirect("misReservas.jsp");
        }else{
            
        }
        
        
        %>
    </body>
</html>
