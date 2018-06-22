<%-- 
    Document   : reservaCliente
    Created on : 09-06-2018, 12:32:50
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva</title>
    </head>
    <%
            String nombreUsuario = (String)session.getAttribute("nombreUsuario");
            if(nombreUsuario==null)
            {
               response.sendRedirect("login.jsp");
            }else{
               
            }
    %>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/messages_es.js"></script>
        <script src="js/reserva/reserva.js"></script>
        <script>
        $(function(){
            $("#fechainicio").datepicker({
                dateFormat:'dd/mm/yy'
            });
            $("#fechatermino").datepicker({
                dateFormat:'dd/mm/yy'
            });
        });
        </script>
    <body>
        <h1>Reservar Habitación</h1>
        <form method="#">
            
            Fecha Inicio: <input name="fechainicio" id="fechainicio"/> <br/>
            Fecha Termino: <input name="fechatermino" id="fechatermino"/> <br/>
            Personas: <select name="cantidadpersona" id="cantidadpersona">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            Tipo cama: <select name="tipocama" id="tipocama">
                <option value="1">1 Cama Doble</option>
                <option value="2">2 Cama Doble</option>
                <option value="3">1 Cama Simple</option>
                <option value="4">2 Cama Simple</option>
            </select>
            
            Servicios extras:
            <input type="checkbox" value="1" id="servicioextra">

            <input type="button" id="consultar" name="consultar" value="consultar"/>
            <div id="loading" style="display: none"> Cargando...</div>
            <input type="hidden" value="<%=nombreUsuario%>" name="nombreUsuario" id=nombreUsuario"/>
        </form>
        
        <br/><br/>
        <table id="somediv" >
            
        </table>
    </body>
</html>
