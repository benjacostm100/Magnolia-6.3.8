<#-- Resources White Papers Component -->
<#macro resourcesWhitePapers>
<section class="pt-13 pb-15 px-5 bg-linear-180 from-red-50 to-red-100 text-pretty sm:px-10 lg:px-13" id="white-papers">
  <div class="mb-20 text-center">
    <hgroup>
      <p class="py-2.5 px-5 inline-block rounded bg-orange-600 leading-none text-white uppercase xl:text-xl">
        White Papers
      </p>
      <h2 class="mt-7 mb-5 font-bold text-3xl xl:text-4xl">Expert knowledge at your fingertips</h2>
    </hgroup>
    <p class="max-w-4xl mx-auto text-lg xl:text-xl/snug">
      Explore our technical reports and studies. Access detailed documents and download them to dive deeper into all that B-FY has to offer.
    </p>
  </div>
  
  <div class="grid gap-y-15 gap-x-10 sm:grid-cols-2 lg:grid-cols-3">
    <article class="flex flex-col">
      <img class="w-full aspect-3/2 object-cover mb-8 rounded-lg"
           src="${ctx.contextPath}/.resources/b-fy/webresources/images/idaas.webp"
           alt="Identity as a Service (IDaaS)" />
      <h3 class="font-bold text-xl/tight text-orange-600 uppercase">Identity as a Service (IDaaS)</h3>
      <p class="mt-3 mb-6 text-lg">A new way of verifying identity is helping organizations truly authenticate people instead of simply "matching" certain elements the user supposedly owns or knows.</p>
      
      <div class="mt-auto">
        <button class="w-full py-3 px-5 rounded bg-orange-600 text-white font-semibold hover:bg-red-800 transition-colors"
                onclick="openDownloadModal('Identity as a Service (IDaaS)')">
          Download document
        </button>
      </div>
    </article>
    
    <article class="flex flex-col">
      <img class="w-full aspect-3/2 object-cover mb-8 rounded-lg"
           src="${ctx.contextPath}/.resources/b-fy/webresources/images/embracing-new-identification.webp"
           alt="Entering a new era of identification" />
      <h3 class="font-bold text-xl/tight text-orange-600 uppercase">Entering a new era of identification</h3>
      <p class="mt-3 mb-6 text-lg">The reality is that, until now, people have never truly been authenticated. We've been granting access to individuals without really knowing who they are.</p>
      
      <div class="mt-auto">
        <button class="w-full py-3 px-5 rounded bg-orange-600 text-white font-semibold hover:bg-red-800 transition-colors"
                onclick="openDownloadModal('Entering a new era of identification')">
          Download document
        </button>
      </div>
    </article>
    
    <article class="flex flex-col">
      <img class="w-full aspect-3/2 object-cover mb-8 rounded-lg"
           src="${ctx.contextPath}/.resources/b-fy/webresources/images/protect-company.webp"
           alt="Protect your business with B-FY" />
      <h3 class="font-bold text-xl/tight text-orange-600 uppercase">Protect your business with B-FY</h3>
      <p class="mt-3 mb-6 text-lg">B-FY has changed the access protocol used without success for many years. Instead of comparing identity data, B-FY protects the transaction by authenticating the person requesting access, making hacking, impersonation, or physical access through identity fraud impossible.</p>
      
      <div class="mt-auto">
        <button class="w-full py-3 px-5 rounded bg-orange-600 text-white font-semibold hover:bg-red-800 transition-colors"
                onclick="openDownloadModal('Protect your business with B-FY')">
          Download document
        </button>
      </div>
    </article>
  </div>
</section>

<div id="download-modal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
  <div class="flex items-center justify-center min-h-screen p-4">
    <div class="bg-white rounded-lg p-8 max-w-md w-full">
      <div class="flex justify-between items-center mb-6">
        <h3 class="text-xl font-bold" id="modal-title">Download White Paper</h3>
        <button onclick="closeDownloadModal()" class="text-gray-500 hover:text-gray-700">
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
          </svg>
        </button>
      </div>
      
      <form class="space-y-4">
        <div class="grid grid-cols-2 gap-4">
          <input type="text" placeholder="First name" required class="p-3 border border-gray-300 rounded">
          <input type="text" placeholder="Last name" required class="p-3 border border-gray-300 rounded">
        </div>
        <input type="text" placeholder="Company" required class="w-full p-3 border border-gray-300 rounded">
        <input type="text" placeholder="Job title" required class="w-full p-3 border border-gray-300 rounded">
        <input type="email" placeholder="Corporate email" required class="w-full p-3 border border-gray-300 rounded">
        <input type="url" placeholder="Company website" required class="w-full p-3 border border-gray-300 rounded">
        
        <p class="text-sm text-red-800">* Required fields</p>
        
        <div class="space-y-2">
          <label class="flex items-start gap-2">
            <input type="checkbox" required class="mt-1">
            <span class="text-sm">I accept the privacy policy and legal notice</span>
          </label>
          <label class="flex items-start gap-2">
            <input type="checkbox" class="mt-1">
            <span class="text-sm">I want to be contacted by email</span>
          </label>
          <label class="flex items-start gap-2">
            <input type="checkbox" class="mt-1">
            <span class="text-sm">Subscribe to updates</span>
          </label>
        </div>
        
        <button type="submit" class="w-full py-3 px-5 bg-orange-600 text-white rounded font-semibold hover:bg-red-800 transition-colors">
          Download document
        </button>
      </form>
    </div>
  </div>
</div>

<script>
function openDownloadModal(title) {
  document.getElementById('modal-title').textContent = 'Download: ' + title;
  document.getElementById('download-modal').classList.remove('hidden');
  document.body.style.overflow = 'hidden';
}

function closeDownloadModal() {
  document.getElementById('download-modal').classList.add('hidden');
  document.body.style.overflow = 'auto';
}

// Close modal when clicking outside
document.getElementById('download-modal').addEventListener('click', function(e) {
  if (e.target === this) {
    closeDownloadModal();
  }
});
</script>
</#macro>
