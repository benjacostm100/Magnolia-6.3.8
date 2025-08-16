<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"About Us | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="about-us" />
  <main style="margin-top:70px;">
    <#-- SAFE HELPERS -->
    <#function firstChild nodeName>
      <#if (content[nodeName])??>
        <#assign children = (content[nodeName]?children)![] />
        <#if children?size gt 0><#return children[0] /></#if>
      </#if>
      <#return {} />
    </#function>

    <#-- FALLBACK DATA -->
    <#assign fbHeroTitle = "The end of online anonymity begins with B‑FY" />
    <#assign fbHeroDesc = "B-FY changes the access protocol without the need for passwords, passkeys, or online biometrics. B-FY grants access only to identified individuals who cannot be impersonated or hacked, ensuring that both online and physical access are fully secure." />

    <#assign fbMsgTagline = "We authenticate legitimate users, not digital identities." />
    <#assign fbMsgTitle = "At B-FY, we have been developing technology for over 18 years to solve a critical problem: the inability to know who is truly behind a digital transaction." />
    <#assign fbMsgContent = "Our goal is clear: to eliminate online anonymity and eradicate identity fraud." />

    <#assign fbBecauseTitle = "Because current systems fail." />
    <#assign fbBecauseDesc = "Digital access is still granted to spoofable identities, not to real people. Passwords, personal data, and tokens can be stolen. As long as anonymity exists, fraud will persist. B-FY was born to change that paradigm." />

    <#assign fbIdentityTitle = "One identity, one person. Just one." />
    <#assign fbIdentityDesc = "Each access should be unequivocally linked to an authentic human being. No passwords. No vulnerable databases. Authentication must mean real presence, not just data matching." />

    <#assign fbTechTitle = "With advanced technology and firm principles." />
    <#assign fbTechDesc = "B-FY works with the user’s mobile phone, their biometrics, and an encrypted private key. Passwordless, privacy-preserving, and ethical." />

    <#assign fbRedefTitle = "Redefining the access protocol." />
    <#assign fbRedefDesc = "We envision a future where organizations know with certainty who is accessing — frictionlessly and fraud-free. That future starts now." />

    <#assign fbFounderTitle = "Message from our founder" />
    <#assign fbFounderSub = "B-FY, the universal breakthrough" />
    <#assign fbFounderBody = "B-FY stops online ID fraud/cybercrime, without needing passwords, passkeys, online biometrics, or multifactor identities. Online ID fraud can never be stopped when continued access is given to identified identities instead of humans... (truncated)" />

    <#assign fbCompanyTitle = "Our company" />
    <#assign fbCompanyBody = "B-FY has changed the access protocol... We’re not just innovating in technology: we’re redefining digital and physical trust." />

    <#assign fbCountries = ["Mexico","Colombia","Peru","Chile","Argentina","Spain"] />

    <#assign fbMissionTitle = "Mission" />
    <#assign fbMissionDesc = "Authenticate legitimate users, eliminate fraud, and protect privacy by ensuring only real individuals gain access." />

    <#assign fbVisionTitle = "Vision" />
    <#assign fbVisionDesc = "Become the global benchmark access protocol by eliminating online anonymity and eradicating identity fraud." />

    <#assign fbValuesTitle = "Values" />
    <#assign fbValues = [
      {"name":"Authenticity","description":"Identify real people, not impersonal data."},
      {"name":"Privacy","description":"Protecting personal information is essential for trust."},
      {"name":"Passwordless architecture","description":"Fraud-resistant: no passwords, no anonymity, no impersonation."},
      {"name":"Transparency","description":"Only the right person gets access; every action has an owner."},
      {"name":"Continuous innovation","description":"18+ years of R&D anticipating future threats."},
      {"name":"User empowerment","description":"Decentralized biometric solution centered on user control."}
    ] />

    <#-- HERO WITH OPTIONAL IMAGE -->
    <section class="px-6 pt-32 pb-16 bg-gradient-to-br from-white to-neutral-100">
      <div class="max-w-screen-xl mx-auto grid gap-10 md:grid-cols-2 items-center">
        <div>
          <h1 class="font-bold text-4xl leading-tight max-w-5xl">${content.title!fbHeroTitle}</h1>
          <p class="mt-8 text-lg max-w-2xl leading-relaxed">${content.description!fbHeroDesc}</p>
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

    <#-- CAROUSEL (simple horizontal scroll) -->
    <#assign fbCarousel = [
      {"title":"18+ years of R&D","description":"Continuous innovation anticipating threats."},
      {"title":"Global presence","description":"Teams and clients across multiple regions."},
      {"title":"Security & Privacy","description":"Architecture that preserves biometric privacy."}
    ] />
    <#assign carouselItems = fbCarousel />
    <#if content.carousel?has_content>
      <#assign carChildren = content.carousel?children />
      <#if carChildren?size gt 0><#assign carouselItems = carChildren /></#if>
    </#if>
    <section class="px-6 py-12 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <div class="flex gap-6 overflow-x-auto snap-x pb-4" style="scrollbar-width:none;">
          <#list carouselItems as cItem>
            <div class="min-w-[260px] snap-start p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold text-lg">${cItem.title!cItem['title']!}</h3>
              <p class="text-sm leading-snug">${cItem.description!cItem['description']!}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <#-- MESSAGE BLOCK -->
    <#assign msg = firstChild("message") />
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-2">
        <div>
          <p class="text-orange-600 uppercase tracking-wide">${msg.tagline!fbMsgTagline}</p>
          <h2 class="mt-4 font-bold text-3xl leading-snug">${msg.title!fbMsgTitle}</h2>
          <p class="mt-6 text-lg leading-relaxed">${msg.content!fbMsgContent}</p>
        </div>
        <div class="flex flex-col gap-10 text-lg leading-relaxed">
          <div>
            <h3 class="font-bold text-xl mb-3">${fbBecauseTitle}</h3>
            <p class="text-sm leading-snug">${fbBecauseDesc}</p>
          </div>
          <div>
            <h3 class="font-bold text-xl mb-3">${fbIdentityTitle}</h3>
            <p class="text-sm leading-snug">${fbIdentityDesc}</p>
          </div>
          <div>
            <h3 class="font-bold text-xl mb-3">${fbTechTitle}</h3>
            <p class="text-sm leading-snug">${fbTechDesc}</p>
          </div>
          <div>
            <h3 class="font-bold text-xl mb-3">${fbRedefTitle}</h3>
            <p class="text-sm leading-snug">${fbRedefDesc}</p>
          </div>
        </div>
      </div>
    </section>

    <#-- FOUNDER MESSAGE -->
    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-4">${fbFounderTitle}</h2>
        <h3 class="font-bold text-xl mb-6">${fbFounderSub}</h3>
        <p class="text-sm leading-relaxed max-w-5xl">${fbFounderBody}</p>
      </div>
    </section>

    <#-- COMPANY DETAILS -->
    <#assign details = firstChild("details") />
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-2">
        <div>
          <h2 class="font-bold text-3xl mb-6">${details.title!fbCompanyTitle}</h2>
          <p class="text-sm leading-relaxed">${details.description!fbCompanyBody}</p>
          <div class="mt-8 flex flex-wrap gap-4 text-sm text-orange-600 font-medium">
            <#assign countries = fbCountries />
            <#if details.countries?has_content>
              <#assign countries = details.countries />
            </#if>
            <#list countries as c>
              <span>${c}</span><#if c_has_next><span class="text-neutral-400">|</span></#if>
            </#list>
          </div>
        </div>
        <div class="rounded border p-6 bg-white shadow-sm text-sm leading-relaxed">
          <p><strong>B-FY</strong> has changed the access protocol for authenticating all human beings... (overview)</p>
          <p class="mt-4">We were born with a firm conviction: real security is only possible when we know with certainty who is behind any digital credential.</p>
        </div>
      </div>
    </section>

    <#-- MISSION / VISION -->
    <#assign mission = firstChild("mission") />
    <#assign vision = firstChild("vision") />
    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-2">
        <div>
          <p class="text-orange-600 uppercase tracking-wide">Mission</p>
          <h2 class="mt-4 font-bold text-3xl">${mission.title!fbMissionTitle}</h2>
          <p class="mt-6 text-sm leading-relaxed">${mission.description!fbMissionDesc}</p>
        </div>
        <div>
          <p class="text-orange-600 uppercase tracking-wide">Vision</p>
            <h2 class="mt-4 font-bold text-3xl">${vision.title!fbVisionTitle}</h2>
            <p class="mt-6 text-sm leading-relaxed">${vision.description!fbVisionDesc}</p>
        </div>
      </div>
    </section>

    <#-- VALUES -->
    <#assign valuesNode = firstChild("values") />
    <#assign valuesList = fbValues />
    <#if valuesNode.list?has_content>
      <#assign valuesList = valuesNode.list />
    </#if>
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">${valuesNode.title!fbValuesTitle}</h2>
        <div class="grid gap-8 md:grid-cols-2 xl:grid-cols-3">
          <#list valuesList as v>
            <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold">${v.name!}</h3>
              <p class="text-sm leading-snug">${v.description!}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <#-- CTA (reuse from home fallback style) -->
    <section class="relative px-5 sm:px-10 lg:px-13 pt-24 pb-20 text-center text-white text-lg xl:text-xl overflow-hidden">
      <div class="relative z-10 max-w-5xl mx-auto">
        <p class="uppercase">What are you waiting for?</p>
        <h2 class="mt-5 mb-8 font-bold text-5xl">Experience the new era of authentication.</h2>
        <p class="max-w-2xl mb-16 mx-auto leading-snug">Discover how B-FY can transform your company’s security. Request a demo or contact us for more information.</p>
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
