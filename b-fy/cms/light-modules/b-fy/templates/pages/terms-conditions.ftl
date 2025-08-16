<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Terms & Conditions | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="terms" />
  <main style="margin-top:70px;" class="px-6 py-20 max-w-screen-xl mx-auto prose prose-neutral">
    <#assign fbIntro = "These Terms govern access to and use of B-FY's authentication platform." />
    <h1 class="font-bold text-4xl mb-8">${content.title!"Terms & Conditions"}</h1>
    <p>${content.intro!fbIntro}</p>
    <h2>Use of Service</h2>
    <p>Access requires compliance with security and acceptable use policies.</p>
    <h2>Availability</h2>
    <p>Standard SLA applies; scheduled maintenance windows will be communicated.</p>
    <h2>Liability</h2>
    <p>Platform provided as-is except where explicitly covered by agreement.</p>
    <h2>Law & Jurisdiction</h2>
    <p>Governing law specified in master service agreement.</p>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
