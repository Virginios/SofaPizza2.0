/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.util.ArrayList;

/**
 *
 * @author Valerio
 */
public class Prodotti{
    private ArrayList<Pizze> pizza;
    private int quantita;

 

    public ArrayList<Pizze> getPizza() {
        return pizza;
    }

    public void setPizza(ArrayList<Pizze> pizza) {
        this.pizza = pizza;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }
}