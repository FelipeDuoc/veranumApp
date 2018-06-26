/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

/**
 *
 * @author Felipe
 */
public class TipoHabitacion {
    private int id_tipo_habitacion;
    private String nombre_tipo_habitacion;
    private int valor_diario_habitacion;
    private String nombre_tipo_banio;
    private String nombre_tipo_cama;
    private int valor_diario_hab_oferta;
    private int porcentaje_descuento;

    public TipoHabitacion() {
    }

    public TipoHabitacion(int id_tipo_habitacion, String nombre_tipo_habitacion, int valor_diario_habitacion, String nombre_tipo_banio, String nombre_tipo_cama, int valor_diario_hab_oferta, int porcentaje_descuento) {
        this.id_tipo_habitacion = id_tipo_habitacion;
        this.nombre_tipo_habitacion = nombre_tipo_habitacion;
        this.valor_diario_habitacion = valor_diario_habitacion;
        this.nombre_tipo_banio = nombre_tipo_banio;
        this.nombre_tipo_cama = nombre_tipo_cama;
        this.valor_diario_hab_oferta = valor_diario_hab_oferta;
        this.porcentaje_descuento = porcentaje_descuento;
    }

    public int getId_tipo_habitacion() {
        return id_tipo_habitacion;
    }

    public void setId_tipo_habitacion(int id_tipo_habitacion) {
        this.id_tipo_habitacion = id_tipo_habitacion;
    }

    public String getNombre_tipo_habitacion() {
        return nombre_tipo_habitacion;
    }

    public void setNombre_tipo_habitacion(String nombre_tipo_habitacion) {
        this.nombre_tipo_habitacion = nombre_tipo_habitacion;
    }

    public int getValor_diario_habitacion() {
        return valor_diario_habitacion;
    }

    public void setValor_diario_habitacion(int valor_diario_habitacion) {
        this.valor_diario_habitacion = valor_diario_habitacion;
    }

    public String getNombre_tipo_banio() {
        return nombre_tipo_banio;
    }

    public void setNombre_tipo_banio(String nombre_tipo_banio) {
        this.nombre_tipo_banio = nombre_tipo_banio;
    }

    public String getNombre_tipo_cama() {
        return nombre_tipo_cama;
    }

    public void setNombre_tipo_cama(String nombre_tipo_cama) {
        this.nombre_tipo_cama = nombre_tipo_cama;
    }

    public int getValor_diario_hab_oferta() {
        return valor_diario_hab_oferta;
    }

    public void setValor_diario_hab_oferta(int valor_diario_hab_oferta) {
        this.valor_diario_hab_oferta = valor_diario_hab_oferta;
    }

    public int getPorcentaje_descuento() {
        return porcentaje_descuento;
    }

    public void setPorcentaje_descuento(int porcentaje_descuento) {
        this.porcentaje_descuento = porcentaje_descuento;
    }

    @Override
    public String toString() {
        return "TipoHabitacion{" + "id_tipo_habitacion=" + id_tipo_habitacion + ", nombre_tipo_habitacion=" + nombre_tipo_habitacion + ", valor_diario_habitacion=" + valor_diario_habitacion + ", nombre_tipo_banio=" + nombre_tipo_banio + ", nombre_tipo_cama=" + nombre_tipo_cama + ", valor_diario_hab_oferta=" + valor_diario_hab_oferta + ", porcentaje_descuento=" + porcentaje_descuento + '}';
    }
    
    
    
    
    
}
