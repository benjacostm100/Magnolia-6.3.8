<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${content.title!"Resources | B-FY"}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
  <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
</head>
<body class="font-sans antialiased text-neutral-900">
  <#import "/b-fy/templates/components/nav.ftl" as ui />
  <@ui.nav currentPage="resources" />
  <main style="margin-top:70px;">
    <#-- FALLBACKS -->
    <#assign fbTitle = "Resources" />
    <#assign fbDesc = "Explore technical and business resources: white papers, news, FAQs and more." />

    <#assign fbWhitePapers = {
      "title":"White Papers",
      "description":"In-depth insights into decentralized biometrics and passwordless security.",
      "items":[
        {"title":"Architecture Overview","description":"Core components & trust model."},
        {"title":"Zero Trust & Biometrics","description":"Implementing real user presence."},
        {"title":"Scaling Authentication","description":"Millions of secure transactions."}
      ]
    } />

    <#assign fbNewsroom = {
      "tagline":"Newsroom",
      "title":"Latest updates",
      "description":"Press releases, product updates and industry recognition."}
    />

    <#assign fbFaqs = [
      {"question":"Do you store biometrics?","answer":"No. Stored securely on the user's device only."},
      {"question":"Is B-FY OpenID certified?","answer":"Yes. Ensures interoperability and faster integration."},
      {"question":"Can I self-host?","answer":"Hybrid and SaaS deployment options are available."}
    ] />

    <#-- Featured Post + Posts list fallbacks -->
    <#assign fbFeaturedPost = {"title":"Decentralized biometrics explained","excerpt":"Why eliminating central biometric storage resets the security baseline.","link":"/blog/decentralized-biometrics"} />
    <#assign fbPosts = [
      {"title":"OpenID & Zero Trust","excerpt":"Standards plus real presence.","link":"/blog/openid-zero-trust"},
      {"title":"Stopping AI-driven fraud","excerpt":"Neutralizing synthetic identities.","link":"/blog/ai-fraud"},
      {"title":"Passwordless myths","excerpt":"Clarifying misconceptions.","link":"/blog/passwordless-myths"}
    ] />

    <section class="px-6 pt-32 pb-16 bg-gradient-to-br from-white to-neutral-100">
      <div class="max-w-screen-xl mx-auto">
  <h1 class="font-bold text-4xl leading-tight max-w-4xl">${content.title!fbTitle}</h1>
  <p class="mt-8 text-lg max-w-2xl leading-relaxed">${content.description!fbDesc}</p>
      </div>
    </section>

    <#-- FEATURED POST / ARTICLES -->
    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-3">
        <#-- Featured -->
        <div class="md:col-span-1 flex flex-col">
          <#assign featured = fbFeaturedPost />
          <#if content.featuredPost?has_content>
            <#assign featChildren = content.featuredPost?children />
            <#if featChildren?size gt 0><#assign featured = featChildren[0] /></#if>
          </#if>
          <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-4 h-full">
            <p class="text-xs uppercase tracking-wide text-orange-600">Featured</p>
            <h2 class="font-bold text-2xl leading-snug">${featured.title!featured["title"]!}</h2>
            <p class="text-sm leading-snug flex-1">${featured.excerpt!featured["excerpt"]!}</p>
            <a href="${featured.link!featured["link"]!}" class="text-orange-600 text-sm underline">Read more →</a>
          </div>
        </div>
        <div class="md:col-span-2 grid gap-8 md:grid-cols-2">
          <#assign postsList = fbPosts />
          <#if content.posts?has_content>
            <#assign postChildren = content.posts?children />
            <#if postChildren?size gt 0><#assign postsList = postChildren /></#if>
          </#if>
          <#list postsList as p>
            <article class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold text-lg">${p.title!p["title"]!}</h3>
              <p class="text-sm leading-snug flex-1">${p.excerpt!p["excerpt"]!}</p>
              <a href="${p.link!p["link"]!'#'}" class="text-orange-600 text-sm underline">Read more</a>
            </article>
          </#list>
        </div>
      </div>
    </section>

    <#-- WHITE PAPERS -->
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <#-- White Papers node safe extraction -->
        <#assign wpNode = fbWhitePapers />
        <#if content['white-papers']?has_content>
          <#assign wpChildren = content['white-papers']?children />
          <#if wpChildren?size gt 0>
            <#assign wpNode = wpChildren[0] />
          </#if>
        </#if>
        <h2 class="font-bold text-3xl">${wpNode.title!fbWhitePapers.title}</h2>
        <p class="mt-4 text-lg leading-relaxed max-w-prose">${wpNode.description!fbWhitePapers.description}</p>
        <div class="mt-10 grid gap-8 md:grid-cols-2 xl:grid-cols-3">
          <#assign wpItems = fbWhitePapers.items />
          <#if wpNode.items?has_content>
            <#assign wpItems = wpNode.items />
          </#if>
          <#list wpItems as w>
            <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-3">
              <h3 class="font-bold text-lg">${w.title!w["title"]!}</h3>
              <p class="text-sm leading-snug">${w.description!w["description"]!}</p>
            </div>
          </#list>
        </div>
      </div>
    </section>

    <#-- NEWSROOM -->
    <section class="px-6 py-20 bg-neutral-50">
      <div class="max-w-screen-xl mx-auto">
        <#assign newsNode = fbNewsroom />
        <#if content.newsroom?has_content>
          <#assign newsChildren = content.newsroom?children />
          <#if newsChildren?size gt 0>
            <#assign newsNode = newsChildren[0] />
          </#if>
        </#if>
        <p class="text-orange-600 uppercase tracking-wide">${newsNode.tagline!fbNewsroom.tagline}</p>
        <h2 class="mt-4 font-bold text-3xl">${newsNode.title!fbNewsroom.title}</h2>
        <p class="mt-4 text-lg leading-relaxed max-w-prose">${newsNode.description!fbNewsroom.description}</p>
      </div>
    </section>

  <#-- FAQS -->
    <section class="px-6 py-20">
      <div class="max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">FAQs</h2>
        <div class="flex flex-col gap-6">
          <#assign faqsList = fbFaqs />
          <#if content.faqs?has_content>
            <#if content.faqs?is_sequence>
              <#assign faqsList = content.faqs />
            <#else>
              <#assign _faqChildren = (content.faqs?children)![] />
              <#if _faqChildren?size gt 0><#assign faqsList = _faqChildren /></#if>
            </#if>
          </#if>
          <#list faqsList as q>
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
        <p class="uppercase">Need more material?</p>
        <h2 class="mt-5 mb-8 font-bold text-5xl">Experience the new era of authentication.</h2>
        <p class="max-w-2xl mb-16 mx-auto leading-snug">Explore documentation or request a demo for deeper technical guidance.</p>
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
