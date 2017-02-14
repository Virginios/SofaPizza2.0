/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

/**
 *
 * @author ardemus
 */
public class TestFunzionamentoImmagini {
     public static void main(String args[]) throws IOException{
BufferedImage foto=ImageIO.read(new File("C:\\Users\\ardemus\\Desktop\\images.jpg"));
File file = new File("src\\img\\images2.jpg");
ImageIO.write(foto,"jpg",file);
     }

}
