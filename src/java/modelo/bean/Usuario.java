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
public class Usuario {
    private int id_usuario;
    private String nombre_usuario;
    private String password_usuario;
    private int persona_id;
    private int rol_id;
    private String estado_usuario;
    private String nombre_rol;

    public Usuario() {
    }

    public Usuario(int id_usuario, String nombre_usuario, String password_usuario, int persona_id, int rol_id, String estado_usuario, String nombre_rol) {
        this.id_usuario = id_usuario;
        this.nombre_usuario = nombre_usuario;
        this.password_usuario = password_usuario;
        this.persona_id = persona_id;
        this.rol_id = rol_id;
        this.estado_usuario = estado_usuario;
        this.nombre_rol = nombre_rol;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getPassword_usuario() {
        return password_usuario;
    }

    public void setPassword_usuario(String password_usuario) {
        this.password_usuario = password_usuario;
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public String getEstado_usuario() {
        return estado_usuario;
    }

    public void setEstado_usuario(String estado_usuario) {
        this.estado_usuario = estado_usuario;
    }

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_usuario=" + id_usuario + ", nombre_usuario=" + nombre_usuario + ", password_usuario=" + password_usuario + ", persona_id=" + persona_id + ", rol_id=" + rol_id + ", estado_usuario=" + estado_usuario + ", nombre_rol=" + nombre_rol + '}';
    }
    
    
}
