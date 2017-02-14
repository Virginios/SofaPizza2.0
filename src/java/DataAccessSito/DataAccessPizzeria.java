/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;
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
    
    public void inserisciPizzeria(Pizzeria pizzeria ){

        try {
            this.pizzeria = new ConnDatabase();
            inserisci=this.pizzeria.getConn().prepareStatement("INSERT INTO pizzeria " +"(nomePizzeria, pIva, password, via, paese) values (?,?,?,?,?)");
            inserisci.setString(1, pizzeria.getNome());
            inserisci.setString(2, pizzeria.getPiva());
            inserisci.setString(3, pizzeria.getPassword());
            inserisci.setString(4, pizzeria.getVia());
            inserisci.setString(5, pizzeria.getPaese());
            File file = new File("src\\img\\"+pizzeria.getPiva()+".jpg");
            ImageIO.write(pizzeria.getImmagine(),"jpg",file);
            inserisci.executeUpdate();
            inserisci.close();
            this.pizzeria.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
             Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
         }
}
    
    
    
}
