<#<#assign tagline = "Resources" />
<#assign title = "Everything you need" />
<#assign cards = [
  {"title":"Quickstart","description":"Spin up an integration in minutes.","cta":"View Quickstart","href":"#"},
  {"title":"API Reference","description":"Comprehensive endpoint documentation.","cta":"View API Reference","href":"#"},
  {"title":"SDK Guides","description":"Implement flows on iOS, Android & Web.","cta":"View SDK Guides","href":"#"},
  {"title":"Security Whitepaper","description":"In-depth architecture & threat model.","cta":"View Security Whitepaper","href":"#"}
] />elopers Resources Component -->
<#macro developersResources>
<#assign tagline = "Developer resources" />
<#assign title = "Everything you need to integrate B-FY into your system" />
<#assign cards = [
  {"title":"Technical integration details","description":"Check out our technical guides with step-by-step instructions for integrating B-FY into your backend, frontend, or mobile systems.","cta":"View technical documentation","href":"${ctx.contextPath}/docs/technical"},
  {"title":"Conceptual integration overview","description":"Understand how B-FY’s architecture works and how it fits your products or services from a functional perspective.","cta":"View conceptual documentation","href":"${ctx.contextPath}/docs/conceptual"}
] />
<section class="dev-resources">
  <style>
    .dev-resources { margin: 3.75rem 0; padding: 0 1.25rem; text-align: center; }
    @media (min-width:640px){ .dev-resources { padding: 0 2.5rem; } }
    @media (min-width:1024px){ .dev-resources { padding: 0 3.25rem; } }
    .dev-resources p.tag { padding: 0.625rem 1.25rem; display: inline-block; border-radius: 0.375rem; background-color: #ea580c; line-height: 1.25; color: white; text-transform: uppercase; }
    @media (min-width:1280px){ .dev-resources p.tag { font-size: 1.25rem; } }
    .dev-resources h2 { max-width: 50rem; margin: 2.25rem auto 0; font-weight: 700; font-size: 1.875rem; }
    @media (min-width:1280px){ .dev-resources h2 { font-size: 3rem; } }
    .dev-res-grid { margin-top: 3.75rem; display: flex; flex-wrap: wrap; align-items: baseline; justify-content: center; gap: 3.25rem; }
    .dev-res-card { width: auto; max-width: 20rem; }
    .dev-res-card h3 { width: 16rem; margin: 0 auto; font-weight: 700; font-size: 1.25rem; line-height: 1.25; color: #ea580c; text-transform: uppercase; }
    .dev-res-card p { width: 20rem; margin: 0.75rem auto 1.25rem; line-height: 1.4; }
    .dev-res-card a { display: inline-flex; gap: 0.375rem; font-size: 1.125rem; color: #ea580c; transition: color 0.2s; text-decoration: underline; text-underline-offset: 0.125rem; }
    .dev-res-card a:hover { color: #b91c1c; }
    .dev-help-cta { margin-top: 4.5rem; padding: 0.625rem 1.25rem; display: inline-block; border-radius: 0.375rem; background-color: #ea580c; font-size: 1.25rem; color: white; transition: background-color 0.2s; text-decoration: none; }
    .dev-help-cta:hover { background-color: #b91c1c; }
  </style>
  <p class="tag">${tagline}</p>
  <h2>${title}</h2>
  <div class="dev-res-grid">
    <#list cards as c>
      <article class="dev-res-card">
        <h3>${c.title}</h3>
        <p>${c.description}</p>
        <a href="${c.href}">${c.cta}</a>
      </article>
    </#list>
  </div>
  
  <a class="dev-help-cta" href="/contact">Need help?</a>
</section>
</#macro>
