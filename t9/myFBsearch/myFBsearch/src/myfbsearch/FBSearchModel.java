/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myfbsearch;

import com.restfb.types.User;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.table.DefaultTableModel;
import static myfbsearch.FBSearchModel.m;

/**
 *
 * @author Vinicius
 */
public class FBSearchModel {
  
    public static DefaultTableModel m = (DefaultTableModel) FBSearchView.tabela.getModel();
    
    public static void Inserts(int seq, ImageIcon img, String id, String name)
    {        
        m.addRow(new Object[]{seq, img, id, name});
    }
    
    
    
    public static void Clear()
    {
        m.setNumRows(0);
    }
        
    
}
