<#-- Resources FAQs Component -->
<#macro resourcesFAQs>
<section class="pt-15 pb-18 px-5 bg-neutral-200 sm:px-10 lg:px-13" id="faqs">
  <hgroup>
    <p class="w-fit mx-auto py-2.5 px-5 rounded bg-orange-600 leading-none text-white uppercase xl:text-xl">
      FAQs
    </p>
    <h2 class="mt-9 mb-5 mx-auto font-bold text-3xl text-center xl:text-5xl">
      Frequently asked questions
    </h2>
  </hgroup>
  <p class="max-w-200 mx-auto mb-12 text-center text-lg xl:text-xl/snug">
    Didn't we clear up your doubts? <a href="${ctx.contextPath}/contact" class="text-orange-600 underline underline-offset-2 hover:text-red-800">Write to us here</a>
  </p>
  
  <div class="max-w-236 mx-auto grid gap-3">
    <details class="group rounded bg-white">
      <summary class="flex cursor-pointer py-6 px-8 font-bold">
        <span>What is B-FY's authentication technology?</span>
      </summary>
      <p class="px-8 pb-6 text-sm/snug">
        B-FY provides a revolutionary biometric authentication platform that verifies human identity without relying on passwords, OTPs, or traditional 2FA methods. Our technology authenticates the person, not just their credentials.
      </p>
    </details>
    
    <details class="group rounded bg-white">
      <summary class="flex cursor-pointer py-6 px-8 font-bold">
        <span>How does B-FY prevent identity fraud?</span>
      </summary>
      <p class="px-8 pb-6 text-sm/snug">
        B-FY uses decentralized biometric authentication that cannot be stolen, hacked, or replicated. Each authentication is unique and tied to the physical presence of the individual, making identity fraud virtually impossible.
      </p>
    </details>
    
    <details class="group rounded bg-white">
      <summary class="flex cursor-pointer py-6 px-8 font-bold">
        <span>Is B-FY compliant with privacy regulations?</span>
      </summary>
      <p class="px-8 pb-6 text-sm/snug">
        Yes, B-FY is fully compliant with major privacy regulations including GDPR, CCPA, and other international standards. Our decentralized approach ensures user privacy while maintaining the highest security standards.
      </p>
    </details>
  </div>
</section>
</#macro>
