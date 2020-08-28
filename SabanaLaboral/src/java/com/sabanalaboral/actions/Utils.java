/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sabanalaboral.actions;

/**
 *
 * @author alvaro
 */

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.imageio.ImageIO;

public class Utils
{
  public static byte[] getBytesFromFile(File file)
  {
    long length = file.length();
    byte[] bytes = new byte[(int)length];
    try
    {
      InputStream is = new FileInputStream(file);

      int offset = 0;
      int numRead = 0;

      while ((offset < bytes.length) && ((numRead = is.read(bytes, offset, bytes.length - offset)) >= 0)) {
        offset += numRead;
      }

      if (offset < bytes.length) {
        throw new IOException("Could not completely read file " + file.getName());
      }

      is.close();
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
    return bytes;
  }

  public static InputStream getNoImageInputStream(String text) {
    try {
      BufferedImage bi = new BufferedImage(120, 40, 1);
      Graphics g = bi.getGraphics();

      g.setColor(Color.WHITE);
      g.fillRect(0, 0, 120, 40);
      g.setColor(Color.BLACK);
      g.setFont(new Font("Serif", 1, 22));
      g.drawString(text, 5, 35);

      File tempImg = File.createTempFile("tempImg", "jpg");
      tempImg.deleteOnExit();
      ImageIO.write(bi, "jpeg", tempImg);

      return new FileInputStream(tempImg);
    }
    catch (Exception e) {
      throw new RuntimeException(e);
    }
  }
  
    public static void main(String[] args)  {
       
  
}
}