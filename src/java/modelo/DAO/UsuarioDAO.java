/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import modelo.bean.Usuario;

/**
 *
 * @author Felipe
 */
public interface UsuarioDAO {
    
    public Usuario login(String user, String pass);
    
}
