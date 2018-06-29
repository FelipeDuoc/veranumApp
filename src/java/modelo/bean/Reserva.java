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
public class Reserva {
    private int id_reserva;
    private String fecha_check_in;
    private String fecha_check_out;
    private int costo_total;
    private String estado_reserva;
    private int habitacion_id;
    private String nombre_habitacion;
    private int persona_id;
    private String nombre_persona;
    private int convenio_id;

    public Reserva() {
    }

    public Reserva(int id_reserva, String fecha_check_in, String fecha_check_out, int costo_total, String estado_reserva, int habitacion_id, String nombre_habitacion, int persona_id, String nombre_persona, int convenio_id) {
        this.id_reserva = id_reserva;
        this.fecha_check_in = fecha_check_in;
        this.fecha_check_out = fecha_check_out;
        this.costo_total = costo_total;
        this.estado_reserva = estado_reserva;
        this.habitacion_id = habitacion_id;
        this.nombre_habitacion = nombre_habitacion;
        this.persona_id = persona_id;
        this.nombre_persona = nombre_persona;
        this.convenio_id = convenio_id;
    }

    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public String getFecha_check_in() {
        return fecha_check_in;
    }

    public void setFecha_check_in(String fecha_check_in) {
        this.fecha_check_in = fecha_check_in;
    }

    public String getFecha_check_out() {
        return fecha_check_out;
    }

    public void setFecha_check_out(String fecha_check_out) {
        this.fecha_check_out = fecha_check_out;
    }

    public int getCosto_total() {
        return costo_total;
    }

    public void setCosto_total(int costo_total) {
        this.costo_total = costo_total;
    }

    public String getEstado_reserva() {
        return estado_reserva;
    }

    public void setEstado_reserva(String estado_reserva) {
        this.estado_reserva = estado_reserva;
    }

    public int getHabitacion_id() {
        return habitacion_id;
    }

    public void setHabitacion_id(int habitacion_id) {
        this.habitacion_id = habitacion_id;
    }

    public String getNombre_habitacion() {
        return nombre_habitacion;
    }

    public void setNombre_habitacion(String nombre_habitacion) {
        this.nombre_habitacion = nombre_habitacion;
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public String getNombre_persona() {
        return nombre_persona;
    }

    public void setNombre_persona(String nombre_persona) {
        this.nombre_persona = nombre_persona;
    }

    public int getConvenio_id() {
        return convenio_id;
    }

    public void setConvenio_id(int convenio_id) {
        this.convenio_id = convenio_id;
    }

    @Override
    public String toString() {
        return "Reserva{" + "id_reserva=" + id_reserva + ", fecha_check_in=" + fecha_check_in + ", fecha_check_out=" + fecha_check_out + ", costo_total=" + costo_total + ", estado_reserva=" + estado_reserva + ", habitacion_id=" + habitacion_id + ", nombre_habitacion=" + nombre_habitacion + ", persona_id=" + persona_id + ", nombre_persona=" + nombre_persona + ", convenio_id=" + convenio_id + '}';
    }

    
    
    
    
}
