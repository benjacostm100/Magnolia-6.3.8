<#-- Icon utilities: provides iconPath(name) to resolve local webresources/icons assets -->
<#function iconPath name>
  <#if !name?has_content>
    <#return '' />
  </#if>
  <#assign n = name?trim />
  <#if n?starts_with('http') || n?contains('/')>
    <#return n />
  </#if>
  <#return ctx.contextPath + '/.resources/b-fy/webresources/icons/' + n />
</#function>
