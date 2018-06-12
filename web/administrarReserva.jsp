<%-- 
    Document   : AdministrarReserva
    Created on : 11-06-2018, 23:16:33
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva admin</title>
    </head>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/messages_es.js"></script>
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
        <h1>Adminitrar Reserva</h1>
        <form>
            Rut: <input id="rut" type="text"/> <br/>
            Fecha Inicio: <input id="fechainicio"/> <br/>
            Fecha Inicio: <input id="fechatermino"/> <br/>
            Habitación: <select>
                <option value="0">Seleccionar habitación</option>
                <option value="1">habitación 1</option>
                <option value="2">habitación 2</option>
            </select>
            Servicios extras:
            <input type="checkbox" value="1" id="servicioextra">
            Descripción habitación:
            <input type="text">
        </form>
    </body>
</html>

