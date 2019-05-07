/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
import java.sql.*;


/**
 *
 * @author ASUS
 */
public class Koneksi  {
    public Statement s;
    public ResultSet r;
    public Connection koneksi;
    
    public void Class () {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            koneksi = DriverManager.getConnection("jdbc:mysql://localhost/sistemparkir", "root","");
            System.out.println("Koneksi Sukses");
        } catch (Exception e){
            System.out.println ("Tidak Dapat Menyambung ke Database");
        }
     
    }
}

