<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>${content.title!"B-FY | Passwordless Biometric Authentication"}</title>
    <meta name="description" content="${content.description!}" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <#-- TODO: Incluir hoja de estilos compilada (Tailwind/utility CSS). -->
        <#-- CSS principal del light module usando contextPath para evitar problemas de prefijos -->
    <link rel="icon" type="image/png" href="${ctx.contextPath}/.resources/b-fy/webresources/favicon.png" />
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/b-fy/webresources/styles.css" />
        <#-- Fallback temporal: activar Tailwind CDN si el archivo local aún no contiene las utilidades (quitar en producción) -->
        <script>
            // Descomenta para pruebas rápidas si no ves estilos:
            // document.write('<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@3.4.10/dist/tailwind.min.css" />');
        </script>
</head>
<body class="font-sans antialiased text-neutral-900">
<#-- Navegación reutilizable -->
<#import "/b-fy/templates/components/nav.ftl" as ui>
<@ui.nav currentPage="home" />

<main style="margin-top:70px;">
        <#-- DEFAULT FALLBACKS (se usan si el autor no cargó contenido) -->
        <#-- HERO fallbacks -->
        <#assign fallbackTagline = "Say goodbye to passwords. Say hello to security and frictionless experience." />
        <#assign fallbackTitle = "The passwordless biometric solution to authenticate people and protect their privacy" />
        <#assign fallbackDescription = "B-FY transforms authentication with its decentralized biometric identification solution. It guarantees secure, seamless experiences for users, increases customer retention, trust, and eliminates online ID fraud." />
        <#assign fallbackHook = "Identity fraud represents more than 65% of all cyberattacks. With the advent of AI, this percentage is only increasing." />

        <#-- PLATFORM fallbacks -->
        <#assign fallbackPlatform = {
            "tagline":"Authenticate the real person behind the digital identity",
            "title":"Take back control over the security of your business, your operations and your revenue",
            "description":"B-FY goes beyond passwords and tokens. It allows you to authenticate the real person behind every transaction, access or interaction — securely, in compliance with regulations, and without storing personal or biometric data.",
            "features":[
                {
                    "title":"Identify people, not data",
                    "description":"Our passwordless solution offers a secure, user-friendly and frictionless experience, eliminating the complexity of traditional identification.",
                    "link":"/platform#customer-authentication"
                },
                {
                    "title":"Secure access in any environment",
                    "description":"Put an end to all forms of online fraud, including bots, AI use, phishing and other emerging attack vectors that are causing irreparable damage to users and institutions alike.",
                    "link":"/platform#employee-authentication"
                },
                {
                    "title":"Your phone is your key",
                    "description":"With B-FY, biometrics always remain under the user's control, using native capabilities on their device to ensure secure authentication of the legitimate user.",
                    "link":"/platform#user-controlled-biometrics"
                },
                {
                    "title":"Prevents identity impersonation",
                    "description":"Effective against ATO, AI-driven fraud and phishing: strong protection against account takeover, phishing attacks, and threats driven by generative AI.",
                    "link":"/platform#ato-protection"
                },
                {
                    "title":"Privacy ensured",
                    "description":"Complies with national and European data privacy regulations using secure, offline-protected biometrics stored only on the user’s device.",
                    "link":"/platform#compliance"
                },
                {
                    "title":"Aligned with Zero Trust",
                    "description":"Decentralized biometric approach gives users full control; no centralized biometric repositories to attack or breach.",
                    "link":"/platform#decentralized-authentication"
                }
            ]
        } />

        <#-- INDUSTRIES fallbacks -->
        <#assign fallbackIndustries = {
            "tagline":"B‑FY in action",
            "title":"A solution that adapts to every sector",
            "description":"Our technology meets the demands of different industries. B‑FY protects institutions from all types of online identity fraud, including growing attack vectors such as AI, APP, ATO, and bots.",
            "items":[
                {"name":"Financial Services","description":"Stop ATO and APP threats, MFA bombing, and other attacks and data breaches with secure decentralized biometric authentication.","link":"/industries#financial"},
                {"name":"Transport & Logistics","description":"Meet sector regulations while eliminating fraud stemming from identity theft and streamlining user experience.","link":"/industries#transport"},
                {"name":"Education","description":"Protect students and staff from ransomware, data breaches and financial fraud; streamline enrollment and secure restricted areas.","link":"/industries#education"},
                {"name":"Healthcare Services","description":"Comply with HIPAA / GDPR while protecting against medical identity theft, insurance fraud and data breaches.","link":"/industries#healthcare"}
            ]
        } />

        <#-- PARTNER PROGRAM fallbacks -->
        <#assign fallbackPartnerProgram = {
            "tagline":"Discover our partner program",
            "title":"Be part of the future of omnichannel authentication",
            "description":"B-FY is looking for strategic partners: integrators, technology providers, consultants. Expand your reach, increase client value and maximize profitability with decentralized biometrics, passwordless authentication, and advanced fraud prevention.",
            "benefits":[
                "Access to cutting‑edge technology",
                "Incentive structure",
                "Technical support and specialized training",
                "Marketing materials and resources"
            ]
        } />


    <#-- Fallback Newsletter -->
        <#assign fallbackNewsletter = {
            "title": "Subscribe to our Newsletter",
            "description": "Receive the latest updates on digital identity, security and authentication innovation."
        } />

        <#-- Certificaciones fallback (usar nombres de archivos ya subidos al DAM idealmente) -->
        <#-- Si existieran rutas DAM específicas se mapearían; aquí se asume assets en webresources como fallback -->
        <#assign fallbackCertImages = [
            {"path":"/.resources/b-fy/webresources/images/iso-9001.svg", "alt":"ISO 9001"},
            {"path":"/.resources/b-fy/webresources/images/iso-iec-27001.svg", "alt":"ISO/IEC 27001"},
            {"path":"/.resources/b-fy/webresources/images/iso-iec-27701.svg", "alt":"ISO/IEC 27701"},
            {"path":"/.resources/b-fy/webresources/images/pacto-digital.webp", "alt":"Pacto Digital"},
            {"path":"/.resources/b-fy/webresources/images/incibe.webp", "alt":"INCIBE"},
            {"path":"/.resources/b-fy/webresources/images/openid.webp", "alt":"OpenID"}
        ] />

        <#-- Logos fallback -->
        <#assign fallbackLogos = [
            {"path":"/.resources/b-fy/webresources/images/logos/soldig.webp", "alt":"Soldig"},
            {"path":"/.resources/b-fy/webresources/images/logos/serban-group.webp", "alt":"Serban Group"},
            {"path":"/.resources/b-fy/webresources/images/logos/ctn-gts.webp", "alt":"CTN GTS"},
            {"path":"/.resources/b-fy/webresources/images/logos/hola-ti.webp", "alt":"Hola TI"},
            {"path":"/.resources/b-fy/webresources/images/logos/tsg.webp", "alt":"TSG"},
            {"path":"/.resources/b-fy/webresources/images/logos/qualoom.webp", "alt":"Qualoom"},
            {"path":"/.resources/b-fy/webresources/images/logos/tat-sales.webp", "alt":"TAT Sales"},
            {"path":"/.resources/b-fy/webresources/images/logos/four1.webp", "alt":"Four1"},
            {"path":"/.resources/b-fy/webresources/images/logos/asisa.webp", "alt":"Asisa"}
        ] />

                        <#-- Helper: intenta obtener un asset DAM por ruta absoluta, si no existe devuelve cadena vacía. Protegido contra ausencia de damfn. -->
                        <#function damLinkByPath path>
                                <#assign node = cmsfn.contentByPath(path, "dam")! />
                                <#if node?? && (damfn??)>
                                    <#attempt>
                                        <#return (damfn.link(node))!"" />
                                    <#recover>
                                        <#return "" />
                                    </#attempt>
                                </#if>
                                <#return "" />
                        </#function>

            <#-- Rutas DAM sugeridas para defaults (sube estos assets al DAM en /b-fy-default/...) -->
            <#assign defaultDamHeroPath = "/b-fy-default/hero" />
            <#assign damHeroLink = damLinkByPath(defaultDamHeroPath) />
    <section class="pt-32 pb-16 px-6 flex flex-col gap-12 bg-gradient-to-br from-white to-neutral-100 xl:flex-row xl:items-center xl:justify-between">
            <div class="xl:max-w-screen-md text-pretty max-xl:text-center">
                <p class="leading-snug text-orange-600 uppercase">${content.tagline!fallbackTagline}</p>
                <h1 class="mt-6 font-bold text-4xl leading-tight">${content.title!fallbackTitle}</h1>
                <p class="mt-8 mb-6 text-lg">${content.description!fallbackDescription}</p>
                <p class="mt-2 italic text-2xl text-orange-600">${content.hook!fallbackHook}</p>
                <form class="mt-10 max-w-lg mx-auto xl:mx-0">
                    <div class="flex flex-col sm:flex-row gap-4">
                        <input type="email" placeholder="Enter your email..." class="flex-1 rounded border px-4 py-3" />
                        <button class="py-3.5 px-5 rounded bg-orange-600 text-lg text-white transition-colors hover:bg-red-800 sm:shrink-0" type="submit">Request demo</button>
                    </div>
                    <p class="mt-2 pl-1 text-left text-xs">Review our privacy policy <a class="text-orange-600 underline transition-colors hover:text-red-800" href="/privacy-policy">here</a></p>
                </form>
            </div>
            <div class="relative w-fit mx-auto p-8 pb-20 px-5 sm:py-0 sm:pl-25 sm:pr-18 xl:pl-0 xl:shrink-0" aria-hidden="true">
                <div class="absolute top-0 left-0 w-64 py-3 px-2 flex items-center gap-3 rounded shadow-xl bg-white text-orange-600 sm:top-8 xl:-left-24">
                    <div class="p-3.5 border-4 rounded-full">👤</div>
                    <div>
                        <b class="text-black">Samuel</b>
                        <p class="text-xs leading-tight">Security activated</p>
                    </div>
                </div>
            <#-- Hero image from DAM if provided -->
                                                <#if content.heroImage?? && (damfn??)>
                                                    <#attempt>
                                                        <img src="${(damfn.link(content.heroImage))!""}" alt="${content.title!}" width="430" height="610" class="rounded object-cover" />
                                                    <#recover>
                                                        <img src="/.resources/b-fy/webresources/images/hero.webp" alt="${content.title!}" width="430" height="610" class="rounded object-cover" />
                                                    </#attempt>
                                                <#elseif damHeroLink?has_content>
                                                    <img src="${damHeroLink}" alt="${content.title!}" width="430" height="610" class="rounded object-cover" />
                                                <#else>
                                                    <img src="/.resources/b-fy/webresources/images/hero.webp" alt="${content.title!}" width="430" height="610" class="rounded object-cover" />
                                                </#if>
                <div class="absolute bottom-0 right-0 w-64 p-5 rounded shadow-xl bg-white text-orange-600 sm:bottom-20">
                    <p class="text-center leading-tight">System secure greeting</p>
                </div>
            </div>
        </section>

    <#-- PLATFORM SECTION (robust safe) -->
        <#-- Initialize as empty hash to safely access properties with ! fallbacks -->
        <#assign platform = {} />
        <#if content.platform??>
            <#assign _platformChildren = (content.platform?children)![] />
            <#if _platformChildren?size gt 0>
                <#assign platform = _platformChildren[0] />
            </#if>
        </#if>
    <section class="px-6 py-20 max-w-screen-xl mx-auto">
    <p class="text-orange-600 uppercase tracking-wide">${platform.tagline!fallbackPlatform.tagline}</p>
    <h2 class="mt-4 font-bold text-3xl">${platform.title!fallbackPlatform.title}</h2>
    <p class="mt-4 text-lg leading-relaxed max-w-prose">${platform.description!fallbackPlatform.description}</p>
        <div class="mt-10 grid gap-8 md:grid-cols-2 xl:grid-cols-3">
                        <#assign featureList = fallbackPlatform.features />
                        <#if platform.features?has_content>
                            <#assign featureList = platform.features />
                        </#if>
            <#list featureList as f>
                <div class="p-6 rounded border shadow-sm bg-white flex flex-col gap-4">
                    <h3 class="font-bold text-lg">${f.title!}</h3>
                    <p class="text-sm leading-snug">${f.description!}</p>
                    <#if f.link?has_content>
                        <a href="${f.link}" class="text-orange-600 text-sm underline hover:text-red-800">Read more</a>
                    </#if>
                </div>
            </#list>
        </div>
    </section>

        <#-- INDUSTRIES SECTION (robust safe) -->
        <#assign industries = {} />
        <#if content.industries??>
            <#assign _industriesChildren = (content.industries?children)![] />
            <#if _industriesChildren?size gt 0>
                <#assign industries = _industriesChildren[0] />
            </#if>
        </#if>
    <section class="px-6 py-20 bg-neutral-50">
        <div class="max-w-screen-xl mx-auto">
            <p class="text-orange-600 uppercase tracking-wide">${industries.tagline!fallbackIndustries.tagline}</p>
            <h2 class="mt-4 font-bold text-3xl">${industries.title!fallbackIndustries.title}</h2>
            <p class="mt-4 text-lg leading-relaxed max-w-prose">${industries.description!fallbackIndustries.description}</p>
            <div class="mt-10 grid gap-8 md:grid-cols-2">
                                <#assign industryItems = fallbackIndustries.items />
                                <#if industries.items?has_content>
                                    <#assign industryItems = industries.items />
                                </#if>
                <#list industryItems as it>
                    <div class="p-6 rounded border bg-white shadow-sm flex flex-col gap-4">
                        <h3 class="font-bold text-lg">${it.name!}</h3>
                        <p class="text-sm leading-snug">${it.description!}</p>
                        <#if it.link?has_content><a href="${it.link}" class="text-orange-600 text-sm underline hover:text-red-800">Read more</a></#if>
                    </div>
                </#list>
            </div>
        </div>
    </section>

    <#-- TESTIMONIALS (multi field) -->
    <#-- TESTIMONIALS with fallbacks -->
    <#assign fallbackTestimonials = [
        {"testimonial":"ATIO® Group and B-FY in 2022 started a new era in everything related to biometric identification for service stations... considerably reduces fraud...","name":"Jorge Téllez Higareda","position":"Senior Project Manager, ATIO® Group"},
        {"testimonial":"We’ve had a strategic partnership with B-FY for over two years... enhancing security and operational efficiency.","name":"David García Martín","position":"CIO & Operations Manager, Qualoom"},
        {"testimonial":"B-FY transforms digital authentication by replacing outdated credentials with human-first verification...","name":"Peter Michaud","position":"Head of Consulting and Market Intelligence, TSG"},
        {"testimonial":"HOLA TI has maintained a strategic, technological, and innovative alliance with B-FY... significantly contributing to enhanced security.","name":"Ernesto Urías","position":"Director of Development, HOLA TI"},
        {"testimonial":"With ControlGas and B-FY we’ve added a double security check... driver’s biometrics confirm each transaction.","name":"Jesús Eduardo Ambriz Palma","position":"COO, CTN (ATIO® Group – ControlGas distributor)"},
        {"testimonial":"It is vital to ensure that all data is securely stored and only the right people have access. B-FY lets us meet this objective.","name":"Oscar Maqueda","position":"Communications Director, Madrid Golf Federation"},
        {"testimonial":"As soon as we discovered B-FY’s Identity-as-a-Service solution, we saw great potential and synergies via partnership.","name":"Juan Pablo Yagüe","position":"Former Global Strategic Alliances Lead, Serban Group"},
        {"testimonial":"B-FY is an efficient and effective answer to credential theft – 100% biometric and secure.","name":"Fernando Thompson","position":"CEO & Co-Founder, SOLDIG"}
    ] />
    <section class="px-6 py-20 max-w-screen-xl mx-auto">
        <h2 class="font-bold text-3xl mb-10">Testimonials</h2>
        <div class="grid gap-8 md:grid-cols-2 xl:grid-cols-3">
                        <#assign testimonialList = fallbackTestimonials />
                        <#if content.testimonials?has_content>
                            <#assign _testChildren = (content.testimonials?children)![] />
                            <#if _testChildren?size gt 0>
                                <#assign testimonialList = _testChildren />
                            </#if>
                        </#if>
            <#list testimonialList as t>
                <blockquote class="p-6 rounded border bg-white shadow-sm flex flex-col gap-4">
                    <div class="text-sm leading-relaxed">${t.testimonial!}</div>
                    <footer class="text-xs text-neutral-600">
                        <strong>${t.name!}</strong><br />
                        <em>${t.position!}</em>
                    </footer>
                </blockquote>
            </#list>
        </div>
    </section>

        <#-- PARTNERS SECTION (robust safe) -->
        <#assign partners = {} />
        <#if content.partners??>
            <#assign _partnersChildren = (content.partners?children)![] />
            <#if _partnersChildren?size gt 0>
                <#assign partners = _partnersChildren[0] />
            </#if>
        </#if>
    <section class="px-6 py-20 bg-neutral-50">
        <div class="max-w-screen-xl mx-auto">
            <p class="text-orange-600 uppercase tracking-wide">${partners.tagline!fallbackPartnerProgram.tagline}</p>
            <h2 class="mt-4 font-bold text-3xl">${partners.title!fallbackPartnerProgram.title}</h2>
            <p class="mt-4 text-lg leading-relaxed max-w-prose">${partners.description!fallbackPartnerProgram.description}</p>
            <ul class="mt-8 grid gap-6 md:grid-cols-2">
                                <#assign partnerBenefits = [] />
                                <#if partners.benefits?has_content>
                                    <#assign partnerBenefits = partners.benefits />
                                </#if>
                <#if !partnerBenefits?has_content>
                    <#assign partnerBenefits = [] />
                </#if>
                <#if !partnerBenefits?has_content>
                    <#list fallbackPartnerProgram.benefits as fb>
                        <li class="flex items-start gap-4">
                            <div class="w-10 h-10 rounded bg-orange-100 flex items-center justify-center text-orange-600">★</div>
                            <p class="leading-snug">${fb}</p>
                        </li>
                    </#list>
                <#else>
                    <#list partnerBenefits as b>
                        <li class="flex items-start gap-4">
                            <div class="w-10 h-10 rounded bg-orange-100 flex items-center justify-center text-orange-600">★</div>
                            <p class="leading-snug">${b.description!}</p>
                        </li>
                    </#list>
                </#if>
            </ul>
        </div>
    </section>

    <#-- CALL TO ACTION (universal component) -->
    <#import "/b-fy/templates/components/cta.ftl" as cmp />
    <@cmp.callToAction 
        tagline="Experience the new era of authentication." 
        title="Discover how B-FY can transform your company’s security." 
        description="Request a demo or contact us for more information." 
        primaryButtonLabel="Get a demo" 
        primaryButtonLink="/contact" 
        secondaryButtonLabel="Contact us" 
        secondaryButtonLink="/contact" />

        <#-- NEWSLETTER -->
            <#assign newsletter = {} />
            <#if content.newsletter??>
                <#assign _newsletterChildren = (content.newsletter?children)![] />
                <#if _newsletterChildren?size gt 0>
                    <#assign newsletter = _newsletterChildren[0] />
                </#if>
            </#if>
        <#if newsletter??>
        <section class="px-6 py-16 bg-neutral-900 text-white text-center">
                <h3 class="font-semibold text-2xl mb-4">${newsletter.title!"Subscribe to our newsletter"}</h3>
                <p class="max-w-xl mx-auto mb-8 leading-relaxed">${newsletter.description!}</p>
                <form class="max-w-md mx-auto flex flex-col sm:flex-row gap-4" method="post" action="/newsletter">
                        <input type="email" name="email" placeholder="Email" required class="flex-1 rounded px-4 py-3 text-neutral-900" />
                        <button class="bg-orange-600 hover:bg-red-700 px-6 py-3 rounded font-medium">Subscribe</button>
                </form>
        </section>
        </#if>
        <#if !newsletter??>
        <section class="px-6 py-16 bg-neutral-900 text-white text-center">
            <h3 class="font-semibold text-2xl mb-4">${fallbackNewsletter.title}</h3>
            <p class="max-w-xl mx-auto mb-8 leading-relaxed">${fallbackNewsletter.description}</p>
            <form class="max-w-md mx-auto flex flex-col sm:flex-row gap-4" method="post" action="/newsletter">
                <input type="email" name="email" placeholder="Email" required class="flex-1 rounded px-4 py-3 text-neutral-900" />
                <button class="bg-orange-600 hover:bg-red-700 px-6 py-3 rounded font-medium">Subscribe</button>
            </form>
        </section>
        </#if>

        <#-- CERTIFICATIONS -->
        <#if content.certifications?has_content>
        <section class="px-6 py-14 bg-neutral-50">
            <div class="max-w-screen-xl mx-auto flex flex-wrap justify-center gap-10 items-center">
                <#list content.certifications as cert>
                    <div class="flex flex-col items-center gap-2">
                        <img src="${damfn.link(cert.image)}" alt="${cert.alt!}" class="h-16 object-contain" />
                        <#if cert.alt?has_content><span class="text-xs text-neutral-500">${cert.alt}</span></#if>
                    </div>
                </#list>
            </div>
        </section>
            </#if>
            <#if !content.certifications?has_content>
            <section class="px-6 py-14 bg-neutral-50">
                <div class="max-w-screen-xl mx-auto flex flex-wrap justify-center gap-10 items-center">
                    <#list fallbackCertImages as cert>
                        <div class="flex items-center justify-center">
                            <img src="${cert.path}" alt="${cert.alt}" class="h-16 object-contain" />
                        </div>
                    </#list>
                </div>
            </section>
            </#if>

        <#-- LOGOS -->
        <#if content.logos?has_content>
        <section class="px-6 py-14">
            <div class="max-w-screen-xl mx-auto grid gap-10 grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 items-center">
                <#list content.logos as l>
                    <div class="flex items-center justify-center opacity-70 hover:opacity-100 transition-opacity">
                        <img src="${damfn.link(l.logo)}" alt="${l.alt!}" class="max-h-12 object-contain" />
                    </div>
                </#list>
            </div>
        </section>
            </#if>
            <#if !content.logos?has_content>
            <section class="px-6 py-14">
                <div class="max-w-screen-xl mx-auto grid gap-10 grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 items-center">
                    <#list fallbackLogos as l>
                        <div class="flex items-center justify-center opacity-70 hover:opacity-100 transition-opacity">
                            <img src="${l.path}" alt="${l.alt}" class="max-h-12 object-contain" />
                        </div>
                    </#list>
                </div>
            </section>
            </#if>
  </main>

    <#import "/b-fy/templates/components/footer.ftl" as layout />
    <@layout.siteFooter />
</body>
</html>
