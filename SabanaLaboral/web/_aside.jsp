<%-- 
    Document   : _aside
    Created on : Feb 20, 2018, 4:45:02 PM
    Author     : alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<aside>
    <ul id="slide-out" class="side-nav fixed">
        <li class="aside-header">
            <div style="display: flex; font-family: Roboto">
                Laboral
            </div>

        </li>
        <li class="aside-avatar">
            <s:if test="operador.foto != null">
                <img  class= "pulse-avatar" src ="<s:property value="operador.foto"/>" height="50">
            </s:if>
            <s:else>
                <img  class= "pulse-avatar" src ="https://www.component-creator.com/images/testimonials/defaultuser.png" height="50">
            </s:else>
            <div class="avatar-description"></div>
            <span >
                <s:property value="operador.nombre"/>
            </span>
           

        </li>

        <li class="divider"></li>
        <li><a href="/dashboard/"> <i class="fas fa-tachometer-alt aside-icon"></i> Inicio</a></li>
        
         

        <li class="aside-footer">
            <a href="/configuracion/" title="configuración">
                <i class=" fa fa-cog"></i> 
            </a>


            <a href="/login/" title="Cerrar sesión">
                <i class=" fas fa-power-off "></i> 
            </a>


        </li>
    </ul>


</aside>

