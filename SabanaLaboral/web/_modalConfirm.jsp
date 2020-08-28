<%-- 
    Document   : _modalConfirm
    Created on : Mar 23, 2018, 10:18:35 AM
    Author     : alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!-- Modal Structure -->
<div id="modalConfirm" class="modal">
    <div class="modal-content center-align">
        <i class="fas fa-exclamation-triangle icon-confirm"></i>
        <h4 id="confirm_mesage">¿Estas seguro que deseas eliminar?</h4>
        <a class="waves-effect waves-light btn-large btnModalConfirm modal-close " id="btn_confirm_Cancel">Cancelar</a>
        <a class="waves-effect waves-light btn-large btnModalConfirm modal-close" id="btn_confirm_Eliminar">
            Eliminar
        </a>
    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script>
    var Confirm = {
        onConfirm: function(cb) {
            $("#btn_confirm_Eliminar").off("click");

            $("#btn_confirm_Eliminar").click(cb);
        }
    };



</script>
