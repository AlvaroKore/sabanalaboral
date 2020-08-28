/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sabanalaboral.actions;

import com.sabanalaboral.dao.DBConection;
import com.sabanalaboral.dao.ExpedienteDAO;
import java.sql.Connection;
import sabanalaboral.ejb.entities.Expediente;

/**
 *
 * @author alvaro
 */
public class ExpedienteAction extends BaseAction {
    private Expediente expediente;
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

    public Expediente getExpediente() {
        return expediente;
    }

    public void setExpediente(Expediente expediente) {
        this.expediente = expediente;
    }
    
    
}
