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

public class EsempioDatabase {
    public void eseguiquery() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =
				DriverManager.getConnection(
					"jdbc:mysql://localhost/test?" + "user=utente&password=secret"
				);
            Statement stmt;
            PreparedStatement pstmt;
            ResultSet rs;

            // creo la tabella
            stmt = conn.createStatement();

            stmt.executeUpdate("DROP TABLE IF EXISTS students");
            stmt.executeUpdate("CREATE TABLE students " +
                    "(id INTEGER primary key auto_increment, " +
                    "firstname TEXT NOT NULL, " +
                    "lastname TEXT NOT NULL)");

            // inserisco due record
            pstmt = conn.prepareStatement("INSERT INTO students " +
                    "(firstname, lastname) values (?,?)");

            pstmt.setString(1, "Mario");
            pstmt.setString(2, "Rossi");
            pstmt.execute();

            pstmt.setString(1, "Marco");
            pstmt.setString(2, "Bianchi");
            pstmt.execute();

            // recupero i dati
            rs = stmt.executeQuery("SELECT * from students");

            while(rs.next())
            {
                System.out.println("id: " + rs.getString("id"));
                System.out.println("firstname: " + rs.getString("firstname"));
                System.out.println("lastname: " + rs.getString("lastname"));
                System.out.println("--------------------------------------");
            }

			pstmt.close(); // rilascio le risorse
			stmt.close(); // rilascio le risorse
            conn.close(); // termino la connessione
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
}