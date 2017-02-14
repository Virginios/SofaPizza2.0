/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.Cliente;
import DataAccessSito.DataAccessCliente;

/**
 *
 * @author Valerio
 */
public class TestCliente {
    public static void main(String args[]){
        Cliente cliente = new Cliente(); 
       /* cliente.setVia("ciao");
        cliente.setCarta("sss");
        cliente.setNome("aaa");
        cliente.setPaese("s");
        cliente.setTipoCliente(0);
        cliente.setPassword("aalalal");
        cliente.setCognome("shhdhd");
        cliente.setEmail("gdgdgd");*/
        DataAccessCliente access = new DataAccessCliente();
        //access.inserisciCliente(cliente);
        //access.cancellaCliente(cliente.getEmail());
         cliente.setVia("ciao");
        cliente.setCarta("sss");
        cliente.setNome("aaa");
        cliente.setPaese("s");
        cliente.setTipoCliente(0);
        cliente.setPassword("sss");
        cliente.setCognome("shhdhd");
        cliente.setEmail("alalal");
        access.modificaCliente(cliente);
    }
    
}
