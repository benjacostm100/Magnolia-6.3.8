<#<#assign tagline = "Developer-first" />
<#assign title = "Ship passwordless faster" />
<#assign subtitle = "APIs built for speed" />
<#assign description = "Use straightforward endpoints and lightweight SDKs to integrate secure authentication in days, not months." />
<#assign items = [
  {"icon":"api.svg","name":"REST / OpenID","description":"Interoperable and widely supported.","link":""},
  {"icon":"webhook.svg","name":"Event hooks","description":"React to auth lifecycle events.","link":""},
  {"icon":"sandbox.svg","name":"Sandbox","description":"Test flows securely before launch.","link":""},
  {"icon":"logs.svg","name":"Detailed logs","description":"Trace every auth event for audits.","link":""}
] />velopers Features Component (Frictionless security, smooth integration) -->
<#macro developersDetails>
<#assign paragraphs = [
  "API/OpenID first architecture / SAML B-FY compatibility. B-FY offers a well-documented API and OpenID interface that allows companies to rapidly integrate our authentication technology into their platforms — whether mobile apps or physical access points.",
  "Omnichannel compatibility. The B-FY solution works across multiple platforms and channels, ensuring seamless integration into websites, mobile apps, and even physical environments.",
  "No extra hardware needed. B-FY leverages the biometric capabilities of mobile devices, eliminating the need to invest in specialized readers or additional hardware. Users authenticate with their smartphones, simplifying deployment.",
  "Fast deployment and scalability. Whether you're a startup or an enterprise, B-FY’s architecture allows for fast deployment and scalability to millions of users — without disrupting existing workflows." ] />
<section class="dev-details">
  <style>
    .dev-details { margin-bottom: 3.75rem; background-color: #e5e5e5; display: grid; }
    @media (min-width:1024px){ .dev-details { grid-template-columns: 1fr 1fr; } }
    .dev-details-image { width: 100%; height: 100%; object-fit: cover; display: none; border-radius: 0 0.5rem 0 0; }
    @media (min-width:1024px){ .dev-details-image { display: block; } }
    .dev-details-content { padding: 2.5rem 1.25rem; font-size: 1.125rem; }
    @media (min-width:640px){ .dev-details-content { padding: 2.5rem; } }
    @media (min-width:1280px){ .dev-details-content { padding: 3.25rem; } }
    .dev-tagline { width: fit-content; padding: 0.625rem 1.25rem; border-radius: 0.375rem; background-color: #ea580c; line-height: 1.25; color: white; text-transform: uppercase; }
    @media (min-width:1280px){ .dev-tagline { font-size: 1.25rem; } }
    .dev-details h2 { margin: 2rem 0 1.25rem; font-weight: 700; font-size: 1.875rem; }
    @media (min-width:1280px){ .dev-details h2 { font-size: 3rem; } }
    .dev-details p { margin-bottom: 1rem; }
    .dev-details p strong { font-weight: 700; }
    .dev-items-list { margin-top: 2.25rem; display: grid; gap: 1.25rem; }
    .dev-item { display: flex; gap: 1rem; }
    .dev-item-icon { width: 2.5rem; height: 2.5rem; margin-top: 0.25rem; flex-shrink: 0; object-fit: contain; }
    .dev-item-content strong { font-weight: 700; }
  </style>
  
  <img class="dev-details-image" src="${ctx.contextPath}/.resources/b-fy/webresources/images/developers.webp" alt="Developer integration" />
  
  <div class="dev-details-content">
    <div>
      <p class="dev-tagline">${tagline}</p>
      <h2>${title}</h2>
    </div>
    <p><strong>${subtitle}</strong> ${description}</p>
    
    <ul class="dev-items-list">
      <#list items as item>
        <li class="dev-item">
          <img class="dev-item-icon" src="${ctx.contextPath}/.resources/b-fy/webresources/images/api.svg" alt="" />
          <div class="dev-item-content">
            <strong>${item.name}</strong> ${item.description}
          </div>
        </li>
      </#list>
    </ul>
  </div>
</section>
</#macro>
