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
        try {
            pizzaConn = new ConnDatabase();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void doSave(PizzePrenotate pizza){
            try {
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
    public ArrayList<PizzePrenotate> doRetrieveAll(){
        String selectSQL = "SELECT * FROM " + Nome_Tabella;
        ArrayList<PizzePrenotate> listaPizze = new ArrayList<PizzePrenotate>();
        PreparedStatement prepStat;
            try {
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
    public PizzePrenotate doRetrieveByKeys(int id){
	String selectSQL = "SELECT * FROM " + Nome_Tabella +" WHERE idpizza = ?";
        PizzePrenotate pizza = new PizzePrenotate();
        PreparedStatement prepStat;
            try {
                prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
                prepStat.setInt(1,id);
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
    
    public void doDelete(int id){
        String deleteSQL = "DELETE FROM " + Nome_Tabella +" WHERE idpizza = ?";
        PreparedStatement prepStat;
        try {
            prepStat = pizzaConn.getConn().prepareStatement(deleteSQL);
            prepStat.setInt(1, id);
            prepStat.executeUpdate();
            prepStat.close();
	    pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private static final String Nome_Tabella = "pizze prenotate";
}
