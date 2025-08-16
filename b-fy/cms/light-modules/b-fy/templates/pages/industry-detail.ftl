<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Industry | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="industries" />
  <main style="margin-top:70px;" class="px-6 py-24 max-w-screen-xl mx-auto">
    <h1 class="font-bold text-4xl mb-8">${content.title!"Industry Detail"}</h1>
    <p class="text-lg max-w-prose mb-12">${content.description!"Fallback description for this industry, its challenges and security needs."}</p>
    <#assign challenges = [] />
    <#if content.challenges?has_content>
      <#assign challenges = content.challenges?children />
    </#if>
    <#if challenges?size == 0>
      <#assign challenges = [
        {"title":"Fraud risk","body":"High exposure to identity-based fraud attempts."},
        {"title":"User friction","body":"Legacy MFA reduces conversion and satisfaction."},
        {"title":"Compliance","body":"Need to meet regional data protection regulations."}
      ] />
    </#if>
    <div class="grid gap-8 md:grid-cols-3">
      <#list challenges as c>
        <div class="p-6 border rounded bg-white shadow-sm">
          <h2 class="font-semibold text-lg mb-2">${c.title!c["title"]!}</h2>
          <p class="text-sm leading-snug">${c.body!c["body"]!}</p>
        </div>
      </#list>
    </div>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
