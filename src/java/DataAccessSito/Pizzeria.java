/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.Serializable;

public class Pizzeria  implements Serializable{
private  String piva;
private String nome;
private String password;
private String via;
private String paese;
private String numero;
private  BufferedImage immagine;




    public void setPiva(String piva) {
        this.piva = piva;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public void setImmagine(BufferedImage immagine) {
        this.immagine = immagine;
    }

    public void setPaese(String paese) {
        this.paese = paese;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }
    
    
    
    

    public String getPiva() {
        return piva;
    }

    public String getNome() {
        return nome;
    }

    public String getPassword() {
        return password;
    }

    public String getVia() {
        return via;
    }

    public BufferedImage getImmagine() {
        return immagine;
    }

    public String getPaese() {
        return paese;
    }

    public String getNumero() {
        return numero;
    }

    
    
    
   
}
