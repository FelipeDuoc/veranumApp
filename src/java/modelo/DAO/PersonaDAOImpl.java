/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Persona;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Felipe
 */
public class PersonaDAOImpl implements PersonaDAO{
    
    private static final Logger logger = Logger.getLogger(PersonaDAOImpl.class.getName());
    private Connection con;
    private Conexion cx;

    @Override
    public int insertPersona(Persona persona) {
        cx = new Conexion();
        con = cx.getCon();
        OracleCallableStatement ps = null;
        ResultSet rs = null;
        int res = 0;
        
        try {
            ps = (OracleCallableStatement) con.prepareCall("{call PKG_PERSONA.PROC_INSERT_PERSONA(?,?,?,?,?,?,?,?,?,?,?,?)}");
            ps.setString(1, persona.getRut());
            ps.setString(2, persona.getNombres());
            ps.setString(3, persona.getApellido_paterno());
            ps.setString(4, persona.getApellido_materno());
            ps.setString(5, persona.getNombre_calle());
            ps.setString(6, persona.getNumero_telefono());
            ps.setString(7, persona.getEmail_persona());
            ps.setInt(8, persona.getComuna_id());
            ps.setString(9, persona.getNumero_calle());
            ps.setInt(10, persona.getEmpresa_id());
            ps.setInt(11, persona.getHotel_id());
            ps.registerOutParameter(12, OracleTypes.CURSOR);
            
            ps.execute();
            
            rs = (ResultSet) ps.getObject(12);
            
            while(rs.next()){
                res = rs.getInt(1);
            }
            
            return res;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }
    
}
