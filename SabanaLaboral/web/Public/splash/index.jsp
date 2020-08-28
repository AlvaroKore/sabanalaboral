<%-- 
    Document   : index
    Created on : Feb 26, 2018, 10:08:40 AM
    Author     : sammy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link rel="stylesheet" href="../Public/css/splash.css">
    </head>

    <style>
        #logoDovtic {
            height: 100px;
        }
        @media  (max-width: 812px ){
            #logoDovtic {
                height: 50px;
            }
        }
    </style>
    <body>
        <div class="contenedor" style="">
            <div>
                <div class="logo ">
                    <img id="logoDovtic"   src="<s:url value="/Public/img/dovtic2.svg?v=2"/>"/>

                </div>
                <div style="color: white; text-align: center;">Cargando...</div>
                <%--
            <div>
                <div id="preloader_3"></div>
            </div>
                --%>
            </div>
        </div>  
        <script 
            defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js">
        </script>
    </body>
</html>
