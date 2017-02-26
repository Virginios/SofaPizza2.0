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

    public void aggiungi(ArrayList<PizzePrenotate> pizza) {
        try {
            this.pizzaConn = new ConnDatabase();
           String Nome_Tabella = "pizzeprenotate";
                
                    String insertSQL = "INSERT INTO " + Nome_Tabella
                            + " (idpizza, prezzo, quantita)"
                            + " VALUES (?, ?, ?)";
                    PreparedStatement prepStat = pizzaConn.getConn().prepareStatement(insertSQL);
                    for(int i=0;i<pizza.size();i++){
                   
                    prepStat.setInt(1, pizza.get(i).getIdpizza());
                    prepStat.setDouble(2, pizza.get(i).getPrezzo());
                    prepStat.setInt(3, pizza.get(i).getQuantità());
                    prepStat.executeUpdate();
                    }
                    prepStat.close();
                    pizzaConn.chiudi();
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
                pizza.setPrezzo(risultato.getDouble("prezzo"));
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
                pizza.setPrezzo(risultato.getDouble("prezzo"));
                pizza.setNumero_prenotazione(risultato.getInt("numeroPrenotazione"));
                pizza.setQuantità(risultato.getInt("quantita"));
            }else{
                pizza = null;
            }
            prepStat.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pizza;
    }
    private static final String Nome_Tabella = "pizzeprenotate";
}
