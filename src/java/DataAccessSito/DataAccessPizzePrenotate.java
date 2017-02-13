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
    public void aggiungi(PizzePrenotate pizza){
            try {
                this.pizzaConn = new ConnDatabase();
                String insertSQL="INSERT INTO " + Nome_Tabella +
                        " (numero prenotazione, idpizza, prezzo, quantità)" +
                        " VALUES (?, ?, ?, ?)";
                PreparedStatement prepStat = pizzaConn.getConn().prepareStatement(insertSQL);
                prepStat.setInt(1, pizza.getNumero_prenotazione());
                prepStat.setInt(2, pizza.getIdpizza());
                prepStat.setInt(3, pizza.getPrezzo());
                prepStat.setInt(3, pizza.getQuantità());
                prepStat.executeUpdate();
                prepStat.close();
		pizzaConn.getConn().close();

            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }

    }
    public ArrayList<PizzePrenotate> prendiTutto(){
        String selectSQL = "SELECT * FROM " + Nome_Tabella;
        ArrayList<PizzePrenotate> listaPizze = new ArrayList<PizzePrenotate>();
        PreparedStatement prepStat;
            try {
                this.pizzaConn = new ConnDatabase();
                prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
                ResultSet risultato = prepStat.executeQuery();
                while(risultato.next()){
                    PizzePrenotate pizza = new PizzePrenotate();
                    pizza.setIdpizza(risultato.getInt("idpizza"));
                    pizza.setPrezzo(risultato.getInt("prezzo"));
                    pizza.setNumero_prenotazione(risultato.getInt("numeroprenotazione"));
                    pizza.setQuantità(risultato.getInt("quantità"));
                    listaPizze.add(pizza);
                }
                prepStat.close();
                pizzaConn.chiudi();
            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }
        return listaPizze;
    }
    public PizzePrenotate ricercaChiave(int id,int numeroPrenotazione){
	String selectSQL = "SELECT * FROM " + Nome_Tabella +" WHERE (idpizza = ? AND numero prenotazione = ?)";
        PizzePrenotate pizza = new PizzePrenotate();
        PreparedStatement prepStat;
            try {
                this.pizzaConn = new ConnDatabase();
                prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
                prepStat.setInt(1,id);
                prepStat.setInt(2, numeroPrenotazione);
                ResultSet risultato = prepStat.executeQuery();
                if(risultato.next()){
                    pizza.setIdpizza(risultato.getInt("idpizza"));
                    pizza.setPrezzo(risultato.getInt("prezzo"));
                    pizza.setNumero_prenotazione(risultato.getInt("numeroprenotazione"));
                    pizza.setQuantità(risultato.getInt("quantità"));
                }
                prepStat.close();
                pizzaConn.chiudi();

            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }
        return pizza;
    }
    
    public void cancella(int id,int numeroPrenotazione){
        String deleteSQL = "DELETE FROM " + Nome_Tabella +" WHERE (idpizza = ? AND numero prenotazione = ?)";
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
    private static final String Nome_Tabella = "pizze prenotate";
}
