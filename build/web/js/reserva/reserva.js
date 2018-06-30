/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $(document).ajaxStart(function () {
        $("#loading").show();
    }).ajaxStop(function () {
        $("#loading").hide();
    });
});

$(document).on("click", "#consultar", function() {     
    var cantidadpersona = $('#cantidadpersona').val();
    var tipocama = $("#tipocama").val();
    var user = $('input[name=nombreUsuario]').val();
    
    var get = 'ControladorJson?cantidad='+cantidadpersona+'&cama='+tipocama+'&seleccion=1&usuario='+user;
    
    $("#somediv").html("");
    
    $.get(get, function(responseJson) {          
        var $table = $('<table class="table table-striped">').appendTo($("#somediv"));
            
        $("<tr>").appendTo($table)                     
                .append($("<th>").text("NOMBRE HABITACIÓN"))
                .append($("<th>").text("VALOR"))
                .append($("<th>").text("BAÑO"))
                .append($("<th>").text("CAMA"))
                .append($("<th>").text(""));
        $.each(responseJson, function(index, product) {    
            $("<tr>").appendTo($table)                     
                .append($("<td>").text(product.nombre_tipo_habitacion))       
                .append($("<td>").append("$ "+product.valor_diario_habitacion+" (CLP)"))      
                .append($("<td>").text(product.nombre_tipo_banio))
                .append($("<td>").text(product.nombre_tipo_cama)) 
                .append("<td>").append("<a class='btn btn-info' href='sendReserva.jsp?idtipohabitacion="+product.id_tipo_habitacion+"'>Reservar</a>");  
        }); 
    });
});


