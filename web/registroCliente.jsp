<%-- 
    Document   : registroCliente
    Created on : 09-06-2018, 11:47:59
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro de cliente</h1>
        <form>
            Rut: <input type="text" id="rut"/> <br/>
            Nombre: <input type="text" id="nombre"/><br/>
            Apellido Paterno:  <input type="text" id="apellidopaterno"/><br/>
            Apellido Materno:  <input type="text" id="apellidomaterno"/><br/>
            Direccion: <input type="text" id="direccion" />
            Nro <input type="text" id="nro" />
            <br/>
            Empresa: <select id="empresa">
                            <option value="1">Empresa 1</option>
                            <option value="2">Empresa 2</option>
            </select> <br/>
            Comuna: <select id="comuna">
                            <option value="1">Comuna 1</option>
                            <option value="2">Comuna 2</option>
                    </select>
            Provincia: <input type="text" id="provincia" /><br/>
            Región: <input type="text" id="region" /><br/>
            Telefono: <input type="text" id="telefono" /><br/>
            Correo: <input type="text" id="correo" /><br/>
            
            Usuario: <input type="text" id="usuario" /><br/>
            Crear contraseña: <input type="password" id="password" /><br/>
            
            <input type="submit" value="Registrar"/>
            
        </form>
    </body>
</html>
