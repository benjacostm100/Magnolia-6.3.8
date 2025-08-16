<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Industries | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="industries" />
  <main style="margin-top:70px;">
    <#-- Fallbacks -->
    <#assign fbTitle = "Industries we protect" />
    <#assign fbDesc = "B-FY adapts to multiple sectors, blocking identity fraud and preserving frictionless experiences." />
    <#assign fbList = [
      {"title":"Financial Services","description":"Stop ATO, APP fraud and comply with regulation while keeping UX high."},
      {"title":"Transport & Logistics","description":"Eliminate internal and external identity-based fraud across logistics workflows."},
      {"title":"Education","description":"Protect students and staff from ransomware, fraud and unauthorized access."},
      {"title":"Healthcare","description":"Comply with HIPAA/GDPR while preventing medical identity theft and insurance fraud."}
    ] />

    <section class="px-6 pt-32 pb-16 bg-gradient-to-br from-white to-neutral-100">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-2 items-center">
        <div>
          <h1 class="font-bold text-4xl leading-tight max-w-4xl">${content.title!fbTitle}</h1>
          <p class="mt-8 text-lg max-w-2xl leading-relaxed">${content.description!fbDesc}</p>
        </div>
        <div>
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

    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-2 xl:grid-cols-3">
        <#-- Build industries list safely -->
        <#assign industriesList = fbList />
        <#if content.list?has_content>
          <#assign listChildren = content.list?children />
          <#if listChildren?size gt 0>
            <#assign industriesList = listChildren />
          </#if>
        </#if>
        <#list industriesList as i>
          <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-4">
            <h3 class="font-bold text-lg">${i.title!i["title"]!}</h3>
            <p class="text-sm leading-snug">${i.description!i["description"]!}</p>
          </div>
        </#list>
      </div>
    </section>

  <#import "/b-fy/templates/components/cta.ftl" as cmp />
  <@cmp.callToAction tagline="Need industry details?" />
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
