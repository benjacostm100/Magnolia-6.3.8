<#-- Home Partners section component replicating Astro Partners. -->
<#macro homePartners>
  <#-- Resolve authored partners composite -->
  <#assign partnersNode = {} />
  <#if content.partners??>
    <#assign _children = (content.partners?children)![] />
    <#if _children?size gt 0>
      <#assign partnersNode = _children[0] />
    </#if>
  </#if>
  <#-- Local fallback (mirrors original Astro / previous home.ftl fallback) -->
  <#assign _fallback = {
    "tagline":"Discover our partner program",
    "title":"Be part of the future of omnichannel authentication",
    "description":"B-FY is looking for strategic partners: integrators, technology providers, consultants. Expand your reach, increase client value and maximize profitability with decentralized biometrics, passwordless authentication, and advanced fraud prevention.",
    "benefits":[
      "Access to cutting‑edge technology",
      "Incentive structure",
      "Technical support and specialized training",
      "Marketing materials and resources"
    ]
  } />
  <#assign _tagline = partnersNode.tagline!_fallback.tagline />
  <#assign _title = partnersNode.title!_fallback.title />
  <#assign _desc = partnersNode.description!_fallback.description />
  <#-- Benefits multifield or fallback -->
  <#assign benefits = [] />
  <#if partnersNode.benefits?has_content>
    <#assign benefits = partnersNode.benefits?children />
  </#if>
  <#if benefits?size == 0>
    <#-- create pseudo benefit map entries for fallback list -->
    <#assign benefits = [] />
    <#list _fallback.benefits as fb>
      <#assign benefits = benefits + [{"description": fb}] />
    </#list>
  </#if>
  <#-- Image: use authored DAM or fallback local static asset (webresources partner.webp) -->
  <#assign imgLink = "" />
  <#if partnersNode.image?has_content>
    <#assign imgNode = cmsfn.contentById(partnersNode.image!)! />
    <#if imgNode?? && (damfn??)>
      <#attempt>
        <#assign imgLink = (damfn.link(imgNode))!"" />
        <#recover>
          <#assign imgLink = "" />
      </#attempt>
    </#if>
  </#if>
  <#if !imgLink?has_content>
    <#-- fallback local static asset (filename is partners.webp) -->
    <#assign imgLink = ctx.contextPath + "/.resources/b-fy/webresources/images/partners.webp" />
  </#if>
  <#-- Always render with fallbacks -->
  <#if !HOME_PARTNERS_STYLE_INCLUDED??>
    <#global HOME_PARTNERS_STYLE_INCLUDED = true />
    <style>
      .partners{background:#e5e5e5;display:grid;grid-template-columns:1fr;}
      @media (min-width:1024px){.partners{grid-template-columns:1fr 1fr;}}
      .partners__imageWrap{display:none;}
      @media (min-width:1024px){.partners__imageWrap{display:block;}}
      .partners__image{width:100%;height:100%;object-fit:cover;border-top-right-radius:1rem;display:block;}
      .partners__body{padding:40px 20px;font-size:1.125rem;display:flex;flex-direction:column;align-items:flex-start;}
      @media (min-width:640px){.partners__body{padding:56px 40px;}}
      @media (min-width:1280px){.partners__body{padding:64px 64px;}}
      .partners__tag{display:inline-block;padding:10px 20px;border-radius:6px;background:#ea580c;color:#fff;line-height:1;text-transform:uppercase;font-size:.75rem;letter-spacing:.04em;}
      @media (min-width:1280px){.partners__tag{font-size:.95rem;}}
      .partners__title{margin:32px 0 36px;font-weight:700;font-size:1.875rem;line-height:1.1;max-width:40ch;}
      @media (min-width:1280px){.partners__title{font-size:3rem;}}
      .partners__desc{max-width:60ch;margin:0 0 40px;line-height:1.4;}
      .partners__benefitsLabel{margin:0 0 24px;color:#ea580c;text-transform:uppercase;font-weight:600;letter-spacing:.04em;}
      .partners__benefits{list-style:none;margin:0 0 56px;padding:0;display:grid;gap:18px;}
      .partners__benefit{display:flex;align-items:center;gap:14px;}
      .partners__benefitIcon{width:44px;height:44px;object-fit:contain;flex:0 0 44px;}
      .partners__cta{display:inline-block;padding:10px 20px;border:1px solid currentColor;color:#ea580c;border-radius:6px;font-size:.95rem;line-height:1;text-decoration:none;transition:color .25s,background .25s;}
      .partners__cta:hover{color:#991b1b;background:#fff;}
    </style>
  </#if>
  <section class="partners" aria-label="Partners program">
    <div class="partners__imageWrap"><img src="${imgLink}" alt="Partners" class="partners__image" loading="lazy" /></div>
    <div class="partners__body">
      <#if _tagline?has_content><p class="partners__tag">${_tagline}</p></#if>
      <#if _title?has_content><h2 class="partners__title">${_title}</h2></#if>
      <#if _desc?has_content><p class="partners__desc">${_desc}</p></#if>
      <#if benefits?size gt 0>
        <h3 class="partners__benefitsLabel">Benefits</h3>
        <ul class="partners__benefits">
          <#list benefits as b>
            <li class="partners__benefit">
              <#assign iconLink = "" />
              <#if b.icon?has_content>
                <#assign iconNode = cmsfn.contentById(b.icon!)! />
                <#if iconNode?? && (damfn??)>
                  <#attempt>
                    <#assign iconLink = (damfn.link(iconNode))!"" />
                    <#recover>
                      <#assign iconLink = "" />
                  </#attempt>
                </#if>
              </#if>
              <#if iconLink?has_content>
                <img src="${iconLink}" alt="" class="partners__benefitIcon" loading="lazy" />
              <#else>
                <img src="${ctx.contextPath}/.resources/b-fy/webresources/icons/check.svg" alt="" class="partners__benefitIcon" loading="lazy" />
              </#if>
              <span>${b.description!}</span>
            </li>
          </#list>
        </ul>
      </#if>
      <a href="${base!""}/partners#form" class="partners__cta">Let's do business</a>
    </div>
    <pre style="display:none;font-size:10px;line-height:1.2;white-space:pre-wrap">[partners-debug]
imageField=${partnersNode.image!"(none)"}
resolvedImage=${imgLink}
benefitsCount=${benefits?size}
firstBenefitIconRaw=<#if benefits?size gt 0>${benefits[0].icon!""}</#if>
</pre>
  </section>
</#macro>
