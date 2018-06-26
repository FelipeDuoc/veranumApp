/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import com.google.gson.Gson;
import java.io.IOException;
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
import modelo.DAO.UsuarioDAO;
import modelo.DAO.UsuarioDAOImpl;
import modelo.bean.Persona;
import modelo.bean.TipoHabitacion;
import modelo.bean.Usuario;

/**
 *
 * @author Felipe
 */

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        String seleccion = request.getParameter("seleccion");
        String direccion = " ";
        RequestDispatcher dispatcher;
        HttpSession sesion = request.getSession();
     
        switch(seleccion){
            
            //Iniciar Sesion
            case "1":
                String usuario = request.getParameter("usuario");
                String password = request.getParameter("password");

                UsuarioDAO u = new UsuarioDAOImpl();

                    Usuario usesion = u.login(usuario, password);

                if(usesion!=null)
                {
                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("nombreUsuario", usesion.getNombre_usuario());
                    sesion.setAttribute("idHotel", usesion.getPersona_id());
                    
                    dispatcher = request.getRequestDispatcher("/profile.jsp");
                    dispatcher.forward(request, response);
                    //response.sendRedirect("index.html");
                }
                else
                {
                    response.sendRedirect("loginNOK.jsp");
                }
            break;
            
            case "2":
                //Registrarse
                Persona persona = new Persona();
                persona.setRut(request.getParameter("rut"));
                persona.setNombres(request.getParameter("nombre"));
                persona.setApellido_paterno(request.getParameter("apellidopaterno"));
                persona.setApellido_materno(request.getParameter("apellidomaterno"));
                persona.setNombre_calle(request.getParameter("direccion"));
                persona.setNumero_calle(request.getParameter("nro"));
                persona.setEmpresa_id(Integer.parseInt(request.getParameter("empresa")));
                persona.setComuna_id(Integer.parseInt(request.getParameter("comuna")));
                persona.setNumero_telefono(request.getParameter("telefono"));
                persona.setEmail_persona(request.getParameter("correo"));
                persona.setHotel_id(1);
                
                PersonaDAO per = new PersonaDAOImpl();
                int resultado = per.insertPersona(persona);
                
                if(resultado!=0){
                    Usuario user = new Usuario();
                    user.setNombre_usuario(request.getParameter("usuario"));
                    user.setPassword_usuario(request.getParameter("password"));
                    user.setPersona_id(resultado);
                    user.setRol_id(4);
                    
                    UsuarioDAO userdao = new UsuarioDAOImpl();
                    int resultadoUser = userdao.CrearUsuario(user);
                    
                    if(resultadoUser!=0){
                        response.sendRedirect("registroClienteOK.jsp");
                    }else{
                        response.sendRedirect("registroClienteNOK.jsp");
                    }
                    
                }
                
            
            break;
        
        }
    }
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("cantidad");
        String tipocama = request.getParameter("tipocama");
        
        
        processRequest(request, response);

    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String action = request.getParameter("cantidad");
        String tipocama = request.getParameter("tipocama");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}