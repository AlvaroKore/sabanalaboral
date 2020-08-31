/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.dao.pre;

import java.sql.Connection;
import sabanalaboral.ejb.entities.Expediente;

/**
 *
 * @author dgsl
 */
public class ExpedienteDAO_PRE {
    
       private static String _setValues(Expediente expediente) {
        
        String sql = " SET "
                + " idExpediente = '" + expediente.getIdExpediente()+ "' , "
                + " organo_jurisdiccional = '"+expediente.getOrganoJurisdiccional()+"' , "
                + " sala = '"+expediente.getSala()+"'";
               
        
        return sql; 

    }
       
         public static void create(Expediente e, Connection conn) throws Exception {
        String sql = "INSERT INTO expediente " + _setValues(e);
        utilsPRE.executeUpdate(conn, sql);

    }
     
     public static void update(Expediente e, Connection conn) throws Exception {
        String sql = "UPDATE expediente " + _setValues(e)+ " "
                + " WHERE idExpediente = '"+e.getIdExpediente()+"'";
        utilsPRE.executeUpdate(conn, sql);

    }
     
     public static void delete(Expediente e, Connection conn) throws Exception {
        String sql = "DELETE FROM expediente "
                + " WHERE idExpediente = '"+e.getIdExpediente()+"'";
        utilsPRE.executeUpdate(conn, sql);

    }
    
    
}
