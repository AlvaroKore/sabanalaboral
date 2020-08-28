<%-- 
    Document   : _odontograma
    Created on : Feb 26, 2018, 8:12:10 PM
    Author     : alvaro
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/_aside.jsp"/>


<jsp:include page="/_validate.jsp" />
<main>
    <jsp:include page="/_header.jsp"/>
    <div class="container">
        <div class="card">
            <div class="card-content">
                <div class="card-title">Alta Expediente</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col s3">
                            <label>Expediente</label>
                            <s:textfield cssClass="required" theme="simple" name="expediente.idExpediente" />
                        </div>
                        <div class="col s6">
                            <label>Organo Jurisdiccional</label>
                            <s:select id="sel_organoJurisdiccional" list="{'TFCyA','JLCyA'}" headerKey="" headerValue="-seleccione-" theme="simple" name="expediente.organoJurisdiccional" />
                        </div>
                         <div class="col s3">
                            <label>Sala</label>
                            <s:textfield theme="simple" name="expediente.sala" />
                        </div>
                    </div>
                   

                    <div class="row">
                        <div class="col s3">
                            <label>Presidencia</label>
                            <s:textfield theme="simple" name="expediente.Presidencia" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script>

    function init() {
        $(".modal").modal();
        utils.init();
        utils.initMoment();
        utils.initActionMessage();
    }
    
    function handleChangeOrganoJurisdiccional() {
       alert("hello");
        $("#sxa_handleChangeOrganoJurisdiccional").click();
    }

    $(document).ready(function () {
        init();
        $("#sel_organoJurisdiccional").change(handleChangeOrganoJurisdiccional)

    });

</script>

