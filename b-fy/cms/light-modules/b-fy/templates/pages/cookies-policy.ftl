<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Cookies Policy | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="cookies" />
  <main style="margin-top:70px;" class="px-6 py-20 max-w-screen-xl mx-auto prose prose-neutral">
    <#assign fbIntro = "This Cookies Policy explains the categories of cookies used and your control options." />
    <h1 class="font-bold text-4xl mb-8">${content.title!"Cookies Policy"}</h1>
    <p>${content.intro!fbIntro}</p>
    <h2>Categories</h2>
    <ul>
      <li>Strictly necessary</li>
      <li>Performance & analytics</li>
      <li>Functionality</li>
    </ul>
    <h2>Control</h2>
    <p>Adjust browser settings or use in-product preferences to manage cookies.</p>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
