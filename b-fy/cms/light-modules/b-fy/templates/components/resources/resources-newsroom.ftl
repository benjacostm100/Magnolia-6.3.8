<#-- Resources Newsroom Component -->
<#macro resourcesNewsroom>
<#assign pressReleases = [
  {
    "title": "B‑FY passwordless biometric solution: a real gamechanger in the fight against Cybercrime",
    "date": "September 18, 2024",
    "formats": ["WORD", "PDF"]
  },
  {
    "title": "B‑FY's revolutionary solution against cybercrime, a huge success in Washington ID Week",
    "date": "September 16, 2024", 
    "formats": ["WORD", "PDF"]
  },
  {
    "title": "B‑FY introduces revolutionary solution to terminate Online ID Fraud and Cybercrime",
    "date": "September 9, 2024",
    "formats": ["WORD", "PDF"]
  },
  {
    "title": "B‑FY presents its universal solution to Online ID Fraud in Washington DC",
    "date": "September 4, 2024",
    "formats": ["WORD", "PDF"]
  },
  {
    "title": "B‑FY the biometric solution that stops Cybercrime",
    "date": "June 11, 2024",
    "formats": ["WORD", "PDF"]
  }
] />

<section class="py-20 px-5 sm:px-10 lg:px-13" id="newsroom">
  <div class="text-center">
    <hgroup>
      <p class="py-2.5 px-5 inline-block rounded bg-orange-600 leading-none text-white uppercase xl:text-xl">
        Newsroom
      </p>
      <h2 class="my-7 font-bold text-3xl xl:text-5xl">Essential resources to communicate about B-FY</h2>
    </hgroup>
    <p class="max-w-5xl mx-auto text-lg xl:text-xl/snug">
      If you're a journalist or content creator, here you'll find key information to report on our technology, event participation, and more.
    </p>
  </div>
  
  <div class="mt-15">
    <div class="flex justify-center gap-6 mb-10">
      <button class="py-2 px-4 rounded bg-orange-600 text-white">Press releases</button>
      <button class="py-2 px-4 rounded bg-gray-100 text-gray-700 hover:bg-gray-200">Visual assets</button>
    </div>
    
    <div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      <#list pressReleases as release>
        <article class="p-6 border border-gray-200 rounded-lg">
          <p class="text-sm text-gray-500 mb-2">${release.date}</p>
          <h3 class="font-bold text-lg mb-4">${release.title}</h3>
          <div class="flex gap-3">
            <#list release.formats as format>
              <a class="py-1.5 px-3 text-sm bg-orange-600 text-white rounded hover:bg-red-800 transition-colors"
                 href="${ctx.contextPath}/downloads/press-release-${release?index + 1}-${format?lower_case}.${format?lower_case}"
                 download>
                ${format}
              </a>
            </#list>
          </div>
        </article>
      </#list>
    </div>
    
    <div class="text-center mt-10">
      <a class="py-2.5 px-5 inline-block rounded bg-orange-600 text-xl text-white transitions-colors hover:bg-red-800"
         href="${ctx.contextPath}/newsroom">
        View more
      </a>
    </div>
  </div>
</section>
</#macro>
