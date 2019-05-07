/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class Db_Koneksi {
    private static Connection koneksi;
    public static Connection getCinnection(){
        try {
            koneksi = DriverManager.getConnection("jdbc:mysql://localhost/sistemparkir", "root",null);
        } catch (SQLException e){
            System.out.println("Tidak Dapat Menyambung ke Database");
        }

        return koneksi;
    }
}
