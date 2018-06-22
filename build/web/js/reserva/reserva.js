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
        var $table = $("<table>").appendTo($("#somediv"));
            
        $("<tr>").appendTo($table)                     
                .append($("<th>").text("TIPO HABITACION"))
                .append($("<th>").text("VALOR"))
                .append($("<th>").text("BAÑO"))
                .append($("<th>").text(""));
        $.each(responseJson, function(index, product) {    
            $("<tr>").appendTo($table)                     
                .append($("<td>").text(product.nombre_tipo_habitacion))       
                .append($("<td>").text(product.valor_diario_habitacion))      
                .append($("<td>").text(product.nombre_tipo_banio))   
                .append("<td></td>");  
        }); 
    });
});


