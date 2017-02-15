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
    
    public void inserisciPizzeria(Pizzeria pizzeria ){

        try {
            this.pizzeria = new ConnDatabase();
            inserisci=this.pizzeria.getConn().prepareStatement("INSERT INTO pizzeria " +"(nomePizzeria, pIva, password, via, paese, numTel) values (?,?,?,?,?,?)");
            inserisci.setString(1, pizzeria.getNome());
            inserisci.setString(2, pizzeria.getPiva());
            inserisci.setString(3, pizzeria.getPassword());
            inserisci.setString(4, pizzeria.getVia());
            inserisci.setString(5, pizzeria.getPaese());
            inserisci.setString(6, pizzeria.getNumero());
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
    
    public void cancellaPizzeria(String Piva){

        try {
            this.pizzeria = new ConnDatabase();
            inserisci=this.pizzeria.getConn().prepareStatement("DELETE FROM pizzeria WHERE pIva ='"+Piva+"'");
            File file2 = new File("src\\img\\"+Piva+".jpg");
            file2.delete();
            inserisci.executeUpdate();
            inserisci.close();
            this.pizzeria.chiudi();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    
    public void modificaPizzeria(Pizzeria pizzeria ){

        try {
            this.pizzeria = new ConnDatabase();
            inserisci=this.pizzeria.getConn().prepareStatement(
            " UPDATE pizzeria SET"
            + " nomePizzeria ='"+pizzeria.getNome()+"',"
            + " password='"+pizzeria.getPassword()+"',"
            + " via='"+pizzeria.getVia()+"',"
            + " paese='"+pizzeria.getPaese()+"',"
            + " numTel='"+pizzeria.getNumero()+ "'"
            + " WHERE pIva ='"+pizzeria.getPiva()+"'");
             File file = new File("src\\img\\"+pizzeria.getPiva()+".jpg");
             ImageIO.write(pizzeria.getImmagine(),"jpg",file);
            inserisci.executeUpdate();
            inserisci.close();
            this.pizzeria.chiudi();
        
        }  catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
             Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
         }
}
    
 public ArrayList<Pizzeria> estraipizzerie(String query) {
    
            ArrayList<Pizzeria> pizzerie= new ArrayList<Pizzeria>();
    try{
            this.pizzeria = new ConnDatabase();
            estrai=this.pizzeria.getConn().createStatement();
            
        
            risultato= estrai.executeQuery(""+query);
            while(risultato.next()){
            Pizzeria c=new Pizzeria();
            c.setNome(risultato.getString("nomePizzeria"));
            c.setPassword(risultato.getString("password"));
            c.setPiva(risultato.getString("pIva"));
            c.setVia(risultato.getString("via"));
            c.setPaese(risultato.getString("paese"));
            c.setNumero(risultato.getString("numTel"));
            BufferedImage foto=ImageIO.read(new File("src\\img\\"+c.getPiva()+".jpg"));
            c.setImmagine(foto);
            pizzerie.add(c);
            }
            estrai.close();
            this.pizzeria.chiudi();
                      
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
             Logger.getLogger(DataAccessPizzeria.class.getName()).log(Level.SEVERE, null, ex);
         }
    return pizzerie; 
}

public ArrayList<Pizzeria> trovaPizzerieDaNome(String nome){

        query="SELECT * from pizzeria WHERE nomePizzeria ='"+nome+"'";
        ArrayList<Pizzeria> pizzerie =estraipizzerie(query);
        return pizzerie;
}

public ArrayList<Pizzeria> trovaPizzerieDaPosto(String posto){

        query="SELECT * from pizzeria WHERE via='"+posto+"' OR paese='"+posto+"'";
        ArrayList<Pizzeria> pizzerie =estraipizzerie(query);
        return pizzerie;
}
    
 public Pizzeria trovaPizzeria(String Piva,String password){

        query="SELECT * from pizzeria WHERE pIva='"+Piva+"' AND password='"+password+"'";
        ArrayList<Pizzeria> pizzerie=estraipizzerie(query);
        return pizzerie.get(0);
}
public boolean Pizzeria_registrata(String Piva,String password){

        query="SELECT * from pizzeria WHERE pIva='"+Piva+"' OR password='"+password+"'";
        ArrayList<Pizzeria> pizzerie=estraipizzerie(query);
        if(pizzerie.isEmpty())
            return false;
        else
            return true;
        
}
public ArrayList<Pizzeria> filtri_pizzerie (String filtro,String campo){

        query="SELECT * from pizzeria WHERE "+filtro+" = '"+campo+"'";
        ArrayList<Pizzeria> pizzerie=estraipizzerie(query);
       
       return pizzerie; 
}
   
    
    
    
}
