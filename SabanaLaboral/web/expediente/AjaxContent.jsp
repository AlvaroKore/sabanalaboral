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
    <jsp:include page="_expediente.jsp" />
    <jsp:include page="_actores.jsp"/>
    <div style="position: fixed; bottom: 15px; right: 15px;">
        <a id="save" class="btn-floating btn-large waves-effect waves-light blue blue-lighten-1">
            <i class="material-icons">save</i>
        </a>
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

        $("#sxa_handleChangeOrganoJurisdiccional").click();
    }

    function showAjaxMC_addActor() {
        $("#modal").modal("open");
        $("#sxa_showAjaxMC_addActor").click();
    }
    
    function save () {
        $("#sxa_save").click();
    }

    $(document).ready(function () {
        init();
        $("#sel_organoJurisdiccional").change(handleChangeOrganoJurisdiccional)
        $(".showAjaxMC_addActor").click(showAjaxMC_addActor)
        $("#save").click(save);

    });

</script>

