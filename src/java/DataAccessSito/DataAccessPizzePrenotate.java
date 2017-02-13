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
        ConnDatabase pizza;
    public DataAccessPizzePrenotate() {
        try {
            pizza = new ConnDatabase();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void doSave(PizzePrenotate pizza){
            try {
                String insertSQL="INSERT INTO " + TABLE_NAME +
                        " (numero prenotazione, idpizza, prezzo, quantità)" +
                        " VALUES (?, ?, ?, ?)";
                PreparedStatement prepStat = this.pizza.getConn().prepareStatement(insertSQL);
                prepStat.setInt(1, pizza.getNumero_prenotazione());
                prepStat.setInt(2, pizza.getIdpizza());
                prepStat.setInt(3, pizza.getPrezzo());
                prepStat.setInt(3, pizza.getQuantità());
                prepStat.executeUpdate();
                prepStat.close();
		this.pizza.getConn().close();

            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }

    }
    public ArrayList<PizzePrenotate> doRetrieveAll(){
        String selectSQL = "SELECT * FROM " + TABLE_NAME;
        ArrayList<PizzePrenotate> ls = new ArrayList<PizzePrenotate>();
        PreparedStatement prepStat;
            try {
                prepStat = this.pizza.getConn().prepareStatement(selectSQL);
                ResultSet rs = prepStat.executeQuery();
                while(rs.next()){
                    PizzePrenotate pizza = new PizzePrenotate();
                    pizza.setIdpizza(rs.getInt("idpizza"));
                    pizza.setPrezzo(rs.getInt("prezzo"));
                    pizza.setNumero_prenotazione(rs.getInt("numeroprenotazione"));
                    pizza.setQuantità(rs.getInt("quantità"));
                    ls.add(pizza);
                }
                prepStat.close();
                this.pizza.getConn().close();
            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }
        return ls;
    }
    public PizzePrenotate doRetrieveByKeys(int id){
	String selectSQL = "SELECT * FROM " + TABLE_NAME +" WHERE idpizza = ?";
        PizzePrenotate pizza = new PizzePrenotate();
        PreparedStatement prepStat;
            try {
                prepStat = this.pizza.getConn().prepareStatement(selectSQL);
                prepStat.setInt(1,id);
                ResultSet rs = prepStat.executeQuery();
                if(rs.next()){
                    pizza.setIdpizza(rs.getInt("idpizza"));
                    pizza.setPrezzo(rs.getInt("prezzo"));
                    pizza.setNumero_prenotazione(rs.getInt("numeroprenotazione"));
                    pizza.setQuantità(rs.getInt("quantità"));
                }
                prepStat.close();
                this.pizza.getConn().close();

            } catch (SQLException ex) {
                Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
            }
        return pizza;
    }
    
    public void doDelete(int id){
        String deleteSQL = "DELETE FROM " + TABLE_NAME +" WHERE idpizza = ?";
        PreparedStatement prepStat;
        try {
            prepStat = this.pizza.getConn().prepareStatement(deleteSQL);
            prepStat.setInt(1, id);
            prepStat.executeUpdate();
            prepStat.close();
	    this.pizza.conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    


    private static final String TABLE_NAME = "pizze prenotate";
}
