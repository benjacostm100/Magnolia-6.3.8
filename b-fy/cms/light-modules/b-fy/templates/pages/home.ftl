<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>${content.title!}</title>
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
        <style>
            /* Scoped minimal enhancements */
            .gradient-text{background:linear-gradient(90deg,#f97316,#4f46e5);-webkit-background-clip:text;color:transparent}
            .card{box-shadow:0 4px 12px -2px rgba(0,0,0,.08);transition:.25s}
            .card:hover{transform:translateY(-4px);box-shadow:0 8px 20px -4px rgba(0,0,0,.12)}
        </style>
</head>
<body class="font-sans antialiased text-neutral-900">
<#-- Navegación reutilizable -->
<#import "/b-fy/templates/components/nav.ftl" as ui>
<#-- Updated component imports pointing to grouped folder (optional future use) -->
<#import "/b-fy/templates/components/home/home-hero.ftl" as heroCmp>
<#import "/b-fy/templates/components/home/home-platform.ftl" as platformCmp>
<#import "/b-fy/templates/components/home/home-industries.ftl" as industriesCmp>
<#import "/b-fy/templates/components/home/home-testimonials.ftl" as testimonialsCmp>
<#import "/b-fy/templates/components/home/home-partners.ftl" as partnersCmp>
<#import "/b-fy/templates/components/home/home-newsletter.ftl" as newsletterCmp>
<@ui.nav currentPage="home" />

<main style="margin-top:70px;">
    <@heroCmp.homeHero />

    <@platformCmp.homePlatform />

    <@industriesCmp.homeIndustries />

    <@testimonialsCmp.homeTestimonials />

    <@partnersCmp.homePartners />

    <#import "/b-fy/templates/components/cta.ftl" as cmp />
    <@cmp.callToAction />

    <@newsletterCmp.homeNewsletter />
</main>

    <#import "/b-fy/templates/components/footer.ftl" as layout />
    <@layout.siteFooter />
