/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPizze;
import DataAccessSito.DataAccessPizzePrenotate;
import DataAccessSito.Pizze;
import DataAccessSito.PizzePrenotate;
import java.util.ArrayList;



/**
 *
 * @author Valerio
 */
public class TestPizzePrenotate {
    public static void main(String args[]){
        Pizze pizza = new Pizze();
        pizza.setIdpizza(1);
        pizza.setIngredienti("bo");
        pizza.setPrezzo(50.5);
        pizza.setProduttore("2c");
        pizza.setNome("marg");
        ArrayList<Pizze> pizze;
        pizze = new ArrayList<Pizze>();
        pizze.add(pizza);
        DataAccessPizze data = new DataAccessPizze();
        //data.inseriscipizze(pizze);
        int[] a = new int[10];
        a[0] = pizze.get(0).getIdpizza();
        data.cancellapizze(a);
    }
    
}
