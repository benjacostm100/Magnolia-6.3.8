<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Developers | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="developers" />
  <main style="margin-top:70px;">
    <#-- FALLBACKS -->
    <#assign fbTitle = "Build with B-FY" />
    <#assign fbDesc = "Integrate decentralized biometric authentication quickly using our documented APIs and SDKs." />
    <#assign fbSubtitle = "Frictionless security for any stack" />

    <#assign fbFeatureList = [
      {"name":"OpenID / OAuth2","description":"Standards-based integration for identity flows."},
      {"name":"Client SDKs","description":"Mobile & web libraries to speed implementation."},
      {"name":"Decentralized biometric model","description":"No central biometric storage to breach."},
      {"name":"Scalable architecture","description":"Designed for millions of authentications."}
    ] />

    <#assign fbDetailsTagline = "Developer-first" />
    <#assign fbDetailsTitle = "Ship passwordless faster" />
    <#assign fbDetailsSubtitle = "APIs built for speed" />
    <#assign fbDetailsDesc = "Use straightforward endpoints and lightweight SDKs to integrate secure authentication in days, not months." />
    <#assign fbDetailsItems = [
      {"name":"REST / OpenID","description":"Interoperable and widely supported."},
      {"name":"Event hooks","description":"React to auth lifecycle events."},
      {"name":"Sandbox","description":"Test flows securely before launch."},
      {"name":"Detailed logs","description":"Trace every auth event for audits."}
    ] />

    <#assign fbResourcesTagline = "Resources" />
    <#assign fbResourcesTitle = "Everything you need" />
    <#assign fbResourcesItems = [
      {"title":"Quickstart","description":"Spin up an integration in minutes."},
      {"title":"API Reference","description":"Comprehensive endpoint documentation."},
      {"title":"SDK Guides","description":"Implement flows on iOS, Android & Web."},
      {"title":"Security Whitepaper","description":"In-depth architecture & threat model."}
    ] />

    <#assign fbFaqs = [
      {"question":"Do you store biometrics?","answer":"No, biometrics never leave the user device."},
      {"question":"How long to integrate?","answer":"Typical MVP integration: less than a week."},
      {"question":"Do you support OpenID?","answer":"Yes, we are OpenID certified."}
    ] />

    <section class="px-6 pt-32 pb-16 bg-gradient-to-br from-white to-neutral-100">
      <div class="max-w-screen-xl mx-auto">
  <h1 class="font-bold text-4xl leading-tight max-w-4xl">${content.title!fbTitle}</h1>
  <p class="mt-8 text-lg max-w-2xl leading-relaxed">${content.description!fbDesc}</p>
  <p class="mt-4 text-sm text-orange-600 font-medium">${content.subtitle!fbSubtitle}</p>
      </div>
    </section>

    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-2 xl:grid-cols-3">
        <#assign feats = fbFeatureList />
        <#if content.features?has_content>
          <#assign featureChildren = content.features?children />
          <#if featureChildren?size gt 0>
            <#assign feats = featureChildren />
          </#if>
        </#if>
        <#list feats as f>
          <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
            <h3 class="font-bold text-lg">${f.name!f["name"]!}</h3>
            <p class="text-sm leading-snug">${f.description!f["description"]!}</p>
          </div>
        </#list>
      </div>
    </section>

    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-2">
        <div>
          <p class="text-orange-600 uppercase tracking-wide">${fbDetailsTagline}</p>
          <h2 class="mt-4 font-bold text-3xl">${fbDetailsTitle}</h2>
          <p class="mt-2 font-medium">${fbDetailsSubtitle}</p>
          <p class="mt-6 text-sm leading-relaxed">${fbDetailsDesc}</p>
        </div>
        <div class="grid gap-6">
          <#list fbDetailsItems as it>
            <div class="p-4 rounded border bg-white shadow-sm">
              <h3 class="font-bold text-sm mb-1">${it.name}</h3>
              <p class="text-xs leading-snug">${it.description}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <p class="text-orange-600 uppercase tracking-wide">${fbResourcesTagline}</p>
        <h2 class="mt-4 font-bold text-3xl mb-8">${fbResourcesTitle}</h2>
        <div class="grid gap-8 md:grid-cols-2 xl:grid-cols-4">
          <#list fbResourcesItems as r>
            <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold">${r.title}</h3>
              <p class="text-sm leading-snug">${r.description}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">FAQs</h2>
        <div class="flex flex-col gap-6">
          <#assign faqList = fbFaqs />
          <#if content.faqs?has_content>
            <#assign _faqChildren = (content.faqs?children)![] />
            <#if _faqChildren?size gt 0>
              <#assign faqList = _faqChildren />
            </#if>
          </#if>
          <#list faqList as q>
            <div class="p-4 rounded border bg-white shadow-sm">
              <p class="font-bold text-sm">${q.question!q["question"]!}</p>
              <p class="text-xs mt-2 leading-snug">${q.answer!q["answer"]!}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <section class="relative px-5 sm:px-10 lg:px-13 pt-24 pb-20 text-center text-white text-lg xl:text-xl overflow-hidden">
      <div class="relative z-10 max-w-5xl mx-auto">
        <p class="uppercase">Ready to build?</p>
        <h2 class="mt-5 mb-8 font-bold text-5xl">Experience the new era of authentication.</h2>
        <p class="max-w-2xl mb-16 mx-auto leading-snug">Integrate decentralized biometrics. Request a demo or contact us for more information.</p>
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
