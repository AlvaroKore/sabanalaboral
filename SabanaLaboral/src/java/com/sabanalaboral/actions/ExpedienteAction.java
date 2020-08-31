/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.actions;

import com.sabanalaboral.dao.DBConection;
import com.sabanalaboral.dao.ExpedienteDAO;
import com.sabanalaboral.dao.pre.ExpedienteDAO_PRE;
import java.sql.Connection;
import sabanalaboral.ejb.entities.Autor;
import sabanalaboral.ejb.entities.Expediente;

/**
 *
 * @author alvaro
 */
public class ExpedienteAction extends BaseAction {
    private Expediente expediente;
    private Autor autor;
    public String showAjaxContent() {
        try {
            System.out.println("showAjaxAction");

        } catch (Exception e) {
            e.printStackTrace();
           addActionError("eRROR AL CONECTAR A LA BASE DE DATOS");
           return INPUT;
        }
        System.out.println("expediente");
        return SUCCESS;
    }
    
      public String handleChangeOrganoJurisdiccional () {
          
             
        System.out.println("handleChangeOrganoJurisdiccional");
        return SUCCESS;
    }
      
      public String showAjaxMC_addActor() {
          System.out.println("showAjaxMC_addActor");
          return SUCCESS;
      }
      
      
      public String save() throws Exception {
          System.out.println("save");
          Connection conn = DBConection.conn();
          try {
              conn.setAutoCommit(false);
              ExpedienteDAO_PRE.create(expediente, conn);
             
              conn.commit();
              conn.close();
          } catch (Exception e) {
              conn.rollback();
              conn.close();
              e.printStackTrace();
              addActionError("Error al guardar expediente");
              return INPUT;
          }
          addActionMessage("Expediente guardado con éxito.");
          return SUCCESS;
      }

    public Expediente getExpediente() {
        return expediente;
    }

    public void setExpediente(Expediente expediente) {
        this.expediente = expediente;
    }

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }
    
    
    
    
}
