
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="hasActionErrors()">
    <div class="card  red lighten-2" style="margin: 60px 0; position: relative;">
        <div class="card-content white-text">
            <span class="card-title">
                <i class="fas fa-exclamation-circle"></i>
                Error
            </span>
            <p>
                <s:iterator value="actionErrors">
                    <span >
                        <s:property escape="false" />
                    </span>
                </s:iterator>
            </p>
        </div>
        
        <span title="cerrar mensaje de error" id="close_message" style="font-size: 20px; top: 10px; right: 10px; position: absolute; color: white; cursor: pointer;">
            <i class="far fa-window-close"></i>
        </span>
    </div>
</s:if>

<s:if test="hasActionMessages()">
    <s:iterator value="actionMessages">
        <span  class="actionMessage" actionMessage="<s:property escape="false" />"></span>
    </s:iterator>
</s:if>
        
        <script>
            $(document).ready(function () {
                $("#close_message").click(function () {
                   $(this).parents(".card")[0].remove();
                });
            });
        </script>

