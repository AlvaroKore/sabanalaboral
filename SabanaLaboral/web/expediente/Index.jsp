

<%-- 
    Document   : layout
    Created on : Feb 16, 2018, 9:54:29 AM
    Author     : alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <LINK REL="SHORTCUT ICON"  href="<s:url value="/Public/img/diente.png?v=3"/>  "/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="<s:url value="/Public/css/dovtic.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<s:url value="/Public/fullcalendar/fullcalendar.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<s:url value="/Public/css/clock-picker.css"/>"/>



        <link rel="manifest" type="text/css" href="<s:url value="./manifest.json"/>"/>
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>



        <title>Sabanas Laboral</title>
        <style>

            #ajaxMC_Modal {
                height: 100%;
            }

            .toast {
                background: #4CAF50;
            }

            .autocomplete-content {
                position: absolute;
                min-width: 200px;;
                opacity: 1;
                z-index: 1001;

            }

            nav .input-field label.active i {
                color: #2d2626;
            }


            .modal-content h4 {
                color: #26a69a;
            }

            .modal-footer{
                margin-top: 100px;
                border-top: 1px solid #bdbdbd;
            }

            .boton-abajo{
                background: #80deea;
                color:#fafafa;
            }

            .boton-abajo:hover {
                background: #00bcd4;
            }

            .moment {
                font-size: 12px;
                color: #757575;
            }

            /* timepicker */
            .timepicker {
                font-size: 37px;
                width: 100%;
                padding: 15px;
            }

            input[type='text'].invalid {
                border: 1px solid red;
            }

            @media  (max-width: 812px ){
                .container {
                    width: 100%;
                    padding: 5px;
                }
                .titulo {
                    font-size: 12px;
                }
                .fc-center h2 {
                    margin-top: 35px;
                    font-size: 16px !important;
                }

            }

            /* custom */
            #buscarPaciente_txt{
                display: block;
                font-size: 37px;
                width: 100%;
                padding: 15px;
                padding-left: 50px;
                border-radius: 35px;
                border: 1px solid #80cbc4;
                outline: none;

            }

            #MC_FindPaciente .autocomplete-content {
                margin-top: 5px !important;
                margin-left: -10px;
                width: 50%;
            }

            .modal {
                max-height: none;
                top: 5px !important;
                bottom: 20px;
            }
            .modal-content {
                display: flex; flex-direction: column; justify-content: space-between; height: 100%
            }

            @media  (max-width: 812px ){
                #MC_FindPaciente h4, #MC_NewCita h4 {
                    font-size: 16px;
                    text-align: center;
                }
                #buscarPaciente_txt {
                    font-size: 16px;
                    padding-left: 10px;
                }
                #a_cancel , #a_saveCita {
                    display: block;
                    margin-bottom: 12px;
                }
                .modal {
                    max-height: none;
                    width: 95%;
                    bottom: 5px;
                    top: 5px !important;
                }

                #MC_FindPaciente .autocomplete-content {
                    width: auto;
                }
            }


        </style>
        <s:head/>
        <sx:head/>

    </head>
    <body>
        <s:form theme="simple" >
            <jsp:include page="_ajaxAction.jsp"/>
            <jsp:include page="/_modal.jsp"/>
            <jsp:include page="/_modalBottom.jsp"/>
            <jsp:include page="/_modalConfirm.jsp"/>

            <sx:div id="ajaxContent" executeScripts="true" theme="simple" href="%{url_showAjaxContent}">
                <jsp:include page="/Public/splash/index.jsp"/>
            </sx:div>
        </s:form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>
        <script src="<s:url value="/Public/fullcalendar/fullcalendar.min.js"/>"></script>
        <script src="<s:url value="/Public/fullcalendar/locale-all.js"/>"></script>

        <script src="<s:url value="/Public/js/clock-picker.min.js"/>"></script>



        <script src="<s:url value="/Public/js/utils.js"/>"></script>



    </body>
</html>
