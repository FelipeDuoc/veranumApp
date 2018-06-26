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
import modelo.bean.TipoHabitacion;
import modelo.bean.Usuario;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Felipe
 */
public class TipoHabitacionDAOImpl implements TipoHabitacionDAO{
    private static final Logger logger = Logger.getLogger(TipoHabitacionDAOImpl.class.getName());
    private Connection con;
    private Conexion cx;
    
    @Override
    public List<TipoHabitacion> verTipoHabitacion(int tipocama, int cantidadPersona, String user) {
        List<TipoHabitacion> lista = new ArrayList<TipoHabitacion>();
        TipoHabitacion tip = null;
        cx = new Conexion();
        con = cx.getCon();
        OracleCallableStatement ps = null;
        ResultSet rs = null;
        try {
            ps = (OracleCallableStatement) con.prepareCall("{call PKG_TIPO_HABITACION.PROC_SELECT_HAB_FILTER(?,?,?,?)}");
            ps.setInt(1, cantidadPersona);
            ps.setInt(2, tipocama);
            ps.setString(3, user);
            ps.registerOutParameter(4, OracleTypes.CURSOR);
            
            ps.execute();
            
            rs = (ResultSet) ps.getObject(4);
            
            while (rs.next()) {
                tip = new TipoHabitacion();
                tip.setId_tipo_habitacion(rs.getInt(1));
                tip.setNombre_tipo_habitacion(rs.getString(2));
                tip.setValor_diario_habitacion(rs.getInt(3));
                tip.setNombre_tipo_banio(rs.getString(4));
                tip.setNombre_tipo_cama(rs.getString(5));
                
                lista.add(tip);
                
            }
        } catch (SQLException ex) {
            logger.log(Level.INFO, "CALL PROCEDURE PKG_TIPO_HABITACION.PROC_SELECT_HAB_FILTER, sql exception statement: {0}", ex.getMessage());
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                logger.log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

    @Override
    public List<TipoHabitacion> verTipoHabitacionOferta() {
        List<TipoHabitacion> lista = new ArrayList<TipoHabitacion>();
        TipoHabitacion tip = null;
        cx = new Conexion();
        con = cx.getCon();
        OracleCallableStatement ps = null;
        ResultSet rs = null;
        try {
            ps = (OracleCallableStatement) con.prepareCall("{call PKG_TIPO_HABITACION.PROC_SELECT_HAB_OFERTA(?)}");
            ps.registerOutParameter(1, OracleTypes.CURSOR);
            
            ps.execute();
            
            rs = (ResultSet) ps.getObject(1);
            
            while (rs.next()) {
                tip = new TipoHabitacion();
                tip.setId_tipo_habitacion(rs.getInt(1));
                tip.setNombre_tipo_habitacion(rs.getString(2));
                tip.setValor_diario_habitacion(rs.getInt(3));
                tip.setValor_diario_hab_oferta(rs.getInt(4));
                tip.setPorcentaje_descuento(rs.getInt(5));
                tip.setNombre_tipo_banio(rs.getString(6));
                tip.setNombre_tipo_cama(rs.getString(7));
                
                lista.add(tip);
                
            }
        } catch (SQLException ex) {
            logger.log(Level.INFO, "CALL PROCEDURE PKG_TIPO_HABITACION.PROC_SELECT_HAB_OFERTA, sql exception statement: {0}", ex.getMessage());
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
