<#-- Industries Hero Component -->

<#-- Import CMS helpers -->
<#import "/b-fy/templates/components/util/cms-helpers.ftl" as cms />

<#-- Util: base path to local webresources images -->
<#assign _imgBase = "${ctx.contextPath}/.resources/b-fy/webresources/images" />

<#-- Function: resolve DAM asset (node|UUID|string path) or fallback to local -->
<#function damOrLocal damValue fallbackFilename>
  <#-- Normalización de nombres inexistentes -->
  <#assign fixedFallback = fallbackFilename>
  <#if fixedFallback == "industries-hero.webp"> <#assign fixedFallback = "industries.webp" /> </#if>
  <#if fixedFallback == "transport-logistics.webp"> <#assign fixedFallback = "transportation-logistics.webp" /> </#if>
  <#if fixedFallback == "healthcare-services.webp"> <#assign fixedFallback = "healthcare.webp" /> </#if>
  <#assign localUrl = _imgBase + "/" + fixedFallback />

  <#-- Resolver nodo DAM desde UUID string o path -->
  <#assign assetNode = '' />
  <#if damValue?? && damValue?is_hash>
    <#-- Ya es un nodo -->
    <#assign assetNode = damValue />
  <#elseif damValue?? && damValue?is_string && damValue?has_content>
    <#-- Convertir UUID string con prefijo jcr: -->
    <#if damValue?starts_with('jcr:') && cmsfn?? && cmsfn.contentById??>
      <#assign uuid = damValue?replace('jcr:', '') />
      <#assign assetNode = cmsfn.contentById(uuid)!'' />
    <#-- UUID sin prefijo -->
    <#elseif (damValue?length == 36) && (damValue?matches('^[0-9A-Fa-f-]+$')) && cmsfn?? && cmsfn.contentById??>
      <#assign assetNode = cmsfn.contentById(damValue)!'' />
    <#-- Path absoluto -->
    <#elseif damValue?starts_with('/') && cmsfn?? && cmsfn.contentByPath??>
      <#assign assetNode = cmsfn.contentByPath(damValue)!'' />
    </#if>
  </#if>

  <#-- Usar damfn.link() si tenemos un nodo válido -->
  <#if assetNode?is_hash && damfn?? && damfn.link??>
    <#attempt>
      <#assign url = damfn.link(assetNode)!"" />
      <#if url?has_content && !url?starts_with("jcr:") && !url?contains("jcr:null") && !url?contains("undefined")>
        <#return url />
      </#if>
    <#recover>
      <#-- Si damfn.link() falla, intentar construcción manual como fallback -->
      <#if damValue?? && damValue?is_string && damValue?starts_with('jcr:')>
        <#assign manualUrl = "${ctx.contextPath}/.imaging/dam/" + damValue?replace('jcr:', '') />
        <#return manualUrl />
      </#if>
    </#attempt>
  </#if>

  <#-- Fallback a imagen local -->
  <#return localUrl />
</#function>

<#-- Función para detectar contenido "real" -->
<#function hasRealContent value>
  <#if !value??>
    <#return false />
  </#if>
  <#return (value?has_content && value?is_string && value?trim != '') || (value?is_hash) />
</#function>

<#-- Función para CMS o default -->
<#function cmsOrDefault cmsValue defaultValue>
  <#if hasRealContent(cmsValue!'')>
    <#return cmsValue />
  <#else>
    <#return defaultValue />
  </#if>
</#function>

<#macro industriesHero>
  <#-- Leer valores del CMS con lógica robusta default/CMS -->
  <#assign title = cmsOrDefault(content.title!'', "Secure, frictionless authentication for every industry") />
  <#assign description = cmsOrDefault(content.description!'', "B-FY delivers a decentralized biometric authentication solution designed to meet the demands of any industry. By ensuring that only legitimate users of your company can access your physical and digital environments, B-FY enhances user experience, strengthens compliance, and helps boost your bottom line. From finance to logistics, healthcare to education, our technology provides robust protection against today's most sophisticated threats — generative AI, malicious apps, bots, account takeovers (ATO), phishing, and identity fraud.") />
  
  <#-- Campo imagen: usar DAM si existe, fallback a local -->
  <#assign heroImgUrl = damOrLocal(content.image!'', "industries-hero.webp") />

  <#-- DEBUG temporal -->
  <!-- DEBUG Hero:
  content.image exists: ${content.image???c}
  content.image value: ${(content.image)!'null'}
  hasRealContent(content.image): ${hasRealContent(content.image!'')?c}
  heroImgUrl: ${heroImgUrl}
  -->

<section style="margin-top: 3rem; padding: 0 1.25rem; text-align: center;">
  <style>
    @media (min-width: 640px) {
      .industries-hero { padding: 0 2.5rem; }
    }
    @media (min-width: 1024px) {
      .industries-hero { padding: 0 3.25rem; }
    }
    @media (min-width: 1280px) {
      .industries-hero { margin-top: 6rem; }
    }
    .industries-hero h1 {
      max-width: 48rem;
      margin: 0 auto;
      font-weight: bold;
      font-size: 1.875rem;
      line-height: 1.2;
    }
    @media (min-width: 1280px) {
      .industries-hero h1 {
        font-size: 3rem;
      }
    }
    .industries-hero img {
      margin: 2.5rem auto;
      border-radius: 0.5rem;
      width: 100%;
      height: auto;
    }
    .industries-hero p {
      max-width: 70rem;
      margin: 0 auto;
      font-size: 1.125rem;
      line-height: 1.6;
      text-wrap: pretty;
    }
    @media (min-width: 1280px) {
      .industries-hero p {
        font-size: 1.25rem;
        line-height: 1.4;
      }
    }
  </style>
  <div class="industries-hero">
    <h1>${title}</h1>
    <img src="${heroImgUrl}" 
         alt="Industries authentication overview" 
         loading="eager" />
    <p>${description}</p>
  </div>
</section>
</#macro>
