<#-- Platform CallToAction (parity with Astro _platform/CallToAction.astro) -->
<#macro platformCallToAction>
  <#nested>
</#macro>

<#macro callToAction>
  <a class="w-fit mx-auto py-2.5 px-5 block rounded bg-orange-600 text-xl text-white transition-colors hover:bg-red-800" href="${ctx.contextPath}/contact">
    <#nested>
  </a>
</#macro>
