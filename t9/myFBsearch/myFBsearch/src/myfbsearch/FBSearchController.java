/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myfbsearch;

import com.restfb.*;
import com.restfb.FacebookClient;
import com.restfb.json.JsonObject;
import com.restfb.types.User;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import static myfbsearch.FBSearchController.img;
import static myfbsearch.FBSearchController.thread;

/**
 *
 * @author Vinicius
 */
public class FBSearchController implements Runnable{
    
    public static ImageIcon img;
    public static Thread thread;
    FBSearchModel model = new FBSearchModel();
    FBSearchView view = new FBSearchView();
    
    public static void FetchImage() throws MalformedURLException
    {
        FBSearchController control = new FBSearchController();
        thread = new Thread(control);
        thread.start();        
    }
    
    
    public static void Save()
    {
         try
            {
               int i;
               BufferedWriter esc = new BufferedWriter(new FileWriter("C:\\Users\\Vinicius\\\\myFBsearch\\Data.txt", true)); 
               
               for(i = 0; i < FBSearchView.tabela.getRowCount(); i++)
               {
                   esc.write(FBSearchView.tabela.getValueAt(i, 0).toString()+ " - ");
                   esc.write(FBSearchView.tabela.getValueAt(i, 1).toString()+ " - ");
                   esc.write(FBSearchView.tabela.getValueAt(i, 2).toString()+ " - ");
                   esc.write(FBSearchView.tabela.getValueAt(i, 3).toString()+ "");
                   esc.newLine();
               }

               esc.close();

            }
            catch (IOException e)
            {}
    }
    
    public static void StopAll() throws InterruptedException
    {
         thread.stop();
    }
    

    @Override
    public void run() {
        
        int contador = 1;
        FacebookClient fbClient = new DefaultFacebookClient(view.getToken(), Version.LATEST); 
        
        Connection<User> usuarios = fbClient.fetchConnection("search", User.class, Parameter.with("q", view.getNamess()), Parameter.with("type", "user"), Parameter.with("limit", 300));
        
        for(User usuario : usuarios.getData())
        {
                try
                {
                    JsonObject picture = fbClient.fetchObject(usuario.getId()+"/picture", JsonObject.class, Parameter.with("redirect", "false"));
                    URL url = new URL(picture.getJsonObject("data").getString("url"));
                    
                    img = new ImageIcon(url);
                    model.Inserts(contador, img, usuario.getId(), usuario.getName().toString());
                    
                }
                catch(Exception e)
                {
                    System.out.println("Erro!");
                }
                contador++;
        }
                
        }   
        
    }
    
