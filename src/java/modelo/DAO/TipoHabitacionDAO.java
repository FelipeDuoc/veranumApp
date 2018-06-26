/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.util.List;
import modelo.bean.TipoHabitacion;

/**
 *
 * @author Felipe
 */
public interface TipoHabitacionDAO {
    public List<TipoHabitacion> verTipoHabitacion(int tipocama, int cantidadPersona, String user);
    public List<TipoHabitacion> verTipoHabitacionOferta();
}
