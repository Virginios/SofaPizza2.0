/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Valerio
 */
public class DataAccessPrenotazione {

    ConnDatabase pizzaConn;

    public DataAccessPrenotazione() {
    }

    public void aggiungiCarrello(Prenotazione prenotazione) {
        try {
            this.pizzaConn = new ConnDatabase();
            String insertSQL = "INSERT INTO " + Nome_Tabella
                    + " (produttore, cliente, numeroPrenotazione, tipoPrenotazione,tipoPagamento,dataPrenotazione)"
                    + " VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement prepStat = pizzaConn.getConn().prepareStatement(insertSQL);
            prepStat.setString(1, prenotazione.getProduttore());
            prepStat.setString(2, prenotazione.getCliente());
            prepStat.setInt(3, prenotazione.getNumero_prenotazione());
            prepStat.setInt(4, prenotazione.getTpo_prenotazione());
            prepStat.setInt(5, prenotazione.getTipo_pagamento());
            prepStat.setTimestamp(6,new Timestamp(System.currentTimeMillis()));
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.getConn().close();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cancellaStorico(String produttore) {
        String deleteSQL = "DELETE FROM " + Nome_Tabella
                + " WHERE (produttore = ? AND tipoPrenotazione =?)";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(deleteSQL);
            prepStat.setString(1, produttore);
            prepStat.setInt(2, 0);
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cancellaCarrello(String cliente) {
        String deleteSQL = "DELETE FROM " + Nome_Tabella
                + " WHERE (cliente = ? AND tipoPrenotazione =?)";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(deleteSQL);
            prepStat.setString(1, cliente);
            prepStat.setInt(2, 2);
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Prenotazione> prendiPrenotazioni(String produttore, int tipo) {
        String selectSQL = "SELECT * FROM " + Nome_Tabella + " WHERE (produttore = ? AND tipoPrenotazione =?)";
        ArrayList<Prenotazione> listaPrenotazione = new ArrayList<Prenotazione>();
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
            prepStat.setString(1, produttore);
            prepStat.setInt(2, tipo);
            ResultSet risultato = prepStat.executeQuery();
            while (risultato.next()) {
                Prenotazione prenotazione = new Prenotazione();
                prenotazione.setCliente(risultato.getString("cliente"));
                prenotazione.setNumero_prenotazione(risultato.getInt("numeroPrenotazione"));
                prenotazione.setProduttore(risultato.getString("produttore"));
                prenotazione.setTpo_prenotazione(risultato.getInt("tipoPrenotazione"));
                prenotazione.setTipo_pagamento(risultato.getInt("tipoPagamento"));
                prenotazione.setData_prenotazione(risultato.getTimestamp("dataPrenotazione"));
                listaPrenotazione.add(prenotazione);
            }
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaPrenotazione;
    }
public ArrayList<Prenotazione> prendiCarrello(String cliente) {
        String selectSQL = "SELECT * FROM " + Nome_Tabella + " WHERE (cliente = ? AND tipoPrenotazione =?)";
        ArrayList<Prenotazione> listaPrenotazione = new ArrayList<Prenotazione>();
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(selectSQL);
            prepStat.setString(1, cliente);
            prepStat.setInt(2, 2);
            ResultSet risultato = prepStat.executeQuery();
            while (risultato.next()) {
                Prenotazione prenotazione = new Prenotazione();
                prenotazione.setCliente(risultato.getString("cliente"));
                prenotazione.setNumero_prenotazione(risultato.getInt("numeroPrenotazione"));
                prenotazione.setProduttore(risultato.getString("produttore"));
                prenotazione.setTpo_prenotazione(risultato.getInt("tipoPrenotazione"));
                prenotazione.setTipo_pagamento(risultato.getInt("tipoPagamento"));
                prenotazione.setData_prenotazione(risultato.getTimestamp("dataPrenotazione"));
                listaPrenotazione.add(prenotazione);
            }
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaPrenotazione;
    }

    public void cambiaTipo(int numeroPrenotazione,int tipo) {
        String update = "UPDATE " + Nome_Tabella + "SET tipoPrenotazione = ? "
                + "WHERE numeroPrenotazione = ?";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(update);
            prepStat.setInt(1, tipo);
            prepStat.setInt(2, numeroPrenotazione);
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static final String Nome_Tabella = "prenotazione";
}

