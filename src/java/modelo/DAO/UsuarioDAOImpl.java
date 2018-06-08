/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Usuario;
import oracle.jdbc.*;
/**
 *
 * @author Felipe
 */
public class UsuarioDAOImpl implements UsuarioDAO{

    private static final Logger logger = Logger.getLogger(UsuarioDAOImpl.class.getName());
    private Connection con;
    private Conexion cx;
    
    @Override
    public Usuario login(String user, String pass) {
        Usuario toReturn = null;
        cx = new Conexion();
        con = cx.getCon();
        OracleCallableStatement ps = null;
        ResultSet rs = null;
        try {
            ps = (OracleCallableStatement) con.prepareCall("{call PKG_USUARIO.PROC_SELECT_USUARIO_LOGIN(?,?,?)}");
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.registerOutParameter(3, OracleTypes.CURSOR);
            
            ps.execute();
            
            rs = (ResultSet) ps.getObject(3);
            
            while (rs.next()) {
                toReturn = new Usuario(rs.getInt(1), 
                                rs.getString(2),
                                rs.getString(3),
                                rs.getInt(4),
                                rs.getInt(5),
                                rs.getString(6),
                                rs.getString(7));
                
            }
        } catch (SQLException ex) {
            logger.log(Level.INFO, "CALL PROCEDURE PKG_USUARIO.PROC_SELECT_USUARIO_LOGIN, sql exception statement: {0}", ex.getMessage());
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                logger.log(Level.SEVERE, null, ex);
            }
        }
        return toReturn;
    }
    
}
