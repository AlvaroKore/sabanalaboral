/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sabanalaboral.ejb.entities;


public class Expediente {
    private String idExpediente;
    private String organoJurisdiccional;
    private String sala;
    private String presidencia;

    public String getIdExpediente() {
        return idExpediente;
    }

    public void setIdExpediente(String idExpediente) {
        this.idExpediente = idExpediente;
    }

  

    public String getOrganoJurisdiccional() {
        return organoJurisdiccional;
    }

    public void setOrganoJurisdiccional(String organoJurisdiccional) {
        this.organoJurisdiccional = organoJurisdiccional;
    }

   

    public String getPresidencia() {
        return presidencia;
    }

    public void setPresidencia(String presidencia) {
        this.presidencia = presidencia;
    }

  
    public String getSala() {
        return sala;
    }

    public void setSala(String sala) {
        this.sala = sala;
    }
    
    
    
    

}
