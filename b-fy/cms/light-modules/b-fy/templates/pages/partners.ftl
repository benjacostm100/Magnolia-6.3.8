<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Partners | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="partners" />
  <main style="margin-top:70px;">
    <#-- Fallbacks -->
    <#assign fbTagline = "Discover our partner program" />
    <#assign fbTitle = "Grow with the future of authentication" />
    <#assign fbDesc = "Join an ecosystem focused on decentralized biometrics, passwordless security and fraud prevention. Expand reach, increase customer value and boost profitability." />

    <#assign fbBenefitsTitle = "Why partner with B-FY?" />
    <#assign fbBenefitsDesc = "We empower integrators, technology providers and consultants with best-in-class authentication." />
    <#assign fbBenefitItems = [
      {"title":"Access to cutting‑edge tech","description":"Offer a decentralized biometric authentication platform."},
      {"title":"Incentive structure","description":"Attractive commercial model to maximize revenue."},
      {"title":"Technical enablement","description":"Training, documentation and engineering support."},
      {"title":"Marketing resources","description":"Co-marketing assets to accelerate go-to-market."}
    ] />

    <#-- HERO WITH OPTIONAL IMAGE -->
    <section class="px-6 pt-32 pb-16 bg-gradient-to-br from-white to-neutral-100">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-2 items-center">
        <div>
          <p class="text-orange-600 uppercase tracking-wide">${content.tagline!fbTagline}</p>
          <h1 class="font-bold text-4xl leading-tight max-w-4xl mt-6">${content.title!fbTitle}</h1>
          <p class="mt-8 text-lg max-w-2xl leading-relaxed">${content.description!fbDesc}</p>
        </div>
        <div class="relative">
          <#assign heroImg = '' />
          <#if content.heroImage?? && (damfn??)>
            <#attempt>
              <#assign heroImg = damfn.link(content.heroImage) />
              <img src="${heroImg}" alt="" class="rounded object-cover w-full h-80" />
            <#recover>
              <img src="/.resources/b-fy/webresources/images/hero.webp" alt="" class="rounded object-cover w-full h-80" />
            </#attempt>
          <#else>
            <img src="/.resources/b-fy/webresources/images/hero.webp" alt="" class="rounded object-cover w-full h-80" />
          </#if>
        </div>
      </div>
    </section>

    <#-- BENEFITS BLOCK -->
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <#assign benefitsNode = {} />
        <#if content.benefits?has_content>
          <#assign benefitsChildren = content.benefits?children />
          <#if benefitsChildren?size gt 0>
            <#assign benefitsNode = benefitsChildren[0] />
          </#if>
        </#if>
        <h2 class="font-bold text-3xl">${benefitsNode.title!fbBenefitsTitle}</h2>
        <p class="mt-4 text-lg leading-relaxed max-w-prose">${benefitsNode.description!fbBenefitsDesc}</p>
        <div class="mt-10 grid gap-8 md:grid-cols-2 xl:grid-cols-3">
          <#assign bItems = fbBenefitItems />
          <#if benefitsNode.items?has_content>
            <#assign bItems = benefitsNode.items />
          </#if>
          <#list bItems as b>
            <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold text-lg">${b.title!b["title"]!}</h3>
              <p class="text-sm leading-snug">${b.description!b["description"]!}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <#-- PARTNERS LIST (logos/names) + marquee -->
    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">Some partners</h2>
        <#assign partnersList = [] />
        <#if content.list?has_content>
          <#assign partnersList = content.list?children />
        </#if>
        <#if partnersList?size == 0>
          <p class="text-sm text-neutral-500">Partner logos will appear here once added.</p>
        <#else>
          <div class="mb-12 overflow-hidden">
            <div class="flex gap-16 animate-[marquee_25s_linear_infinite] whitespace-nowrap">
              <#list partnersList as p>
                <div class="flex items-center justify-center opacity-70 hover:opacity-100 transition-opacity w-32 h-16">
                  <#assign _logoSrc = '' />
                  <#if p.logo?? && (damfn??)>
                    <#attempt>
                      <#assign _logoSrc = damfn.link(p.logo) />
                    <#recover>
                      <#assign _logoSrc = '' />
                    </#attempt>
                  </#if>
                  <#if _logoSrc?has_content>
                    <img src="${_logoSrc}" alt="${p.name!}" class="max-h-12 object-contain" />
                  <#else>
                    <span class="text-xs">${p.name!}</span>
                  </#if>
                </div>
              </#list>
            </div>
          </div>
          <div class="grid gap-10 grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 items-center">
            <#list partnersList as p>
              <div class="flex items-center justify-center opacity-70 hover:opacity-100 transition-opacity">
                <#assign _logoSrc = '' />
                <#if p.logo?? && (damfn??)>
                  <#attempt>
                    <#assign _logoSrc = damfn.link(p.logo) />
                  <#recover>
                    <#assign _logoSrc = '' />
                  </#attempt>
                </#if>
                <#if _logoSrc?has_content>
                  <img src="${_logoSrc}" alt="${p.name!}" class="max-h-16 object-contain" />
                <#else>
                  <span class="text-xs">${p.name!}</span>
                </#if>
              </div>
            </#list>
          </div>
        </#if>
      </div>
    </section>

    <#-- FORM / CONTACT BLOCK -->
    <section class="relative px-5 sm:px-10 lg:px-13 pt-24 pb-20 text-center text-white text-lg xl:text-xl overflow-hidden">
      <div class="relative z-10 max-w-5xl mx-auto">
        <p class="uppercase">Become a partner</p>
        <h2 class="mt-5 mb-8 font-bold text-5xl">Join our ecosystem.</h2>
        <p class="max-w-2xl mb-16 mx-auto leading-snug">Accelerate growth with decentralized biometric authentication. Let's build together.</p>
        <div class="flex flex-col gap-6 sm:flex-row sm:justify-center">
          <a class="py-2.5 px-5 rounded bg-white text-black transition-colors hover:text-red-800" href="/contact">Get a demo</a>
          <a class="py-2.5 px-5 rounded ring ring-inset transition-colors hover:text-orange-600" href="/contact">Contact us</a>
        </div>
      </div>
      <span class="absolute inset-0 -z-10 bg-black/55"></span>
    </section>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
