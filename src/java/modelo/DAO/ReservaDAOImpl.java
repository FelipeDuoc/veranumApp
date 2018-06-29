/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Reserva;
import modelo.bean.TipoHabitacion;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Felipe
 */
public class ReservaDAOImpl implements ReservaDAO{
    private static final Logger logger = Logger.getLogger(TipoHabitacionDAOImpl.class.getName());
    private Connection con;
    private Conexion cx;
    
    @Override
    public List<Reserva> verReservas(int persona_id) {
        List<Reserva> lista = new ArrayList<Reserva>();
        Reserva reser = null;
        cx = new Conexion();
        con = cx.getCon();
        OracleCallableStatement ps = null;
        ResultSet rs = null;
        try {
            ps = (OracleCallableStatement) con.prepareCall("{call PKG_RESERVA.PROC_SELECT_MIS_RESERVAS(?,?)}");
            ps.setInt(1, persona_id);
            ps.registerOutParameter(2, OracleTypes.CURSOR);
            
            ps.execute();
            
            rs = (ResultSet) ps.getObject(2);
            
            while (rs.next()) {
                reser = new Reserva();
                reser.setId_reserva(rs.getInt(1));
                reser.setFecha_check_in(rs.getString(2));
                reser.setFecha_check_out(rs.getString(3));
                reser.setCosto_total(rs.getInt(4));
                reser.setEstado_reserva(rs.getString(5));
                reser.setHabitacion_id(rs.getInt(6));
                reser.setNombre_habitacion(rs.getString(7));
                reser.setPersona_id(rs.getInt(8));
                reser.setNombre_persona(rs.getString(9));
                reser.setConvenio_id(10);
                
                lista.add(reser);
                
            }
        } catch (SQLException ex) {
            logger.log(Level.INFO, "CALL PROCEDURE PKG_RESERVA.PROC_SELECT_MIS_RESERVAS, sql exception statement: {0}", ex.getMessage());
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                logger.log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }
    
}
