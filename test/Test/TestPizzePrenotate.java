/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.PizzePrenotate;
import java.util.ArrayList;

/**
 *
 * @author Valerio
 */
public class TestPizzePrenotate {
    public static void main(String args[]){
        PizzePrenotate p = new PizzePrenotate();
        p.setIdpizza(1);
        p.setNumero_prenotazione(2);
        p.setPrezzo(3);
        p.setQuantità(1);
        DataAccessPizzePrenotate pp = new DataAccessPizzePrenotate();
        pp.aggiungi(p);
        //pp.cancellaSingolaPrenotazione(1, 2);
        //ArrayList<PizzePrenotate> pizze  = pp.prendiTutto(2);
        //System.out.println(pizze.get(0).getIdpizza());
        //pp.cancellaSingolaPizzaPrenotata(2, 2);
    }
}
