/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author ardemus
 */
public class DataAccessPizzeria {

    PreparedStatement inserisci;
    Statement estrai;
    ResultSet risultato;
    ConnDatabase pizzeria;
    String query;

    public void inserisciPizzeria(Pizzeria pizzeria) {

        try {
            this.pizzeria = new ConnDatabase();
            inserisci = this.pizzeria.getConn().prepareStatement("INSERT INTO pizzeria " + "(nomePizzeria, pIva, password, via, paese, provincia, numTel, celiaci) values (?,?,?,?,?,?,?,?)");
            inserisci.setString(1, pizzeria.getNome());
            inserisci.setString(2, pizzeria.getPiva());
            inserisci.setString(3, pizzeria.getPassword());
            inserisci.setString(4, pizzeria.getVia());
            inserisci.setString(5, pizzeria.getPaese());
            inserisci.setString(6, pizzeria.getProvincia());
            inserisci.setString(7, pizzeria.getNumero());
            inserisci.setInt(8, pizzeria.getCeliaci());
            inserisci.executeUpdate();
            inserisci.close();
            estrai = this.pizzeria.getConn().createStatement();
            risultato=estrai.executeQuery("SELECT numImmagine FROM pizzeria WHERE pIva='"+pizzeria.getPiva()+"'");
            if(risultato.next()){
            int immagine=risultato.getInt("numImmagine");
            
            File file2 = new File("web\\img\\" + pizzeria.getPiva() + ".jpg");
            BufferedImage foto;
            foto = ImageIO.read(file2);
            File file = new File("web\\img\\"+immagine+".jpg");
            ImageIO.write(foto,"jpg",file);
            file2.delete();
            estrai.close();
            this.pizzeria.chiudi();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }

    public void cancellaPizzeria(String Piva,int numimmagine) {

        try {
            this.pizzeria = new ConnDatabase();
            inserisci = this.pizzeria.getConn().prepareStatement("DELETE FROM pizzeria WHERE pIva ='" + Piva + "'");
            File file2 = new File("web\\img\\" + numimmagine + ".jpg");
            file2.delete();
            inserisci.executeUpdate();
            inserisci.close();
            this.pizzeria.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificaPizzeria(Pizzeria pizzeria) {

        try {
            this.pizzeria = new ConnDatabase();
            inserisci = this.pizzeria.getConn().prepareStatement(
                    " UPDATE pizzeria SET"
                    + " nomePizzeria ='" + pizzeria.getNome() + "',"
                    + " password='" + pizzeria.getPassword() + "',"
                    + " via='" + pizzeria.getVia() + "',"
                    + " paese='" + pizzeria.getPaese() + "',"
                    + " provincia='" + pizzeria.getProvincia() + "',"
                    + " numTel='" + pizzeria.getNumero() + "'"
                    + " WHERE pIva ='" + pizzeria.getPiva() + "'");
                  
            /*File file = new File("src\\img\\" + pizzeria.getPiva() + ".jpg");
            ImageIO.write(pizzeria.getImmagine(), "jpg", file);*/
            inserisci.executeUpdate();
            inserisci.close();
            this.pizzeria.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        } /*catch (IOException ex) {
            Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }

    public ArrayList<Pizzeria> estraipizzerie(String query) {

        ArrayList<Pizzeria> pizzerie = new ArrayList<Pizzeria>();
        try {
            this.pizzeria = new ConnDatabase();
            estrai = this.pizzeria.getConn().createStatement();

            risultato = estrai.executeQuery("" + query);
            while (risultato.next()) {
                Pizzeria c = new Pizzeria();
                c.setNome(risultato.getString("nomePizzeria"));
                c.setPassword(risultato.getString("password"));
                c.setPiva(risultato.getString("pIva"));
                c.setVia(risultato.getString("via"));
                c.setPaese(risultato.getString("paese"));
                c.setProvincia(risultato.getString("provincia"));
                c.setNumero(risultato.getString("numTel"));
                c.setImmagine(risultato.getInt("numImmagine"));
                c.setCeliaci(risultato.getInt("celiaci"));
                pizzerie.add(c);
            }
            estrai.close();
            this.pizzeria.chiudi();

        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        /*catch (IOException ex) {
                    Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
                }*/
        return pizzerie;
    }

    

    public ArrayList<Pizzeria> trovaPizzerieDaFiltro(String cercato,int celiaci) {
        if(celiaci==0)
        query = "SELECT * FROM pizzeria WHERE (nomePizzeria  LIKE '%"+cercato+"%' OR via  LIKE '%"+cercato+"%')";
        else
        query = "SELECT * FROM pizzeria WHERE (nomePizzeria  LIKE '%"+cercato+"%' OR via  LIKE '%"+cercato+"%') AND celiaci="+celiaci;
        
        ArrayList<Pizzeria> pizzerie = estraipizzerie(query);
        return pizzerie;
    }

    public Pizzeria trovaPizzeria(String Piva, String password) {

        query = "SELECT * from pizzeria WHERE pIva='" + Piva + "' AND password='" + password + "'";
        ArrayList<Pizzeria> pizzerie = estraipizzerie(query);
        return pizzerie.get(0);
    }

    public boolean Pizzeria_registrata(String Piva) {

        query = "SELECT * from pizzeria WHERE pIva='" + Piva + "'";
        ArrayList<Pizzeria> pizzerie = estraipizzerie(query);
        if (pizzerie.isEmpty()) {
            return false;
        } else {
            return true;
        }

    }

    public ArrayList<Pizzeria> filtri_pizzerie(String filtro, String campo) {

        query = "SELECT * from pizzeria WHERE " + filtro + " = '" + campo + "'";
        ArrayList<Pizzeria> pizzerie = estraipizzerie(query);

        return pizzerie;
    }

 
    public OggettoStub getAll() {
        ArrayList<OggettoStub> ogg = new ArrayList<OggettoStub>();
        String nome = "Select distinct nomePizzeria from pizzeria";
        String via="Select distinct via from pizzeria";
        ArrayList<String> ricerca= new ArrayList<String>();
        OggettoStub oggetto=new OggettoStub();
        try {
            this.pizzeria = new ConnDatabase();
            inserisci = this.pizzeria.getConn().prepareStatement(nome);
            risultato = inserisci.executeQuery();
            while (risultato.next()) {
              String g=(risultato.getString("nomePizzeria"));
              ricerca.add(g);
            }
            inserisci = this.pizzeria.getConn().prepareStatement(via);
            risultato = inserisci.executeQuery();
            while (risultato.next()) {
              String g=(risultato.getString("via"));
              ricerca.add(g);
            }
            
            oggetto.setRicerca(ricerca);
            inserisci.close();
            pizzeria.chiudi();
            
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oggetto;
    }

}
