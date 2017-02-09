/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.SQLException;

/**
 *
 * @author ardemus
 */
public class Prova {
    
    public static void main(String args[]) throws SQLException{
        ConnDatabase prova= new ConnDatabase();
          prova.chiudi();
    }
    
}
