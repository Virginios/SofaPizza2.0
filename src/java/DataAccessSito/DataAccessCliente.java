/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ardemus
 */
public class DataAccessCliente {
    PreparedStatement inserisci;
    Statement estrai;
    ResultSet risultato;
    ConnDatabase cliente;
    String query;
    
    

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
            inserisci.executeUpdate();
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
public ArrayList<Cliente> estraiclienti(String query) {
    
            ArrayList<Cliente> clienti= new ArrayList<Cliente>();
    try{
            estrai=this.cliente.getConn().createStatement();
            
        
            risultato=(ResultSet) estrai.executeQuery(""+query);
            while(risultato.next()){
            Cliente c=new Cliente();
            c.setEmail(risultato.getString("email"));
            c.setPassword(risultato.getString("password"));
            c.setNome(risultato.getString("nome"));
            c.setCognome(risultato.getString("cogmone"));
            c.setVia(risultato.getString("via"));
            c.setPaese(risultato.getString("paese"));
            c.setCarta(risultato.getString("carta"));
            c.setTipoCliente(risultato.getInt("tipoutente"));
            clienti.add(c);
            }
                      
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    return clienti; 
}

public Cliente trovacliente(String email,String password){

        query="SELECT * from cliente WHERE email='"+email+"' AND password='"+password+"'";
        ArrayList<Cliente> clienti=estraiclienti(query);
        return clienti.get(0);
}
public boolean cliente_registrato(String email,String password){

        query="SELECT * from cliente WHERE email='"+email+"' AND password='"+password+"'";
        ArrayList<Cliente> clienti=estraiclienti(query);
        if(clienti.isEmpty())
            return false;
        else
            return true;
        
}
public ArrayList<Cliente> filtri_clienti (String filtro,String campo){

        query="SELECT * from cliente WHERE "+filtro+"='"+campo+"'";
        ArrayList<Cliente> clienti=estraiclienti(query);
       
       return clienti; 
}


    
}
