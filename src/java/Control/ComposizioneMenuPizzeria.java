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
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Valerio
 */
@WebServlet(name = "ComposizioneMenuPizzeria", urlPatterns = {"/ComposizioneMenuPizzeria"})
public class ComposizioneMenuPizzeria extends HttpServlet {

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
            out.println("<title>Servlet ComposizioneMenuPizzeria</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ComposizioneMenuPizzeria at " + request.getContextPath() + "</h1>");
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
        String nomePizze[] = request.getParameterValues("nomePizza");
        String nomeIngredienti[] = request.getParameterValues("nomeIngredienti");
        String prezzo[] = request.getParameterValues("prezzo");
        HttpSession session = request.getSession();
        Pizzeria p = (Pizzeria) session.getAttribute("pizzeria");
        DataAccessPizzeria pizzerie = new DataAccessPizzeria();

        pizzerie.inserisciPizzeria(p);

        ArrayList<Pizze> listaPizze = new ArrayList<Pizze>();

        for (int i = 0; i < prezzo.length; i++) {
            Pizze pizza = new Pizze();
            double numero = Double.parseDouble(prezzo[i]);
            numero = Math.floor(numero * 100) / 100;
            pizza.setIngredienti(nomeIngredienti[i]);
            pizza.setNome(nomePizze[i]);
            pizza.setPrezzo(numero);
            pizza.setProduttore(p.getPiva());
            listaPizze.add(pizza);
        }
        DataAccessPizze pizze = new DataAccessPizze();

        pizze.inseriscipizze(listaPizze);
        try (PrintWriter out = response.getWriter()) {
            logger.info("cazzo");
            Part part = request.getPart("file");
            InputStream is = part.getInputStream();
            BufferedImage bufImage = ImageIO.read(is);
            File file = new File("src\\img\\images2.jpg");
            ImageIO.write(bufImage, "jpg", file);
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
