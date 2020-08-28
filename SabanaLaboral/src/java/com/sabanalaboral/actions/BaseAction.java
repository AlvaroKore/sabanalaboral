package com.sabanalaboral.actions;



import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author alvaro
 */
public class BaseAction extends ActionSupport {

    
    public String index() {
        try {

           
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
            return ERROR;
        }

        return SUCCESS;
    }

  

  

}
