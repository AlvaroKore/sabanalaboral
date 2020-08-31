<%-- 
    Document   : _expediente
    Created on : Aug 31, 2020, 12:22:06 PM
    Author     : alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<div class="container">
    <div class="card">
        <div class="card-content">
            <div class="card-title">Datos Expediente</div>
            <div class="card-body">
                <div class="row">
                    <div class="col s3">
                        <label>Expediente</label>
                        <s:textfield cssClass="required" theme="simple" name="expediente.idExpediente" />
                    </div>
                    <div class="col s6">
                        <label>Organo Jurisdiccional</label>

                        <s:select id="sel_organoJurisdiccional"
                                  list="{'TFCyA','JLCyA'}"
                                  cssClass="browser-default"
                                  headerKey="" headerValue="-seleccione-" 
                                  theme="simple"
                                  name="expediente.organoJurisdiccional" />
                    </div>
                    <s:if test="expediente.organoJurisdiccional.equals('TFCyA')">
                        <div class="col s3">
                            <label>Sala</label>
                            <s:textfield theme="simple" name="expediente.sala" />
                        </div>
                    </s:if>
                    <s:if test="expediente.organoJurisdiccional.equals('JLCyA')">
                        <div class="col s3">
                            <label>Presidencia</label>
                            <s:textfield theme="simple" name="expediente.Presidencia" />
                        </div>
                    </s:if>
                </div>
            </div>
        </div>
    </div>
</div>