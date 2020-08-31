<%-- 
    Document   : MC_addActor
    Created on : Aug 31, 2020, 1:08:07 PM
    Author     : alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div class="modal-content" style="display: block;">
    <h4>Datos Actor</h4>
    <div class="row">
        <div class="col s4">
            <label>Nombre</label>
            <s:textfield theme="simple" name="autor.nombre" cssClass="required" />
        </div>
        <div class="col s4">
            <label>Apellido Paterno</label>
            <s:textfield theme="simple" name="autor.apellidoPaterno" cssClass="required" />
        </div>
        <div class="col s4">
            <label>Apellido Materno</label>
            <s:textfield theme="simple" name="autor.ApellidoMaterno" cssClass="required" />
        </div>
    </div>
    <div class="modal-footer">
        <a  class="modal-action modal-close waves-effect waves-green btn-flat">Agregar</a>
    </div>
</div>

<script>
    $(document).ready(function () {

    });
</script>
