<#-- Developers FAQs Component -->
<#macro developersFaqs>
<#assign heading = "FAQs" />
<#assign faqs = [
  {"q":"¿Qué tiempo toma integrar B-FY?","a":"La integración básica puede realizarse en menos de una hora usando nuestros SDKs."},
  {"q":"¿Almacenan datos biométricos?","a":"No, los datos biométricos nunca salen del dispositivo del usuario."},
  {"q":"¿Soportan OpenID?","a":"Sí, estamos certificados OpenID y OAuth2."}
] />
<section class="dev-faqs">
  <style>
    .dev-faqs { padding: 3.75rem 1.25rem 4.5rem; background-color: #e5e5e5; }
    @media (min-width:640px){ .dev-faqs { padding: 3.75rem 2.5rem 4.5rem; } }
    @media (min-width:1024px){ .dev-faqs { padding: 3.75rem 3.25rem 4.5rem; } }
    .dev-faqs-tagline { width: fit-content; margin: 0 auto; padding: 0.625rem 1.25rem; border-radius: 0.375rem; background-color: #ea580c; line-height: 1; color: white; text-transform: uppercase; }
    @media (min-width:1280px){ .dev-faqs-tagline { font-size: 1.25rem; } }
    .dev-faqs h2 { max-width: 62rem; margin: 2.25rem auto 0; font-weight: 700; font-size: 1.875rem; text-align: center; }
    @media (min-width:1280px){ .dev-faqs h2 { font-size: 3rem; } }
    .faq-list { max-width: 62rem; margin: 2.25rem auto 0; display: flex; flex-direction: column; gap: 0.75rem; }
    .faq-item { background: #fff; border-radius: 0.375rem; }
    .faq-item summary { cursor: pointer; padding: 1.25rem; font-weight: 700; font-size: 1rem; display: flex; justify-content: space-between; align-items: center; }
    .faq-item[open] summary { border-bottom: 1px solid #e5e7eb; }
    .faq-item p { padding: 0 1.25rem 1.25rem; font-size: 0.875rem; line-height: 1.4; }
    .faq-plus { width: 1rem; height: 1rem; transition: transform 0.2s; }
    .faq-item[open] .faq-plus { transform: rotate(45deg); }
  </style>
  
  <div>
    <p class="dev-faqs-tagline">FAQs</p>
    <h2>${heading}</h2>
  </div>
  
  <div class="faq-list">
    <#list faqs as f>
      <details class="faq-item">
        <summary>
          ${f.q}
          <svg class="faq-plus" fill="currentColor" viewBox="0 0 24 24">
            <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
          </svg>
        </summary>
        <p>${f.a}</p>
      </details>
    </#list>
  </div>
</section>
</#macro>
