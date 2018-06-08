/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.DAO.UsuarioDAO;
import modelo.DAO.UsuarioDAOImpl;
import modelo.bean.Usuario;

/**
 *
 * @author Felipe
 */

@WebServlet(name = "Profile", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String seleccion = request.getParameter("seleccion");
        String direccion = " ";
        RequestDispatcher dispatcher;
        HttpSession sesion = request.getSession();
     
        switch(seleccion){
            case "1":
                String usuario = request.getParameter("usuario");
                String password = request.getParameter("password");

                UsuarioDAO u = new UsuarioDAOImpl();

                    Usuario usesion = u.login(usuario, password);

                if(usesion!=null)
                {
                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("nombreUsuario", usesion.getNombre_usuario());
                    
                    dispatcher = request.getRequestDispatcher("/profile.jsp");
                    dispatcher.forward(request, response);
                    //response.sendRedirect("index.html");
                }
                else
                {
                    response.sendRedirect("loginNOK.jsp");
                }
            break;
        
        }
    }
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}