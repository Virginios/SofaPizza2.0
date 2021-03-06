/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.DataAccessPizze;
import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.Pizze;
import DataAccessSito.PizzePrenotate;
import DataAccessSito.Prodotti;
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
@WebServlet(name = "Carrello", urlPatterns = {"/Carrello"})
public class Carrello extends HttpServlet {

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
            out.println("<title>Servlet Carrello</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Carrello at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(true);  
        String id[] = (String[]) session.getAttribute("id");
        String quantita[] = (String[]) session.getAttribute("quantita");
        Prodotti prec = (Prodotti) session.getAttribute("carrello");
        double totale =0;
        int dim =0;
        if(prec!=null)
            dim= prec.getPizza().size();
        dim+=id.length;
        ArrayList<Pizze> pizze = new ArrayList<Pizze>();
        DataAccessPizze daop = new DataAccessPizze();
        Prodotti carrello = new Prodotti();
        int[] quantitaInt = new int[dim];
        for(int i =0;i<id.length;i++){
            quantitaInt[i]= Integer.parseInt(quantita[i]);
            if(quantitaInt[i]>0){
                Pizze p = daop.estraiPizza(Integer.parseInt(id[i]));
                totale+=p.getPrezzo()*quantitaInt[i];
                totale = Math.floor(totale * 100) / 100;
                pizze.add(p);
            }
        }
         if(prec!=null){
             session.removeAttribute("carrello");
             int[] quantitaPrec = prec.getQuantita();
             ArrayList<Pizze> pizzePrec = prec.getPizza();
             int j=pizze.size();
             boolean enter= false;
             for(int i=0;i<pizzePrec.size();i++){
                 for(int d=0;d<pizze.size();d++){
                     if(pizzePrec.get(i).getIdpizza()==pizze.get(d).getIdpizza()){
                         quantitaInt[d]+=quantitaPrec[i];
                         enter=true;
                         break;
                     }
                 }
                 if(!enter){
                    pizze.add(pizzePrec.get(i));
                    quantitaInt[j]= quantitaPrec[i];
                 }
                 enter=false;
                 j++;
             }
             totale += prec.getTotale();
             
         }
               carrello.setQuantita(quantitaInt);
        carrello.setTotale(totale);
         carrello.setPizza(pizze);
         session.removeAttribute("id");
         session.removeAttribute("quantita");
         session.setAttribute("carrello", carrello);
         RequestDispatcher view = request.getRequestDispatcher("Carrello.jsp");
            view.forward(request, response);
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
