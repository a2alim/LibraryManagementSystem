
package LibraryManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class JavaConnect {
    
    public static Connection getConnection(){
         Connection conn = null;
        try {            
            Class.forName("com.mysql.jdbc.Driver");           
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/libraryManagement", "root","123456");
           
            return conn;
           
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
        
    }
}
