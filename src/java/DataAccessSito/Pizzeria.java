/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.awt.Image;

public class Pizzeria {
private  String piva;
private String nome;
private String password;
private String via;
private Image immagine;
private String paese;

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

    public void setImmagine(Image immagine) {
        this.immagine = immagine;
    }

    public void setPaese(String paese) {
        this.paese = paese;
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

    public Image getImmagine() {
        return immagine;
    }

    public String getPaese() {
        return paese;
    }
}
