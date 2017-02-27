/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Valerio
 */
public class OggettoProxy implements Serializable{
    private ArrayList<String> ricerca;

    public ArrayList<String> getRicerca() {
        return ricerca;
    }

    public void setRicerca(ArrayList<String> ricerca) {
        this.ricerca = ricerca;
    }

}