/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ardemus
 */
public class DataAccessCliente {
    PreparedStatement inserisci;
    ResultSet estrai;
    ConnDatabase cliente;

    public DataAccessCliente() {
        try {
            cliente = new ConnDatabase();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

public void inserisciCliente(Cliente cliente ){

        try {
            
          
            inserisci=this.cliente.getConn().prepareStatement("INSERT INTO cliente " +"(email, password, nome, cognome, via, paese, carta, tipocliente) values (?,?,?,?,?,?,?,?)");
          
            inserisci.setString(1, cliente.getEmail());
            inserisci.setString(2, cliente.getPassword());
            inserisci.setString(3, cliente.getNome());
            inserisci.setString(4, cliente.getCognome());
            inserisci.setString(5, cliente.getVia());
            inserisci.setString(6, cliente.getPaese());
            inserisci.setString(7, cliente.getCarta());
            inserisci.setInt(8, cliente.getTipoCliente());
            inserisci.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void cancellaCliente(Cliente cliente ){

        try {
            
            inserisci=this.cliente.getConn().prepareStatement("DELETE * FROM cliente WHERE email ="+cliente.getEmail());
        
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void modificaCliente(Cliente cliente ){

        try {
            
            inserisci=this.cliente.getConn().prepareStatement(
            " UPDATE cliente SET"
            + " email="+cliente.getEmail()+","
            + " password="+cliente.getPassword()+","
            + " cognome="+cliente.getCognome()+","
            + " nome="+cliente.getNome()+","
            + " via="+cliente.getVia()+","
            + " paese="+cliente.getPaese()+","
            + " carta="+cliente.getCarta()+","
            + " WHERE email ="+cliente.getEmail());
        
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
}


    
}
