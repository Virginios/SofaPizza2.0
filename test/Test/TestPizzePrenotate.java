/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.DataAccessPrenotazione;
import DataAccessSito.Pizze;
import DataAccessSito.PizzePrenotate;
import DataAccessSito.Prenotazione;
import java.util.ArrayList;

/**
 *
 * @author Valerio
 */
public class TestPizzePrenotate {
    public static void main(String args[]){
      DataAccessPizzePrenotate dpp = new DataAccessPizzePrenotate();
      DataAccessPrenotazione daop = new DataAccessPrenotazione();
      Prenotazione p = daop.prendiPrenotazioni("051245154", 0);
      ArrayList<PizzePrenotate> app = dpp.prendiTutto(p.getNumero_prenotazione());
      for(int i =0;i<app.size();i++){
          System.out.println(app.get(i).getIdpizza());
      }
      
    }
}
