<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>

<%-- ajaxContent --%>
<s:url action="showAjaxContent" id="url_showAjaxContent"/>
<sx:a cssStyle="display:none" executeScripts="true" targets="ajaxContent" 
      href="%{url_showAjaxContent}" id="sxa_showAjaxContent"/>

<s:url action="handleChangeOrganoJurisdiccional" id="url_handleChangeOrganoJurisdiccional"/>
<sx:a cssStyle="display:none" executeScripts="true" targets="ajaxContent" 
      href="%{url_handleChangeOrganoJurisdiccional}" id="sxa_handleChangeOrganoJurisdiccional"/>

<s:url action="save" id="url_save"/>
<sx:a cssStyle="display:none" executeScripts="true" targets="ajaxContent" 
      href="%{url_save}" id="sxa_save"/>





<%-- ajaxMC_Modal --%>

<s:url action="showAjaxMC_Content" id="url_showAjaxMC_Content"/>
<sx:a cssStyle="display:none" executeScripts="true" targets="ajaxMC_Modal" 
      href="%{url_showAjaxMC_Content}" id="sxa_showAjaxMC_Content"/>


<s:url action="showAjaxMC_addActor" id="url_showAjaxMC_addActor"/>
<sx:a cssStyle="display:none" executeScripts="true" targets="ajaxMC_Modal" 
      href="%{url_showAjaxMC_addActor}" id="sxa_showAjaxMC_addActor"/>





