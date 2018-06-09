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
    <body>
        <h1>Reservar Habitación</h1>
        <form>
            Fecha Inicio: <input type="text" id="fechainicio"/> <br/>
            Fecha Inicio: <input type="text" id="fechatermino"/> <br/>
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
