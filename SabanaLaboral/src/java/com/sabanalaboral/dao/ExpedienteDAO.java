/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import sabanalaboral.ejb.entities.Expediente;

/**
 *
 * @author dgsl
 */
public class ExpedienteDAO {
    
    
     private static void _setValuesFromRS(Expediente e, ResultSet rs) throws Exception {
        e.setIdExpediente(rs.getString("idExpediente"));
        e.setOrganoJurisdiccional(rs.getString("organo_jurisdiccional"));
        e.setPresidencia(rs.getString("presidencia"));
        e.setSala(rs.getString("sala"));
    }
     
      public static Expediente findById(String idExpediente) throws Exception {
        Connection conn = com.sabanalaboral.dao.DBConection.conn();
        boolean exist = false;
        Expediente e = new Expediente();

        String sql = "SELECT *\n"
                + "FROM expediente \n"
                + "WHERE idExpediente = '" + idExpediente + "'";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            exist = true;
            _setValuesFromRS(e, rs);
        }
        stmt.getConnection().close();
        stmt.close();
        conn.close();
        /* return  null if not exist */
        if (!exist) {
            return null;
        }

        return e;

    }
    
}
