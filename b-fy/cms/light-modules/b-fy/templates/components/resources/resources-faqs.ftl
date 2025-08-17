<#-- Resources FAQs Component -->
<#macro resourcesFAQs>
<section class="py-20 px-5 sm:px-10 lg:px-13 bg-gray-50">
  <div class="max-w-4xl mx-auto">
    <div class="text-center mb-15">
      <h2 class="font-bold text-3xl xl:text-4xl mb-4">Frequently asked questions</h2>
      <p class="text-lg">Didn't we clear up your doubts? <a href="${ctx.contextPath}/contact" class="text-orange-600 underline">Write to us here</a></p>
    </div>
    
    <div class="space-y-6">
      <div class="border border-gray-200 rounded-lg">
        <button class="w-full p-6 text-left font-semibold flex justify-between items-center hover:bg-gray-50"
                onclick="toggleFAQ(this)">
          <span>What is B-FY's authentication technology?</span>
          <span class="transform transition-transform duration-200">+</span>
        </button>
        <div class="hidden p-6 pt-0 text-gray-700">
          <p>B-FY provides a revolutionary biometric authentication platform that verifies human identity without relying on passwords, OTPs, or traditional 2FA methods. Our technology authenticates the person, not just their credentials.</p>
        </div>
      </div>
      
      <div class="border border-gray-200 rounded-lg">
        <button class="w-full p-6 text-left font-semibold flex justify-between items-center hover:bg-gray-50"
                onclick="toggleFAQ(this)">
          <span>How does B-FY prevent identity fraud?</span>
          <span class="transform transition-transform duration-200">+</span>
        </button>
        <div class="hidden p-6 pt-0 text-gray-700">
          <p>B-FY uses decentralized biometric authentication that cannot be stolen, hacked, or replicated. Each authentication is unique and tied to the physical presence of the individual, making identity fraud virtually impossible.</p>
        </div>
      </div>
      
      <div class="border border-gray-200 rounded-lg">
        <button class="w-full p-6 text-left font-semibold flex justify-between items-center hover:bg-gray-50"
                onclick="toggleFAQ(this)">
          <span>Is B-FY compliant with privacy regulations?</span>
          <span class="transform transition-transform duration-200">+</span>
        </button>
        <div class="hidden p-6 pt-0 text-gray-700">
          <p>Yes, B-FY is fully compliant with major privacy regulations including GDPR, CCPA, and other international standards. Our decentralized approach ensures user privacy while maintaining the highest security standards.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
function toggleFAQ(button) {
  const content = button.nextElementSibling;
  const icon = button.querySelector('span:last-child');
  
  if (content.classList.contains('hidden')) {
    content.classList.remove('hidden');
    icon.style.transform = 'rotate(45deg)';
  } else {
    content.classList.add('hidden');
    icon.style.transform = 'rotate(0deg)';
  }
}
</script>
</#macro>
