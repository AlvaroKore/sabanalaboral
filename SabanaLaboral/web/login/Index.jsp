<%-- 
    Document   : Index
    Created on : Mar 1, 2018, 10:23:04 AM
    Author     : sammy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title>DOVTIC - Iniciar Sesión</title>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link REL="SHORTCUT ICON"  href="<s:url value="/Public/img/favicon.ico"/>"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="<s:url value="/Public/css/dovtic.css"/>"/>
        <link rel="manifest" type="text/css" href="<s:url value="/manifest.json"/>"/>
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
        <s:head/>
        <style>

            body {
                background: #29b6f6;
                /*  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://unsplash.it/1200/800/?random/');*/
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center center;
                background-fill-mode: rgba(0,0,0,0.5);
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background: white;
                padding: 20px 25px;
                border: 5px solid #03a9f4;
                width: 350px;
                height: auto;
                box-sizing: border-box;
                position: relative;
            }
            .col.s12 > .btn {
                width: 100%;
            }
            .gender-male,.gender-female {
                display: inline-block;
            }
            .gender-female {
                margin-left: 35px;
            }
            radio:required {
                border-color: red;
            }
            .container {
                animation: showUp 0.5s cubic-bezier(0.18, 1.3, 1, 1) forwards;
            }

            @keyframes showUp {
                0% {
                    transform: scale(0);
                }
                100% {
                    transoform: scale(1);
                }
            }
            .row {margin-bottom: 10px;}

            .ngl {
                position: absolute;
                top: -20px;
                right: -20px;
            }
        </style>
    </head>
    <body>

        <s:form  theme ="simple"  action ="login">
            <jsp:include page="/_validate.jsp"/>
            <s:hidden theme="simple" name="GF_URL" id="hdn_GF_URL" cssClass="browser-default"/>
            <s:hidden theme="simple" name="API_URL" id="hdn_API_URL"/>
            <img height="35 " style="margin-top: 5px;"  src="<s:url value="/Public/img/dovtic2.svg?v=2"/>"/>
            <div class="container" id="signup_form">
                <div class="row">
                    <div class="input-field col s12">
                        <s:textfield  id="txt_user" theme="simple" cssClass="required" name="user" />
                        <label for="usuario">Usuario</label>
                    </div>
                    <div class="input-field col s12">
                        <s:password id="txt_password" theme="simple" cssClass="required" name="password" />
                        <label for="password">Contraseña</label>
                    </div>
                    <div class=" col s12" id="btn_iniciarSesion">
                        <button type="button" class="btn btn-large blue btn-register waves-effect waves-light">
                            Iniciar Sesion
                        </button>
                        <s:submit cssStyle="display: none;" theme="simple"  />
                    </div>

                </div>
                <p class="center-align" id="recoverPassword" >
                    <a>¿Olvidaste tu contraseña?</a>
                </p>
            </div>
        </s:form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="<s:url value="/Public/js/utils.js"/>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>  

        <script>

            function init() {
                if (localStorage.demail) {
                    $("#txt_user").val(localStorage.demail);
                    $("#txt_password").val(localStorage.dpassword)

                }
                
                $("#btn_iniciarSesion").click(function () {
                    $("form").submit();
                })
            }

            $(document).ready(function () {
                init();
                Materialize.updateTextFields();
                $("input[type='password']").attr("autocomplete", "new-password");
                $("#recoverPassword").click(function () {
                    var that = this;
                    $(that).hide();
                    var email = $("#txt_user").val().trim();
                    if (!email) {
                        alert("Ingresa el email con el que te registraste");
                        $(that).show();
                        return;
                    }


                    var API_URL = $("#hdn_API_URL").val();

                    var data = {email: email};


                    $.ajax({
                        type: "POST",
                        url: API_URL + "/reset-password",
                        data: data
                    }).done(function (data) {
                        $(that).show();
                        alert(data.message);
                    });
                });
            });
        </script>
    </body>


</html>
