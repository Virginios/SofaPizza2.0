/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPrenotazione;
import DataAccessSito.Prenotazione;
import java.sql.Timestamp;

/**
 *
 * @author Valerio
 */
public class TestPrenotazione {
    public static void main(String args[]){
        Prenotazione prenotazione = new Prenotazione();
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        prenotazione.setCliente("gdgdgd");
        prenotazione.setNumero_prenotazione(2);
        prenotazione.setTpo_prenotazione(1);
        prenotazione.setTipo_pagamento(1);
        prenotazione.setProduttore("2c");
        DataAccessPrenotazione access = new DataAccessPrenotazione();
        access.aggiungiPrenotazione(prenotazione);
    }

}
