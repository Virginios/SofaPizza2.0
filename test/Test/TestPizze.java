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
public class TestPizze {
    public static void main(String args[]){
        /*Pizze pizza = new Pizze();
        pizza.setIdpizza(1);
        pizza.setIngredienti("bo");
        pizza.setPrezzo(50.5);
        pizza.setProduttore("2c");
        pizza.setNome("marg");
        Pizze pizza2 = new Pizze();
        pizza2.setIdpizza(2);
        pizza2.setIngredienti("bo");
        pizza2.setPrezzo(50.5);
        pizza2.setProduttore("2c");
        pizza2.setNome("marg");
        ArrayList<Pizze> pizze;
        pizze = new ArrayList<Pizze>();
        pizze.add(pizza);
        pizze.add(pizza2);*/
        DataAccessPizze data = new DataAccessPizze();
        //data.inseriscipizze(pizze);
        /*int[] a = new int[10];
        a[0] = pizze.get(0).getIdpizza();
        a[1] = pizze.get(1).getIdpizza();*/
        //data.cancellapizze(a);
        /*Pizze pizza = new Pizze();
        pizza.setIdpizza(1);
        pizza.setIngredienti("ca");
        pizza.setPrezzo(50.5);
        pizza.setProduttore("2c");
        pizza.setNome("u");
        Pizze pizza2 = new Pizze();
        pizza2.setIdpizza(2);
        pizza2.setIngredienti("bo");
        pizza2.setPrezzo(50.5);
        pizza2.setProduttore("2c");
        pizza2.setNome("a");
        ArrayList<Pizze> pizze;
        pizze = new ArrayList<Pizze>();
        pizze.add(pizza);
        pizze.add(pizza2);
        data.modificaPizze(pizze);*/
        ArrayList<Pizze> pizze= data.estraiPizze("2c");
        for(int i =0;i<pizze.size();i++){
            System.out.println(pizze.get(i).getIdpizza());
        }
        
    }
    
}
