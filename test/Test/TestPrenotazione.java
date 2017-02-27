/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPrenotazione;
import DataAccessSito.Prenotazione;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author Valerio
 */
public class TestPrenotazione {
    public static void main(String args[]){
        /*Prenotazione prenotazione = new Prenotazione();
        prenotazione.setCliente("gdgdgd");
        prenotazione.setNumero_prenotazione(2);
        prenotazione.setTpo_prenotazione(2);
        prenotazione.setTipo_pagamento(1);
        prenotazione.setProduttore("2c");
        DataAccessPrenotazione access = new DataAccessPrenotazione();*/
        //access.aggiungiCarrello(prenotazione);
        //access.cancellaStorico(prenotazione.getProduttore());
        //access.cancellaCarrello(prenotazione.getCliente());
        /*ArrayList<Prenotazione> p = access.prendiPrenotazioni(prenotazione.getProduttore(),0);
        for(int i = 0;i<p.size();i++){
            System.out.println(p.get(i).getNumero_prenotazione());
        }*/
        /*ArrayList<Prenotazione> p = access.prendiCarrello(prenotazione.getCliente());
         for(int i = 0;i<p.size();i++){
            System.out.println(p.get(i).getNumero_prenotazione());
        }*/
        //access.cambiaTipo(prenotazione.getNumero_prenotazione(), 0);
       // access.cancellaCarrello(prenotazione.getCliente());
       DataAccessPrenotazione daop = new  DataAccessPrenotazione();
       Prenotazione prenotazione = new Prenotazione();
       prenotazione.setCliente("val@hotmail.it");
       prenotazione.setIndirizzoCliente("ddddd");
       prenotazione.setTipo_pagamento(0);
       prenotazione.setTpo_prenotazione(0);
       prenotazione.setProduttore("051245154");
       //daop.aggiungiPrenotazione(prenotazione);
        Prenotazione p = daop.prendiPrenotazioni("051245154", 0);
        System.out.println(p.getCliente());


    }

}
