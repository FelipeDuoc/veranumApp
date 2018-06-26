<%-- 
    Document   : ofertas
    Created on : 24-06-2018, 22:49:16
    Author     : Felipe
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.bean.TipoHabitacion"%>
<%@page import="modelo.DAO.TipoHabitacionDAO"%>
<%@page import="modelo.DAO.TipoHabitacionDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ofertas</title>
    </head>
    <body>
        <h1>Ofertas disponibles!</h1>
        <table id="ofertas">
            <thead>
                <th>Habitacion</th>
                <th>Precio Normal</th>
                <th>Descuento</th>
                <th>Precio Oferta</th>
                <th>Tipo Baño</th>
                <th>Tipo Cama</th>
            </thead>
            <tbody>
                <%   
                    TipoHabitacionDAO tip = new TipoHabitacionDAOImpl();
                    List<TipoHabitacion> list = tip.verTipoHabitacionOferta();
                    
                    for (int i = 0; i < list.size(); i++) {
                        TipoHabitacion t = list.get(i);
                   
                 %>
                 <tr>
                     <td><%=t.getNombre_tipo_habitacion()%></td>
                     <td><%=t.getValor_diario_habitacion()   %></td>
                     <td><%=t.getPorcentaje_descuento()+" %"%></td>
                     <td><%="$ "+t.getValor_diario_hab_oferta()   %></td>
                     <td><%=t.getNombre_tipo_banio()   %></td>
                     <td><%=t.getNombre_tipo_cama()  %></td>
                     <td><a href="http://localhost:8080/VeranumApp/reservarOferta.jsp?id=<%=t.getId_tipo_habitacion() %>">Reservar</a></td>
                 </tr>
            <%     
                    }
            %>
            </tbody>
            
        </table>
        
    </body>
</html>
