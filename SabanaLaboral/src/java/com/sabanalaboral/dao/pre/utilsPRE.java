/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.dao.pre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author alvaro
 */
public class utilsPRE  {

    public static long nextId(String tableName, Connection conn) throws Exception {
        long id = 0;
        String sql = "SELECT AUTO_INCREMENT \n"
                + "FROM information_schema.tables\n"
                + "WHERE table_name = '" + tableName + "'\n"
                + "AND table_schema = DATABASE( ) ;";
        Statement stmt = conn.createStatement();

        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {

            id = rs.getLong("AUTO_INCREMENT");
        }
        

        return id;
    }

    public static void executeUpdate(Connection conn, String sql) throws Exception {
       PreparedStatement ps = conn.prepareStatement(sql);
       ps.executeUpdate();
    }
}
