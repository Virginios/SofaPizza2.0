/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;

/**
 *
 * @author Valerio
 */
public class DataAccessFile {

    public DataAccessFile() {
    }

    public ArrayList<String> getComuni(String provincia) {
        String filename = "/file/"+provincia+".txt";
        ArrayList<String> texts = new ArrayList<String>();
        File file = new File(filename);
        FileReader fileReader = null;
        try {
            fileReader = new FileReader(file);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(DataAccessFile.class.getName()).log(Level.SEVERE, null, ex);
        }
        String temp = "";
        BufferedReader  bufferedReader = new BufferedReader(new InputStreamReader(this.getClass().getClassLoader().getResourceAsStream(filename)));
        try {
            while ((temp = bufferedReader.readLine()) != null) {
                texts.add(temp);
            }
        } catch (IOException ex) {
            Logger.getLogger(DataAccessFile.class.getName()).log(Level.SEVERE, null, ex);
        }
        return texts;
    }

}
