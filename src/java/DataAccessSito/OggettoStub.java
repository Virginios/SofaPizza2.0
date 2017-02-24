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
public class OggettoStub implements Serializable{
    private ArrayList<String> nome;
    private ArrayList<String> via;

    public ArrayList<String> getNome() {
        return nome;
    }

    public void setNome(ArrayList<String> nome) {
        this.nome = nome;
    }

    public ArrayList<String> getVia() {
        return via;
    }

    public void setVia(ArrayList<String> via) {
        this.via = via;
    }
 

    
}
