/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.DataAccessPizzeria;
import DataAccessSito.Pizzeria;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Logger;
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
@WebServlet(name = "Ricerca", urlPatterns = {"/Ricerca"})
public class Ricerca extends HttpServlet {
    private static Logger logger = Logger.getLogger("classname");

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
            out.println("<title>Servlet Ricerca</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Ricerca at " + request.getContextPath() + "</h1>");
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
        String ricerca = request.getParameter("cerco");
        DataAccessPizzeria daop = new DataAccessPizzeria();
        ArrayList<Pizzeria> p =  daop.trovaPizzerieDaFiltro(ricerca,0);
        HttpSession session = request.getSession();

        if (p.isEmpty()) {
            session.setAttribute("pizzerie", null);
        } else {
            session.setAttribute("pizzerie", p);
        }
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        RequestDispatcher view = request.getRequestDispatcher("RisultatiRicerca.jsp");
        view.forward(request, response);
             /*out.println("<html>");
    out.println("<head>");
    out.println("<title>Hola</title>");
    out.println("</head>");
    out.println("<body>");
                out.println("<h1>Servlet HelloWorl at"+p.get(0).getNome() +"</h1>");

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
