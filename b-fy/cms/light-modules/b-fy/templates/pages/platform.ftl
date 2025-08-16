<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Platform | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="platform" />
  <main style="margin-top:70px;">
    <#-- HELPERS -->
    <#function firstChild nodeName>
      <#if (content[nodeName])??>
        <#assign ch = (content[nodeName]?children)![] />
        <#if ch?size gt 0><#return ch[0] /></#if>
      </#if>
      <#return {} />
    </#function>

    <#-- FALLBACK DATA FROM ASTRO TEXT -->
    <#assign fbHeroTitle = "A unique authentication platform" />
    <#assign fbHeroDesc = "B-FY authenticates people, certifying the truth of their identity, through a simple and easy-to-use design, integrated with online applications. With B-FY, there are no credentials that can be stolen or forged." />

    <#assign fbFeatureBlocks = [
      {"title":"Prevention of malicious AI and phishing attacks","description":"It blocks all malicious generative AI attacks, ensuring access only to legitimate websites and access points."},
      {"title":"Protection against account takeover","description":"Each transaction is dynamically verified to neutralize cyberattacks and protect users. OpenID certified, simplifying SSO and identity management."},
      {"title":"Zero Trust model with OpenID certification","description":"Eliminates reliance on central databases, reducing breach risk and preventing ATO attacks."}
    ] />

    <#assign fbTabs = [
      "Customer authentication",
      "Employee authentication",
      "User-controlled biometrics",
      "Effective against ATO, AI-driven fraud and phishing",
      "Compliance",
      "Decentralized authentication"
    ] />

    <#assign fbComparisonHeaders = ["Traditional 2FA (SMS, OTP, Apps)","Passwords","Passwordless by design","Decentralized security","Fraud and AI attack prevention","Frictionless user experience","Protection against ATO","User transparency","Easy integration"] />
    <#-- Detailed comparison matrix (columns: Legacy 2FA, Passwords, B-FY) -->
    <#assign fbComparisonMatrix = [
      {"capability":"Passwordless by design","legacy2fa":"✕","passwords":"✕","bfy":"✔"},
      {"capability":"Decentralized (no shared secrets)","legacy2fa":"✕","passwords":"✕","bfy":"✔"},
      {"capability":"Prevents phishing / AI spoofing","legacy2fa":"△","passwords":"✕","bfy":"✔"},
      {"capability":"Blocks ATO (account takeover)","legacy2fa":"△","passwords":"✕","bfy":"✔"},
      {"capability":"Eliminates credential reuse","legacy2fa":"△","passwords":"✕","bfy":"✔"},
      {"capability":"Frictionless UX","legacy2fa":"✕","passwords":"✕","bfy":"✔"},
      {"capability":"Open standards (OIDC)","legacy2fa":"△","passwords":"✕","bfy":"✔"},
      {"capability":"No OTP fatigue / SIM swap risk","legacy2fa":"✕","passwords":"✕","bfy":"✔"}
    ] />

    <#assign fbProcessTitle = "Simple and frictionless authentication" />
    <#assign fbProcessIntro = "A smarter and safer way to authenticate:" />
    <#assign fbProcessSteps = [
      "The user scans the B‑FY QR code at an online or physical access point.",
      "Biometric verification is performed through the institution’s mobile app (with B‑FY libraries integrated).",
      "B‑FY grants direct access to the user, not just their credentials.",
      "Why it matters: Hackers can steal credentials, but they cannot replicate a real person.",
      "B-FY renders identification credentials useless to hackers. Even if leaked, they are worthless without biometric validation.",
      "Request a demo here"
    ] />

    <#assign fbIntegrationTitle = "How is B-FY integrated?" />
    <#assign fbIntegrationParagraphs = [
      "B-FY Platform offers a well-documented API/OpenID that allows companies to quickly integrate its authentication technology into their platforms (web, mobile, or physical access points).",
      "No additional hardware: Since B-FY leverages existing smartphone biometric capabilities, companies don't need to invest in specialized hardware or readers.",
      "Omnichannel compatibility: Works across multiple platforms and channels (websites, mobile apps, physical).",
      "Fast deployment and scalability: Architecture allows fast integration for millions of users without disrupting workflows."
    ] />

    <#assign fbRegisterTitle = "Register in seconds" />
    <#assign fbRegisterDesc = "Set up your account in just a few steps and start enjoying secure, passwordless authentication." />

    <#assign fbUseTitle = "B-FY it's that easy-to-use" />
    <#assign fbUseDesc = "Access your services quickly and easily. See how it works step by step." />

    <#assign fbKnowMoreTitle = "Want to know more?" />
    <#assign fbServiceTitle = "B-FY: At the Service of Its Clients" />
    <#assign fbServiceDesc = "Every company has unique needs, and at B-FY we adapt to their infrastructure to offer a robust and efficient authentication solution." />

    <#assign fbBenefits = [
      {"title":"Be your own identity authority","description":"Become your own Identity Provider and manage access with full autonomy."},
      {"title":"Maximize your revenue","description":"Optimize your operational profitability and elevate your bottom line."},
      {"title":"Break free from vendor lock‑in","description":"Regain control of your technology strategy."},
      {"title":"Get guaranteed financial security","description":"Protect every transaction with an impenetrable system."},
      {"title":"Ensure passwordless authentication","description":"Ultra-fast, simple, seamless experience with zero passwords."},
      {"title":"Say goodbye to hidden costs","description":"Eliminate expenses from fraud, data breaches, and ATO."}
    ] />

    <#-- LINKS NAV (anchor list) -->
    <#assign fbLinksNav = [
      {"label":"Features","anchor":"features"},
      {"label":"Capabilities","anchor":"comparison"},
      {"label":"Process","anchor":"process"},
      {"label":"Integration","anchor":"integration"},
      {"label":"Benefits","anchor":"benefits"}
    ] />

    <#assign fbVideo = {"title":"Platform overview","url":"https://www.youtube.com/embed/dQw4w9WgXcQ"} />
    <#-- Authoring override: content.video (child with properties title, url) -->
    <#assign videoNode = fbVideo />
    <#if content.video?has_content>
      <#assign vChildren = content.video?children />
      <#if vChildren?size gt 0><#assign videoNode = vChildren[0] /></#if>
    </#if>

  
    <#-- Anchor navigation (links to sections) -->
    <section class="px-6 py-8 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <nav class="flex flex-wrap gap-4">
          <#list fbLinksNav as ln>
            <a href="${'#' + (ln.anchor!ln['anchor'])!}" class="px-4 py-2 rounded border bg-white hover:text-orange-600">${ln.label!ln['label']!}</a>
          </#list>
        </nav>
      </div>
    </section>

    <#-- FEATURE BLOCKS -->
  <section id="features" class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-3">
        <#-- Build safe feature list: if author filled multifield it will be a parent node with children -->
        <#assign featureList = fbFeatureBlocks />
        <#if content.features??>
          <#-- content.features might be a node (ContentMap); get its children -->
          <#assign _fChildren = (content.features?children)![] />
          <#if _fChildren?size gt 0>
            <#assign featureList = _fChildren />
          </#if>
        </#if>
        <#list featureList as f>
          <#-- f could be a node or a map -->
          <#assign fTitle = f.title!f["title"]! >
          <#assign fDesc = f.description!f["description"]! >
          <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-4">
            <h3 class="font-bold text-lg">${fTitle}</h3>
            <p class="text-sm leading-snug">${fDesc}</p>
          </div>
        </#list>
      </div>
    </section>

    <#-- TABS (static fallback) -->
  <section id="comparison" class="px-6 py-10 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto flex flex-wrap gap-4">
        <#list fbTabs as t>
          <span class="px-4 py-2 rounded border text-sm font-medium bg-white">${t}</span>
        </#list>
      </div>
    </section>

    <#-- COMPARISON TABLE (simplified) -->
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-8">Capabilities</h2>
        <div class="grid gap-4 md:grid-cols-3 xl:grid-cols-3">
          <#list fbComparisonHeaders as h>
            <div class="p-4 rounded border bg-white text-sm leading-snug">${h}</div>
          </#list>
        </div>
        <div class="mt-12 overflow-auto">
          <table class="w-full text-sm border-collapse">
            <thead>
              <tr class="bg-neutral-100">
                <th class="text-left p-3 border">Capability</th>
                <th class="text-left p-3 border">Legacy 2FA</th>
                <th class="text-left p-3 border">Passwords</th>
                <th class="text-left p-3 border text-orange-600">B-FY</th>
              </tr>
            </thead>
            <tbody>
              <#assign matrix = fbComparisonMatrix />
              <#if content.comparison?has_content>
                <#-- content.comparison could already be a sequence (e.g., multi-value) or a node -->
                <#if content.comparison?is_sequence>
                  <#assign matrix = content.comparison />
                <#else>
                  <#assign cmpChildren = (content.comparison?children)![] />
                  <#if cmpChildren?size gt 0><#assign matrix = cmpChildren /></#if>
                </#if>
              </#if>
              <#list matrix as row>
                <tr class="odd:bg-white even:bg-neutral-50">
                  <td class="p-3 border font-medium">${row.capability!row["capability"]!}</td>
                  <td class="p-3 border">${row.legacy2fa!row["legacy2fa"]!}</td>
                  <td class="p-3 border">${row.passwords!row["passwords"]!}</td>
                  <td class="p-3 border font-semibold text-orange-600">${row.bfy!row["bfy"]!}</td>
                </tr>
              </#list>
            </tbody>
          </table>
        </div>
      </div>
    </section>

    <#-- PROCESS -->
    <section id="process" class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl">${fbProcessTitle}</h2>
        <p class="mt-6 text-lg leading-relaxed max-w-2xl">${fbProcessIntro}</p>
        <ol class="mt-10 flex flex-col gap-4 text-sm leading-snug list-decimal pl-6">
          <#list fbProcessSteps as s>
            <li>${s}</li>
          </#list>
        </ol>
      </div>
    </section>

    <#-- INTEGRATION -->
    <section id="integration" class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-2">
        <div>
          <h2 class="font-bold text-3xl mb-6">${fbIntegrationTitle}</h2>
          <#list fbIntegrationParagraphs as p>
            <p class="text-sm leading-relaxed mb-4">${p}</p>
          </#list>
        </div>
        <div class="p-6 rounded border bg-white shadow-sm text-sm leading-relaxed flex flex-col gap-6">
          <div>
            <h3 class="font-bold mb-2">${fbRegisterTitle}</h3>
            <p>${fbRegisterDesc}</p>
          </div>
            <div>
              <h3 class="font-bold mb-2">${fbUseTitle}</h3>
              <p>${fbUseDesc}</p>
            </div>
            <div>
              <h3 class="font-bold mb-2">${videoNode.title!fbVideo.title}</h3>
              <div class="aspect-video w-full rounded overflow-hidden border">
                <iframe src="${videoNode.url!fbVideo.url}" title="${videoNode.title!fbVideo.title}" allowfullscreen class="w-full h-full"></iframe>
              </div>
            </div>
        </div>
      </div>
    </section>

    <#-- BENEFITS -->
    <section id="benefits" class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">${fbKnowMoreTitle}</h2>
        <p class="text-lg max-w-3xl leading-relaxed mb-12">${fbServiceTitle} – ${fbServiceDesc}</p>
        <div class="grid gap-8 md:grid-cols-2 xl:grid-cols-3">
          <#list fbBenefits as b>
            <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold text-lg">${b.title}</h3>
              <p class="text-sm leading-snug">${b.description}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

  <#import "/b-fy/templates/components/cta.ftl" as cmp />
  <@cmp.callToAction tagline="Want to know more?" />
  </main>
  <#import "/b-fy/templates/components/footer.ftl" as layout />
  <@layout.siteFooter />
</body>
</html>
