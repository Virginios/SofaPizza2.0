/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.Cliente;
import DataAccessSito.DataAccessCliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Valerio
 */
@WebServlet(name = "RegistrazioneCliente", urlPatterns = {"/RegistrazioneCliente"})
public class RegistrazioneCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HelloWorl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HelloWorl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cliente c = new Cliente();
        c.setNome(request.getParameter("nome"));
        c.setCognome(request.getParameter("cognome"));
        c.setEmail(request.getParameter("email"));
        c.setVia(request.getParameter("indirizzo"));
        c.setPaese(request.getParameter("paese"));
        //c.setCarta(request.getParameter("carta"));
        c.setCarta("h");
        c.setTipoCliente(Integer.parseInt(request.getParameter("pizzeriacliente")));
        c.setPassword(request.getParameter("password"));
        String data = (request.getParameter("anno")+
                "-"+request.getParameter("mese")+"-"+request.getParameter("giorno"));
        c.setDataNascita(data);
        DataAccessCliente daoc =new DataAccessCliente();
        daoc.inserisciCliente(c);
       
         //response.setContentType("text/html");
    //PrintWriter out = response.getWriter();

    /*out.println("<html>");
    out.println("<head>");
    out.println("<title>Hola</title>");
    out.println("</head>");
    out.println("<body>");
                out.println("<h1>Servlet HelloWorl at " + request.getParameter("giorno")+ request.getParameter("mese")+request.getParameter("anno") +"</h1>");

    out.println("</body>");
    out.println("</html>");*/
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
