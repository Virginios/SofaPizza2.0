/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.Cliente;
import DataAccessSito.DataAccessCliente;
import DataAccessSito.DataAccessPizzeria;
import DataAccessSito.Pizzeria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Valerio
 */
@WebServlet(name = "RegistrazionePizzeria", urlPatterns = {"/RegistrazionePizzeria"})
public class RegistrazionePizzeria extends HttpServlet {

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
            out.println("<title>Servlet RegistrazionePizzeria</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrazionePizzeria at " + request.getContextPath() + "</h1>");
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
        Pizzeria c = new Pizzeria();
        c.setNome(request.getParameter("nome"));
        c.setPiva(request.getParameter("partitaIva"));
        c.setVia(request.getParameter("indirizzo"));
        c.setPaese(request.getParameter("paese"));
        c.setPassword(request.getParameter("password"));
        c.setNumero(request.getParameter("numeroTelefono"));
        c.setProvincia(request.getParameter("provincia"));
        DataAccessPizzeria daoc = new DataAccessPizzeria();
        if (!daoc.Pizzeria_registrata(request.getParameter("partitaIva"))) {
            HttpSession session = request.getSession();
            session.setAttribute("pizzeria", c);   
            RequestDispatcher view = request.getRequestDispatcher("SuccessoPizzeriaInserimentoDati.jsp");
            view.forward(request, response);
        } else {
            RequestDispatcher view = request.getRequestDispatcher("RegErrorPizzeria.jsp");
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
