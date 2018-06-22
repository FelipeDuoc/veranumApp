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

    public TipoHabitacion() {
    }

    public TipoHabitacion(int id_tipo_habitacion, String nombre_tipo_habitacion, int valor_diario_habitacion, String nombre_tipo_banio, String nombre_tipo_cama) {
        this.id_tipo_habitacion = id_tipo_habitacion;
        this.nombre_tipo_habitacion = nombre_tipo_habitacion;
        this.valor_diario_habitacion = valor_diario_habitacion;
        this.nombre_tipo_banio = nombre_tipo_banio;
        this.nombre_tipo_cama = nombre_tipo_cama;
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

    @Override
    public String toString() {
        return "TipoHabitacion{" + "id_tipo_habitacion=" + id_tipo_habitacion + ", nombre_tipo_habitacion=" + nombre_tipo_habitacion + ", valor_diario_habitacion=" + valor_diario_habitacion + ", nombre_tipo_banio=" + nombre_tipo_banio + ", nombre_tipo_cama=" + nombre_tipo_cama + '}';
    }
    
    
    
}
