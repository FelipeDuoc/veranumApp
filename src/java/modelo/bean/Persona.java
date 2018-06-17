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
public class Persona {
    private int id_persona;
    private String rut;
    private String nombres;
    private String apellido_paterno;
    private String apellido_materno;
    private String nombre_calle;
    private String numero_calle;
    private String numero_telefono;
    private String email_persona;
    private String estado_persona;
    private int empresa_id;
    private int hotel_id;
    private int comuna_id;
    private int provincia_id;

    public Persona() {
    }

    public Persona(int id_persona, String rut, String nombres, String apellido_paterno, String apellido_materno, String nombre_calle, String numero_calle, String numero_telefono, String email_persona, String estado_persona, int empresa_id, int hotel_id, int comuna_id, int provincia_id) {
        this.id_persona = id_persona;
        this.rut = rut;
        this.nombres = nombres;
        this.apellido_paterno = apellido_paterno;
        this.apellido_materno = apellido_materno;
        this.nombre_calle = nombre_calle;
        this.numero_calle = numero_calle;
        this.numero_telefono = numero_telefono;
        this.email_persona = email_persona;
        this.estado_persona = estado_persona;
        this.empresa_id = empresa_id;
        this.hotel_id = hotel_id;
        this.comuna_id = comuna_id;
        this.provincia_id = provincia_id;
    }

    public int getId_persona() {
        return id_persona;
    }

    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

    public String getNombre_calle() {
        return nombre_calle;
    }

    public void setNombre_calle(String nombre_calle) {
        this.nombre_calle = nombre_calle;
    }

    public String getNumero_calle() {
        return numero_calle;
    }

    public void setNumero_calle(String numero_calle) {
        this.numero_calle = numero_calle;
    }

    public String getNumero_telefono() {
        return numero_telefono;
    }

    public void setNumero_telefono(String numero_telefono) {
        this.numero_telefono = numero_telefono;
    }

    public String getEmail_persona() {
        return email_persona;
    }

    public void setEmail_persona(String email_persona) {
        this.email_persona = email_persona;
    }

    public String getEstado_persona() {
        return estado_persona;
    }

    public void setEstado_persona(String estado_persona) {
        this.estado_persona = estado_persona;
    }

    public int getEmpresa_id() {
        return empresa_id;
    }

    public void setEmpresa_id(int empresa_id) {
        this.empresa_id = empresa_id;
    }

    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public int getComuna_id() {
        return comuna_id;
    }

    public void setComuna_id(int comuna_id) {
        this.comuna_id = comuna_id;
    }

    public int getProvincia_id() {
        return provincia_id;
    }

    public void setProvincia_id(int provincia_id) {
        this.provincia_id = provincia_id;
    }

    @Override
    public String toString() {
        return "Persona{" + "id_persona=" + id_persona + ", rut=" + rut + ", nombres=" + nombres + ", apellido_paterno=" + apellido_paterno + ", apellido_materno=" + apellido_materno + ", nombre_calle=" + nombre_calle + ", numero_calle=" + numero_calle + ", numero_telefono=" + numero_telefono + ", email_persona=" + email_persona + ", estado_persona=" + estado_persona + ", empresa_id=" + empresa_id + ", hotel_id=" + hotel_id + ", comuna_id=" + comuna_id + ", provincia_id=" + provincia_id + '}';
    }

    
    


    
    
    
}
