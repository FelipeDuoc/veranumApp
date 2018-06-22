/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.DAO.PersonaDAO;
import modelo.DAO.PersonaDAOImpl;
import modelo.DAO.TipoHabitacionDAO;
import modelo.DAO.TipoHabitacionDAOImpl;
import modelo.DAO.UsuarioDAO;
import modelo.DAO.UsuarioDAOImpl;
import modelo.bean.Persona;
import modelo.bean.TipoHabitacion;
import modelo.bean.Usuario;

/**
 *
 * @author Felipe
 */

@WebServlet(name = "ControladorJson", urlPatterns = {"/ControladorJson"})
public class ControladorJson extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String seleccion = request.getParameter("seleccion");
        
        switch(seleccion){
            case "1":
                PrintWriter out = response.getWriter();
                int cama = Integer.parseInt(request.getParameter("cama"));
                int cantidad = Integer.parseInt(request.getParameter("cantidad"));
                String user = request.getParameter("usuario");
                
                TipoHabitacionDAO th = new TipoHabitacionDAOImpl();
                List<TipoHabitacion> res = th.verTipoHabitacion(cama, cantidad, user);
                
                String gson = new Gson().toJson(res);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(gson);
                
                
            break;
        }
        
        processRequest(request, response);

    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        //response.setContentType("application/json; charset=utf-8");
        
        
        
    }


}
