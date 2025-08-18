<#-- Deveesources Component -->
<#macro developersResources>

<#assign heading = "Recursos para desarrolladores" />
<#assign resources = [
  {"title":"Documentación","desc":"Documentación completa de APIs y SDKs para una integración exitosa.","image":"/images/developers/docs-icon.png"},
  {"title":"Casos de uso","desc":"Ejemplos prácticos de implementaciones exitosas en diferentes industrias.","image":"/images/developers/cases-icon.png"},
  {"title":"Soporte técnico","desc":"Equipo especializado disponible para resolver dudas durante la implementación.","image":"/images/developers/support-icon.png"}
] />

<section class="dev-resources">
  {"title":"Conceptual integration overview","description":"Understand how B-FY’s architecture works and how it fits your products or services from a functional perspective.","cta":"View conceptual documentation","href":"${ctx.contextPath}/docs/conceptual"}
] />

<section class="dev-resources">
  <style>
    .dev-resources { padding: 3.75rem 0; }
    
    .dev-resources-container { max-width: 1280px; margin: 0 auto; padding: 0 1.25rem; }
    
    .dev-resources h2 { text-align: center; margin-bottom: 3rem; font-weight: 700; font-size: 2.25rem; }
    @media (min-width:1280px){ .dev-resources h2 { font-size: 3rem; } }
    
    .dev-resources-grid { display: grid; gap: 1.5rem; }
    @media (min-width:768px){ .dev-resources-grid { grid-template-columns: repeat(3, 1fr); } }
    
    .dev-resource-card { 
      padding: 2rem; background: white; border-radius: 0.5rem; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
      text-align: center; transition: all 0.3s ease;
    }
    .dev-resource-card:hover { transform: translateY(-4px); box-shadow: 0 10px 25px -3px rgba(0, 0, 0, 0.1); }
    
    .dev-resource-image { width: 4rem; height: 4rem; margin: 0 auto 1.5rem; }
    .dev-resource-image img { width: 100%; height: 100%; object-fit: cover; }
    
    .dev-resource-card h3 { margin-bottom: 1rem; font-weight: 700; font-size: 1.25rem; }
    .dev-resource-card p { color: #6b7280; line-height: 1.625; }
  </style>

  <div class="dev-resources-container">
    <h2>${heading}</h2>
    
    <div class="dev-resources-grid">
      <#list resources as resource>
        <div class="dev-resource-card">
          <div class="dev-resource-image">
            <img src="${resource.image}" alt="${resource.title}" />
          </div>
          <h3>${resource.title}</h3>
          <p>${resource.desc}</p>
        </div>
      </#list>
    </div>
  </div>
</section>

</#macro>
