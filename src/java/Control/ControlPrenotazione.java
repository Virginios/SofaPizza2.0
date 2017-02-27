/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.Cliente;
import DataAccessSito.DataAccessCliente;
import DataAccessSito.DataAccessPizze;
import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.DataAccessPrenotazione;
import DataAccessSito.Pizze;
import DataAccessSito.PizzePrenotate;
import DataAccessSito.Prenotazione;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Valerio
 */
@WebServlet(name = "ControlPrenotazione", urlPatterns = {"/ControlPrenotazione"})
public class ControlPrenotazione extends HttpServlet {
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
            out.println("<title>Servlet Prenotazione</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Prenotazione at " + request.getContextPath() + "</h1>");
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
          response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        DataAccessPrenotazione daop = new DataAccessPrenotazione();
        String produttore = request.getParameter("produttore");
        Prenotazione prenotazioneVecchia = daop.prendiPrenotazioni(produttore, 0);
        daop.cambiaTipo(prenotazioneVecchia.getNumero_prenotazione(), 1);
        Prenotazione prenotazione = daop.prendiPrenotazioni(produttore, 0);
        if(prenotazione!=null){
            String json1 = (new Gson().toJson(prenotazione));
            DataAccessPizzePrenotate daopp = new DataAccessPizzePrenotate();
            ArrayList<PizzePrenotate> pp = daopp.prendiTutto(prenotazione.getNumero_prenotazione());
            DataAccessPizze daopi= new DataAccessPizze();
            ArrayList<Pizze> pizze = new ArrayList<Pizze> ();
            int totale = 0;
            for(int i =0;i<pp.size();i++){
                Pizze p = daopi.estraiPizza(pp.get(i).getIdpizza());
                totale+=p.getPrezzo()*pp.get(i).getQuantità();
                pizze.add(p);
            }
            logger.info(""+pp.get(0).getIdpizza());
            String email = prenotazione.getCliente();
            DataAccessCliente daoc = new DataAccessCliente();
            Cliente cliente = daoc.trovacliente(email);
            String json2 = (new Gson().toJson(pizze));
            String json3 = (new Gson().toJson(totale));
            String json4 = (new Gson().toJson(cliente));
            String bothJson = "["+json1+","+json2+","+json3+","+json4+"]";
            response.getWriter().write(bothJson);
        }else{
            String json = (new Gson().toJson(prenotazione));
            String bothJson = "["+json+"]";
            response.getWriter().write(bothJson);
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
