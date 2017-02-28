/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.Cliente;
import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.DataAccessPrenotazione;
import DataAccessSito.Pizze;
import DataAccessSito.PizzePrenotate;
import DataAccessSito.Pizzeria;
import DataAccessSito.Prenotazione;
import DataAccessSito.Prodotti;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "ConfermaPrenotazione", urlPatterns = {"/ConfermaPrenotazione"})
public class ConfermaPrenotazione extends HttpServlet {

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
            out.println("<title>Servlet ConfermaPrenotazione</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfermaPrenotazione at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
           Prodotti p = (Prodotti)session.getAttribute("carrello");
           Cliente c = (Cliente) session.getAttribute("cliente");
           if(c!=null){
           Pizzeria produttore = (Pizzeria) session.getAttribute("pizzeria");
           ArrayList<PizzePrenotate> pp = new ArrayList<PizzePrenotate>();
           ArrayList<Pizze> pizze = p.getPizza();
           Prenotazione prenotazione = new Prenotazione();
           prenotazione.setCliente(c.getEmail());
           prenotazione.setIndirizzoCliente(c.getVia());
           prenotazione.setTipo_pagamento(0);
           prenotazione.setTpo_prenotazione(0);
           prenotazione.setProduttore(produttore.getPiva());
           DataAccessPrenotazione daopre = new DataAccessPrenotazione();
           daopre.aggiungiPrenotazione(prenotazione);
           int numeroPrenotazione = daopre.prendiNumeroPrenotazione(c.getEmail(), 0);
           for(int i=0;i<pizze.size();i++){
               PizzePrenotate pizzePrenotate = new PizzePrenotate();
               pizzePrenotate.setIdpizza(pizze.get(i).getIdpizza());
               pizzePrenotate.setPrezzo(pizze.get(i).getPrezzo());
               pizzePrenotate.setQuantità(p.getQuantita()[i]);
               pizzePrenotate.setNumero_prenotazione(numeroPrenotazione);
               pp.add(pizzePrenotate);
           }
           DataAccessPizzePrenotate daopp = new DataAccessPizzePrenotate();
           daopp.aggiungi(pp);
           session.removeAttribute("carrello");
           }
           else{
               RequestDispatcher view = request.getRequestDispatcher("LoginCliente.jsp");
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
