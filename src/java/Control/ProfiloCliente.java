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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Valerio
 */
@WebServlet(name = "ProfiloCliente", urlPatterns = {"/ProfiloCliente"})
public class ProfiloCliente extends HttpServlet {

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
            out.println("<title>Servlet ProfiloCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfiloCliente at " + request.getContextPath() + "</h1>");
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
        c.setProvincia(request.getParameter("provincia"));
        c.setPaese(request.getParameter("paese"));
        c.setVia(request.getParameter("via"));
        DataAccessCliente daoc = new DataAccessCliente();
        Cliente cliente = daoc.trovacliente("ss");
        String vPassword = request.getParameter("VecchiaPassword");
        if(vPassword.equals(cliente.getPassword())){
            String nPassword = request.getParameter("NuovaPassword");
            c.setPassword(nPassword);
            daoc.modificaCliente(c);
        }
        else{
            RequestDispatcher view = request.getRequestDispatcher("ModificaProfClienteErrato.jsp");
            view.forward(request, response);
        }
        
            
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
