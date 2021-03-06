/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ardemus
 */
public class DataAccessPizze {

    PreparedStatement inserisci;
    Statement estrai;
    ResultSet risultato;
    ConnDatabase pizze;
    String query;

    public void inseriscipizze(ArrayList<Pizze> pizze) {

        try {
            this.pizze = new ConnDatabase();
            inserisci = this.pizze.getConn().prepareStatement("INSERT INTO pizze " + "(idpizza,ingredienti,prezzo,produttore,nome) values (?,?,?,?,?)");
            for (int i = 0; i < pizze.size(); i++) {
                inserisci.setInt(1, pizze.get(i).getIdpizza());
                inserisci.setString(2, pizze.get(i).getIngredienti());
                inserisci.setDouble(3, pizze.get(i).getPrezzo());
                inserisci.setString(4, pizze.get(i).getProduttore());
                inserisci.setString(5, pizze.get(i).getNome());
                inserisci.executeUpdate();
            }

            inserisci.close();
            this.pizze.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizze.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cancellapizze(int[] idpizze) {

        try {
            this.pizze = new ConnDatabase();
            for (int i = 0; i < idpizze.length; i++) {
                inserisci = this.pizze.getConn().prepareStatement("DELETE FROM pizze WHERE  idpizza= " + idpizze[i]);
                inserisci.executeUpdate();
            }
            inserisci.close();
            this.pizze.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizze.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificaPizze(ArrayList<Pizze> pizze) {

        try {
            this.pizze = new ConnDatabase();
            for (int i = 0; i < pizze.size(); i++) {
                inserisci = this.pizze.getConn().prepareStatement(
                        "UPDATE pizze SET"
                        + " nome='" + pizze.get(i).getNome() + "',"
                        + " prezzo= " + pizze.get(i).getPrezzo() + ","
                        + " ingredienti='" + pizze.get(i).getIngredienti() + "'"
                        + " WHERE  idpizza=" + pizze.get(i).getIdpizza());
                inserisci.executeUpdate();
            }
            inserisci.close();
            this.pizze.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Pizze> estraiPizze(String pizzeria) {
        query = "SELECT * FROM " + Nome_Tabella + " WHERE produttore = '" + pizzeria + "'";
        ArrayList<Pizze> pizze = new ArrayList<Pizze>();
        try {
            this.pizze = new ConnDatabase();
            estrai = this.pizze.getConn().createStatement();

            risultato = estrai.executeQuery(query);
            while (risultato.next()) {
                Pizze c = new Pizze();
                c.setIdpizza(risultato.getInt("idpizza"));
                c.setIngredienti(risultato.getString("ingredienti"));
                c.setNome(risultato.getString("nome"));
                c.setPrezzo(risultato.getDouble("prezzo"));
                c.setProduttore(risultato.getString("produttore"));

                pizze.add(c);

            }
            estrai.close();
            this.pizze.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pizze;
    }

    public Pizze estraiPizza(int id) {
        String query = "SELECT * FROM " + Nome_Tabella+" WHERE idpizza = ?";
        Pizze p = new Pizze();
        try {
            this.pizze = new ConnDatabase();
            inserisci = this.pizze.getConn().prepareStatement(query);
            inserisci.setInt(1, id);
            risultato = inserisci.executeQuery();
            if(risultato.next()){
                p.setIdpizza(risultato.getInt("idpizza"));
                p.setIngredienti(risultato.getString("ingredienti"));
                p.setNome(risultato.getString("nome"));
                p.setPrezzo(risultato.getDouble("prezzo"));
                p.setProduttore(risultato.getString("produttore"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizze.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    private static final String Nome_Tabella = "pizze";

}
