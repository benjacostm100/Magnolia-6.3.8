<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Blog Post | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav />
  <main style="margin-top:70px;" class="px-6 py-20 max-w-screen-md mx-auto prose prose-neutral">
    <h1 class="font-bold text-4xl mb-6">${content.title!"Untitled Blog Post"}</h1>
    <p class="text-sm text-neutral-500 mb-10">${content.date!"2025-01-01"}</p>
    <#assign fbBody = "This is placeholder blog content migrated from the Astro dynamic blog route." />
    <div>${content.body!fbBody}</div>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
