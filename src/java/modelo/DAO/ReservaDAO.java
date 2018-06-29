/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.util.List;
import modelo.bean.Reserva;

/**
 *
 * @author Felipe
 */
public interface ReservaDAO {
    public List<Reserva> verReservas(int persona_id);
}
