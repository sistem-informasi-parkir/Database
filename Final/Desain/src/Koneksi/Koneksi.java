package Koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Koneksi {
     
    private static Connection MYSQLKoneksi;
    public static Connection koneksiDB () throws SQLException {
        try {
            String url = "jdbc:mysql://localhost/sistemparkir";
            String user = "root";
            String pass = "";
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            MYSQLKoneksi = DriverManager.getConnection(url, user, pass);
        } catch (SQLException e){
            System.out.println ("Koneksi ke Database gagal " + e.getMessage());
        }
        
        return MYSQLKoneksi;
     
    }
}


