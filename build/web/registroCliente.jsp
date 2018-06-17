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
        <form method="post" action="http://localhost:8080/VeranumApp/Controlador">
            Rut: <input type="text" name="rut"/><br/>
            Nombre: <input type="text" name="nombre"/><br/>
            Apellido Paterno:  <input type="text" name="apellidopaterno"/><br/>
            Apellido Materno:  <input type="text" name="apellidomaterno"/><br/>
            Direccion: <input type="text" name="direccion" />
            Nro <input type="text" name="nro" />
            <br/>
            Empresa: <select name="empresa">
                            <option value="1">Empresa 1</option>
                            <option value="2">Empresa 2</option>
            </select> <br/>
            Comuna: <select name="comuna">
                            <option value="1">Comuna 1</option>
                            <option value="2">Comuna 2</option>
                    </select>
            Provincia: <input type="text" name="provincia" /><br/>
            Región: <input type="text" name="region" /><br/>
            Telefono: <input type="text" name="telefono" /><br/>
            Correo: <input type="text" name="correo" /><br/>
            
            Usuario: <input type="text" name="usuario" /><br/>
            Crear contraseña: <input type="password" name="password" /><br/>
            
            <input type="submit" value="Registrar"/>
            
            <input type="hidden" value="2" name="seleccion" />
            
        </form>
    </body>
</html>
