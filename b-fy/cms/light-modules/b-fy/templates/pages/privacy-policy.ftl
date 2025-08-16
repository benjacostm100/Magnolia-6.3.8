<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Privacy Policy | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="privacy" />
  <main style="margin-top:70px;" class="px-6 py-20 max-w-screen-xl mx-auto prose prose-neutral">
    <#assign fbIntro = "This Privacy Policy explains how B-FY collects, uses, and protects personal data in the course of providing decentralized biometric authentication services." />
    <h1 class="font-bold text-4xl mb-8">${content.title!"Privacy Policy"}</h1>
    <p>${content.intro!fbIntro}</p>
    <h2>Data We Process</h2>
    <p>We avoid storing raw biometric data centrally. Authentication relies on device-bound templates and cryptographic verifiers.</p>
    <h2>Purposes</h2>
    <ul>
      <li>Secure user authentication</li>
      <li>Fraud prevention & risk assessment</li>
      <li>Regulatory compliance</li>
    </ul>
    <h2>Rights</h2>
    <p>Users may request access, correction, deletion or portability of personal data subject to applicable law.</p>
    <h2>Contact</h2>
    <p>privacy@b-fy.example</p>
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
