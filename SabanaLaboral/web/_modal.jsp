<%-- 
    Document   : modal
    Created on : Nov 3, 2016, 2:00:18 PM
    Author     : alvaro
--%>

<%@taglib prefix="sx" uri="/struts-dojo-tags"%>

<style>
    .modal {
        max-height: none;
        top: 5px !important;
        bottom: 20px;
    }
    
    #ajaxMC_Modal{
        display: flex;
        flex-direction: column;
      
        height: 100%;
    }

    @media (max-width: 812px) {
        .modal {
            max-height: none;
            width: 95%;
            bottom: 5px;
            top: 5px !important;
        }
    }
</style>

<div class="modal" id="modal">    
    <sx:div  id="ajaxMC_Modal" theme="simple" executeScripts="true">
        <h1>Cargando...</h1>
    </sx:div>
</div>
