/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DataAccessSito.DataAccessPizze;
import DataAccessSito.DataAccessPizzeria;
import DataAccessSito.Pizze;
import DataAccessSito.Pizzeria;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
@WebServlet(name = "ModificaMenu", urlPatterns = {"/ModificaMenu"})
public class ModificaMenu extends HttpServlet {

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
            out.println("<title>Servlet ModificaMenu</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModificaMenu at " + request.getContextPath() + "</h1>");
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
        String[] nomePizze = request.getParameterValues("nomePizza");
        String[] nomeIngredienti = request.getParameterValues("nomeIngredienti");
        String[] prezzo = request.getParameterValues("prezzo");

        //HttpSession session = request.getSession();
        //Pizzeria p = (Pizzeria) session.getAttribute("pizzeria");
        String[] idUp = request.getParameterValues("id");
        ArrayList<Pizze> modListaPizze = new ArrayList<Pizze>();
        DataAccessPizze pizze = new DataAccessPizze();

        ArrayList<Pizze> pizzeEsist = pizze.estraiPizze("051245154");

        int intPart = 0;
        int[] numDaCancellare = new int[pizzeEsist.size()];

        if (idUp.length > 0) {
            int[] idNumUp = new int[idUp.length];
            for (int i = 0; i < idUp.length; i++) {
                idNumUp[i] = Integer.parseInt(idUp[i]);
            }
            for (int i = 0; i < idNumUp.length; i++) {
                Pizze pizza = new Pizze();
                double numero = Double.parseDouble(prezzo[i]);
                numero = Math.floor(numero * 100) / 100;
                pizza.setIngredienti(nomeIngredienti[i]);
                pizza.setNome(nomePizze[i]);
                pizza.setPrezzo(numero);
                pizza.setProduttore("051245154");
                pizza.setIdpizza(idNumUp[i]);
                modListaPizze.add(pizza);
            }
            intPart = idNumUp.length;
            boolean canc = true;
            for (int i = 0; i < pizzeEsist.size(); i++) {
                for (int j = 0; j < idNumUp.length; j++) {
                    if (pizzeEsist.get(i).getIdpizza() == idNumUp[j]) {
                        canc = false;
                        break;
                    }
                }
                if (canc) {
                    numDaCancellare[i] = pizzeEsist.get(i).getIdpizza();
                }
                canc = true;
            }
        }
        ArrayList<Pizze> listaPizze = new ArrayList<Pizze>();
        boolean mod = false;
        for (int i = intPart; i < prezzo.length; i++) {
            Pizze pizza = new Pizze();
            double numero = Double.parseDouble(prezzo[i]);
            numero = Math.floor(numero * 100) / 100;
            pizza.setIngredienti(nomeIngredienti[i]);
            pizza.setNome(nomePizze[i]);
            pizza.setPrezzo(numero);
            pizza.setProduttore("051245154");
            listaPizze.add(pizza);

        }

        pizze.modificaPizze(modListaPizze);

            pizze.cancellapizze(numDaCancellare);
        pizze.inseriscipizze(listaPizze);
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
