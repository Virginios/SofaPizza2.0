/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.Connection;
import java.sql.Date;
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

    public void inserisciCliente(Cliente cliente) {

        try {
            this.cliente = new ConnDatabase();
            inserisci = this.cliente.getConn().prepareStatement("INSERT INTO cliente " + "(email, password, nome, cognome, via, paese, tipocliente,dataNascita,provincia) values (?,?,?,?,?,?,?,?,?)");
            inserisci.setString(1, cliente.getEmail());
            inserisci.setString(2, cliente.getPassword());
            inserisci.setString(3, cliente.getNome());
            inserisci.setString(4, cliente.getCognome());
            inserisci.setString(5, cliente.getVia());
            inserisci.setString(6, cliente.getPaese());
            inserisci.setInt(7, cliente.getTipoCliente());
            inserisci.setDate(8, Date.valueOf(cliente.getDataNascita()));
            inserisci.setString(9, cliente.getProvincia());
            inserisci.executeUpdate();
            inserisci.close();
            this.cliente.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cancellaCliente(String email) {

        try {
            this.cliente = new ConnDatabase();
            inserisci = this.cliente.getConn().prepareStatement("DELETE FROM cliente WHERE email ='" + email + "'");
            inserisci.executeUpdate();
            inserisci.close();
            this.cliente.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificaCliente(Cliente cliente) {

        try {
            this.cliente = new ConnDatabase();
            inserisci = this.cliente.getConn().prepareStatement(
                    " UPDATE cliente SET"
                    + " password='" + cliente.getPassword() + "',"
                    + " cognome='" + cliente.getCognome() + "',"
                    + " nome='" + cliente.getNome() + "',"
                    + " via='" + cliente.getVia() + "',"
                    + " paese='" + cliente.getPaese() + "',"
                    +  "provincia='"+cliente.getProvincia()+"'"
                    + " WHERE email ='" + cliente.getEmail() + "'");
            inserisci.executeUpdate();
            inserisci.close();
            this.cliente.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Cliente> estraiclienti(String query) {

        ArrayList<Cliente> clienti = new ArrayList<Cliente>();
        try {
            this.cliente = new ConnDatabase();
            estrai = this.cliente.getConn().createStatement();

            risultato = estrai.executeQuery("" + query);
            while (risultato.next()) {
                Cliente c = new Cliente();
                c.setEmail(risultato.getString("email"));
                c.setPassword(risultato.getString("password"));
                c.setNome(risultato.getString("nome"));
                c.setCognome(risultato.getString("cognome"));
                c.setVia(risultato.getString("via"));
                c.setPaese(risultato.getString("paese"));
                c.setTipoCliente(risultato.getInt("tipocliente"));
                c.setDataNascita(risultato.getString("dataNascita"));
                c.setProvincia(risultato.getString("provincia"));
                clienti.add(c);
            }
            estrai.close();
            this.cliente.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clienti;
    }

    public Cliente trovacliente(String email) {

        query = "SELECT * from cliente WHERE email='" + email + "'";
        ArrayList<Cliente> clienti = estraiclienti(query);
        if (clienti.isEmpty()) {
            System.out.println("vacanto");

            return null;
        } else {
            System.out.println("c'è");

            return clienti.get(0);
        }
    }

    public boolean cliente_registrato(String email) {

        query = "SELECT * from cliente WHERE email='" + email + "'";
        ArrayList<Cliente> clienti = estraiclienti(query);
        if (clienti.isEmpty()) {
            return false;
        } else {
            return true;
        }

    }

    public ArrayList<Cliente> filtri_clienti(String filtro, String campo) {

        query = "SELECT * from cliente WHERE " + filtro + "='" + campo + "'";
        ArrayList<Cliente> clienti = estraiclienti(query);

        return clienti;
    }

}
