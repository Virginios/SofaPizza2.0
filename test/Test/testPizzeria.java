/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DataAccessSito.DataAccessPizzeria;
import DataAccessSito.Pizzeria;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author Valerio
 */
public class testPizzeria {
        public static void main(String args[]) throws IOException{
            Pizzeria p = new Pizzeria();
            BufferedImage foto=ImageIO.read(new File("C:\\Users\\lenovo\\Desktop\\arrayImmagini\\imm.jpg"));
            p.setImmagine(foto);
            p.setNome("giorgio");
            p.setNumero("0515");
            p.setPaese("ostuni");
            p.setPassword("hhj");
            p.setPiva("ggh");
            p.setVia("kk");
            DataAccessPizzeria daop = new DataAccessPizzeria();
            //daop.inserisciPizzeria(p);
            /*BufferedImage foto=ImageIO.read(new File("C:\\Users\\lenovo\\Desktop\\arrayImmagini\\imm3.jpg"));
            p.setImmagine(foto);
            p.setNome("alfredo");
            p.setNumero("0525");
            p.setPaese("ostuni");
            p.setPassword("hhj");
            p.setPiva("ggh");
            p.setVia("kk");
            //daop.modificaPizzeria(p);
            //daop.cancellaPizzeria("ggh");*/
           //ArrayList<Pizzeria> ap = daop.trovaPizzerieDaNome("giorgio");
            //System.out.println(ap.get(0).getNome());
          //ArrayList<Pizzeria> ap = daop.trovaPizzerieDaPosto("ostuni");
          //System.out.println(ap.get(0).getNome());
            //Pizzeria ap  = daop.trovaPizzeria("ggh", "hhj");
            //System.out.println(ap.getNome());
            ArrayList<Pizzeria> ap = daop.trovaPizzerieDaFiltro("sd");
            for(int i=0;i<ap.size();i++){
                System.out.println(ap.get(i).getNome());
            }


        }
}
