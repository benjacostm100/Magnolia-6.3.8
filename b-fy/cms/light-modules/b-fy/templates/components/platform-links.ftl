<#-- Platform Links Component -->
<#macro platformLinks>
<nav class="mb-26 flex flex-wrap justify-center gap-9">
  <#-- Fallback navigation links -->
  <#assign links = [
    {"name": "customer-authentication", "title": "Customer authentication"},
    {"name": "employee-authentication", "title": "Employee authentication"}, 
    {"name": "user-controlled-biometrics", "title": "User-controlled biometrics"},
    {"name": "ato-protection", "title": "Effective against ATO, AI-driven fraud and phishing"},
    {"name": "compliance", "title": "Compliance"},
    {"name": "decentralized-authentication", "title": "Decentralized authentication"}
  ] />
  
  <#list links as link>
    <a class="group relative text-xl/tight text-neutral-400 uppercase transition-colors duration-75 hover:text-orange-600"
       href="#${link.name}">
      ${link.title}
      <span class="absolute top-full inset-x-0 w-3/4 mx-auto pt-1.5 flex">
        <span class="h-0.5 w-full group-hover:bg-orange-600"></span>
      </span>
    </a>
  </#list>
</nav>
</#macro>
