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

    public void aggiungiPrenotazione(Prenotazione prenotazione) {
        try {
            this.pizzaConn = new ConnDatabase();
            String insertSQL = "INSERT INTO " + Nome_Tabella
                    + " (produttore, cliente, numeroPrenotazione, tipoPrenotazione,tipoPagamento)"
                    + " VALUES ('?','?', ?, ?, ?)";
            PreparedStatement prepStat = pizzaConn.getConn().prepareStatement(insertSQL);
            prepStat.setString(1, prenotazione.getProduttore());
            prepStat.setString(2, prenotazione.getCliente());
            prepStat.setInt(3, prenotazione.getNumero_prenotazione());
            prepStat.setInt(4, prenotazione.getTpo_prenotazione());
            prepStat.setInt(5, prenotazione.getTipo_pagamento());
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.getConn().close();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cancellaStorico(LocalDate data, String produttore) {
        String deleteSQL = "DELETE FROM " + Nome_Tabella
                + " WHERE (produttore = ? AND tipo =?)";
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
                + " WHERE (cliente = ? AND tipo =?)";
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
        String selectSQL = "SELECT * FROM " + Nome_Tabella + " WHERE (produttore = ? AND tipo =?)";
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
                prenotazione.setNumero_prenotazione(risultato.getInt("numero prenotazione"));
                prenotazione.setProduttore(risultato.getString("produttore"));
                prenotazione.setTpo_prenotazione(risultato.getInt("tipo prenotazione"));
                prenotazione.setTipo_pagamento(risultato.getInt("tipo pagamento"));
                prenotazione.setData_prenotazione(risultato.getTimestamp("data prenotazione"));
                listaPrenotazione.add(prenotazione);
            }
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaPrenotazione;
    }

    public void cancellaSingolaPrenotazione(String cliente, int numeroPrenotazione) {
        String deleteSQL = "DELETE FROM " + Nome_Tabella
                + " WHERE (cliente=? AND numero prenotazione = ?)";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(deleteSQL);
            prepStat.setString(1, cliente);
            prepStat.setInt(2, numeroPrenotazione);
            prepStat.executeUpdate();
            prepStat.close();
            pizzaConn.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzePrenotate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void prenotazioneEseguita(int numeroPrenotazione) {
        String update = "UPDATE " + Nome_Tabella + "SET tipo prenotazione =? "
                + "WHERE numero prenotazione =?";
        PreparedStatement prepStat;
        try {
            this.pizzaConn = new ConnDatabase();
            prepStat = pizzaConn.getConn().prepareStatement(update);
            prepStat.setInt(1, 2);
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

