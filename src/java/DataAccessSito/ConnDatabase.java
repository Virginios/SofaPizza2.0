/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ardemus
 */
public class ConnDatabase {
    Connection conn;
    
    public ConnDatabase() throws SQLException{
        try{
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection ("jdbc:mysql://localhost:3306/sofapizza?useSSL=false" , "root","andrea1995" );
   }
    
    catch(ClassNotFoundException e){
            System.out.println(e);
   }
        catch(SQLException s){
        System.out.println(s);
   }
        
    
}
   public void chiudi(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConnDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
        } 
   
   
    public Connection getConn(){
             return conn;   
        } 
   
}  
