<#-- Resources Featured Post Component -->
<#macro resourcesFeatured>
<section class="mt-20 mb-10 p-5 sm:p-10 lg:px-13" id="blog">
  <article class="grid gap-10 text-lg/none md:grid-cols-[2fr_3fr] lg:grid-cols-2 lg:items-center lg:gap-13 xl:grid-cols-[4fr_3fr]">
    <img class="size-full object-cover rounded-lg" 
         src="${ctx.contextPath}/.resources/b-fy/webresources/images/hidden-costs-identity-fraud-avoid.webp" 
         alt="The hidden costs of identity fraud and how to avoid them"
         loading="eager" />
    <div class="text-pretty">
      <hgroup>
        <p class="w-fit py-2.5 px-5 rounded bg-orange-600 text-white uppercase xl:text-xl">
          Featured post of the month
        </p>
        <h2 class="mt-7 mb-5 font-bold text-3xl">The hidden costs of identity fraud and how to avoid them</h2>
      </hgroup>
      <p class="mb-8 leading-snug">Identity fraud doesn't just leave visible marks on the financial statement, but it also brings a series of hidden costs that can be equally devastating. These costs range from the time spent resolving the issue to the irreversible damage to a company's reputation.</p>
      <a class="py-2.5 px-5 inline-block rounded ring ring-inset text-orange-600 transition-colors hover:text-red-800"
         href="${ctx.contextPath}/blog/hidden-costs-identity-fraud">
        Discover more
      </a>
    </div>
  </article>
</section>
</#macro>
