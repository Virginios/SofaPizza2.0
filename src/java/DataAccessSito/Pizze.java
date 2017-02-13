/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.awt.Image;

/**
 *
 * @author ardemus
 */
public class Pizze {
  private  String nome;
  private  String produttore;
  private  String ingredienti;
  private  Double prezzo;
  private int idpizza;
    

    
    public String getNome(){
    return nome;
    }
     public String getProduttore(){
    return produttore;
    }
      public String getImgredienti(){
    return ingredienti;
    }
     public Double getPrezzo(){
    return prezzo;
    }
  
    public int getIdpizza() {
        return idpizza;
    }
     
    
     
     public void setNome(String nome){
     this.nome=nome;
     }
     
     public void setProduttore(String produttore){
     this.produttore=produttore;
     }
    
    public void setIngredienti(String ingredienti){
     this.ingredienti=ingredienti;
     }
    
    public void setPrezzo(Double prezzo){
     this.prezzo=prezzo;
     }


    public void setIdpizza(int idpizza) {
        this.idpizza = idpizza;
    }
}
