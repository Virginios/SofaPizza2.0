/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Valerio
 */
public class DataAccessPizzePrenotate {

    ConnDatabase pizzaConn;

    public DataAccessPizzePrenotate() {
    }

    public void aggiungi(PizzePrenotate pizza) {
        try {
            this.pizzaConn = new ConnDatabase();
                PizzePrenotate risultato = ricercaChiave(pizza.getIdpizza(),pizza.getNumero_prenotazione());
                if(risultato == null){
                    String insertSQL = "INSERT INTO " + Nome_Tabella
                            + " (numeroPrenotazione, idpizza, prezzo, quantita)"
                            + " VALUES (?, ?, ?, ?)";
                    PreparedStatement prepStat = pizzaConn.getConn().prepareStatement(insertSQL);
                    prepStat.setInt(1, pizza.getNumero_prenotazione());
                    prepStat.setInt(2, pizza.getIdpizza());
                    prepStat.setInt(3, pizza.getPrezzo());
                    prepStat.setInt(4, pizza.getQuantità());
                    prepStat.close();
                    pizzaConn.chiudi();
                    prepStat.execute();
                }else{
                    aggiornaQuantita(risultato);
                }

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<PizzePrenotate> prendiTutto(int numeroPrenotazione) {
        String selectSQL = "SELECT * FROM " + Nome_Tabella + " WHERE idpizza = ? ";
        ArrayList<PizzePrenotate> listaPizze = new ArrayList<PizzePrenotate>();
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
            prepStat.setInt(1, numeroPrenotazione);
            ResultSet risultato = prepStat.executeQuery();
            while (risultato.next()) {
                PizzePrenotate pizza = new PizzePrenotate();
                pizza.setIdpizza(risultato.getInt("idpizza"));
                pizza.setPrezzo(risultato.getInt("prezzo"));
                pizza.setNumero_prenotazione(risultato.getInt("numeroprenotazione"));
                pizza.setQuantità(risultato.getInt("quantita"));
                listaPizze.add(pizza);
            }
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaPizze;
    }

    public void cancellaSingolaPizzaPrenotata(int id, int numeroPrenotazione) {
        String deleteSQL = "DELETE FROM " + Nome_Tabella + " WHERE (idpizza = ? AND numeroPrenotazione = ?)";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(deleteSQL);
            prepStat.setInt(1, id);
            prepStat.setInt(2, numeroPrenotazione);
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void aggiornaQuantita(PizzePrenotate pizza){
        String update = "UPDATE " + Nome_Tabella + " SET quantita = ? "
                + "WHERE (idpizza = ? AND numeroPrenotazione = ?)";
         PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(update);
            prepStat.setInt(1, pizza.getQuantità()+1);
            prepStat.setInt(2, pizza.getIdpizza());
            prepStat.setInt(3, pizza.getNumero_prenotazione());
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }
    public PizzePrenotate ricercaChiave(int id, int numeroPrenotazione) {
        String selectSQL = "SELECT * FROM " + Nome_Tabella + " WHERE (idpizza = ? AND numeroPrenotazione = ?)";
        PizzePrenotate pizza = new PizzePrenotate();
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
            prepStat.setInt(1, id);
            prepStat.setInt(2, numeroPrenotazione);
            ResultSet risultato = prepStat.executeQuery();
            if (risultato.next()) {
                pizza.setIdpizza(risultato.getInt("idpizza"));
                pizza.setPrezzo(risultato.getInt("prezzo"));
                pizza.setNumero_prenotazione(risultato.getInt("numeroPrenotazione"));
                pizza.setQuantità(risultato.getInt("quantita"));
            }
            prepStat.close();
            pizzaConn.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pizza;
    }
    private static final String Nome_Tabella = "pizzeprenotate";
}
