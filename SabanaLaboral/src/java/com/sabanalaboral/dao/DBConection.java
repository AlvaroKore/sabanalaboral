/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author alvaro
 */
public class DBConection {

    private static String JDBC_DRIVER;
    private static String DB_URL;
    private static String USER;
    private static String PASS;

    public static Connection conn() {
   

     
            JDBC_DRIVER = "com.mysql.jdbc.Driver";
            DB_URL = "jdbc:mysql://localhost/sabanalaboral";
            USER = "root";
            PASS = "dgsl";

        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
        } catch (Exception e) {
            System.out.println("Error al conectar");
            e.printStackTrace();
        }

        return conn;
    }

}
