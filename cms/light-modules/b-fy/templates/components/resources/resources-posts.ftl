<#-- Resources Posts Component -->
<#import "/b-fy/templates/components/util/icons.ftl" as icons>

<#macro resourcesPosts>
<#assign blogPosts = [
  {
    "title": "Cybersecurity trends: an evolving landscape",
    "description": "Digital acceleration and the proliferation of cyber threats have redefined business priorities in security. In 2025, cybersecurity is set to become a critical element not only for protecting data but also for ensuring customer trust and operational continuity.",
    "category": "cybersecurity",
    "slug": "cybersecurity-trends-2025"
  },
  {
    "title": "Identity verification, a growing challenge", 
    "description": "In an increasingly complex digital environment, human identity verification and cybersecurity are essential to protect users and businesses from emerging threats. Looking towards 2025, technologies such as biometrics, artificial intelligence, and quantum computing will redefine online security.",
    "category": "biometrics",
    "slug": "identity-verification-challenge"
  },
  {
    "title": "Identity fraud: a growing threat",
    "description": "As identity fraud becomes increasingly sophisticated, organizations and individuals must be more vigilant than ever in safeguarding their data. With a rise in AI‑driven attacks and deepfakes, financial losses and digital security risks continue to escalate.",
    "category": "cybersecurity", 
    "slug": "identity-fraud-growing-threat"
  },
  {
    "title": "Human authentication: a revolutionary approach to data protection",
    "description": "Human authentication, driven by biometric technologies, is transforming digital security by offering a safer and more efficient solution to the risks posed by traditional passwords. In this context, B-FY stands out as a leader, developing an innovative technology that protects data without compromising user privacy.",
    "category": "biometrics",
    "slug": "human-authentication-revolutionary"
  },
  {
    "title": "B‑FY consolidates its presence worldwide", 
    "description": "B‑FY's solution has already proven its effectiveness in various sectors, including healthcare, banking logistics, and events, among others, in countries like Spain and Mexico. By launching its solution in the US market, B‑FY consolidates its worldwide presence and reinforces its commitment to the battle against cybercrime and identity fraud.",
    "category": "regulation",
    "slug": "bfy-consolidates-presence-worldwide"
  },
  {
    "title": "How B‑FY's human authentication transforms the traveler experience",
    "description": "The tourism industry is at the forefront of technological innovation, transforming both traveler experiences and resource management. Today, advancements such as artificial intelligence (AI), augmented reality, and biometric human authentication solutions like those offered by B‑FY are revolutionizing the interaction between travelers and service providers.",
    "category": "biometrics",
    "slug": "bfy-transforms-traveler-experience"
  },
  {
    "title": "Cybersecurity moves toward a passwordless future with B‑FY's approach",
    "description": "In an increasingly threatened digital world, companies are seeking alternatives to eliminate one of the most vulnerable elements of their systems: passwords. Through a strategy centered on biometric authentication and a passwordless approach, B‑FY aims to eliminate risks associated with stolen or compromised credentials.",
    "category": "cybersecurity",
    "slug": "passwordless-future-bfy-approach"
  },
  {
    "title": "B‑FY enters the U.S. market",
    "description": "After its successful global launch in Amsterdam, B‑FY will present its innovative Authentication as a Service (AaaS) tool at Identity Week in Washington DC. With this move, B-FY consolidates its international presence and reinforces its commitment to combating cybercrime and identity fraud.",
    "category": "regulation",
    "slug": "bfy-enters-us-market"
  },
  {
    "title": "B‑FY Introduces Revolutionary Solution to Terminate Online ID Fraud and Cybercrime",
    "description": "B‑FY's technology provides a foolproof method to identify real operators behind online transactions, ensuring 100% secure interactions. It is a solution designed for easy integration with existing cybersecurity and 2FA systems, offering a potential revenue of $145 billion annually by addressing cybercrime losses.",
    "category": "cybersecurity",
    "slug": "bfy-revolutionary-solution-terminate-fraud"
  }
] />

<div class="px-5 sm:px-10 lg:px-13">
  <div class="mt-20 mb-15 flex justify-between gap-8 sm:mt-25 sm:mb-20">
    <h2 class="font-bold text-3xl/none">Other posts</h2>
    <div class="flex items-center gap-4">
      <svg class="w-5" fill="currentColor" viewBox="0 0 24 24">
        <path d="M10 18h4v-2h-4v2zM3 6v2h18V6H3zm3 7h12v-2H6v2z"/>
      </svg>
      <div class="flex gap-2">
        <button class="py-2 px-4 rounded bg-orange-600 text-white filter-btn" data-category="all">All</button>
        <button class="py-2 px-4 rounded bg-gray-100 text-gray-700 hover:bg-gray-200 filter-btn" data-category="regulation">Regulation</button>
        <button class="py-2 px-4 rounded bg-gray-100 text-gray-700 hover:bg-gray-200 filter-btn" data-category="biometrics">Biometrics</button>
        <button class="py-2 px-4 rounded bg-gray-100 text-gray-700 hover:bg-gray-200 filter-btn" data-category="cybersecurity">Cybersecurity</button>
      </div>
    </div>
  </div>
  
  <div class="grid gap-y-17 gap-x-5 sm:grid-cols-2 lg:grid-cols-3" id="posts-grid">
    <#list blogPosts?chunk(9)[0] as post>
      <article class="flex flex-col post-item" data-category="${post.category}">
        <img class="w-full aspect-video object-cover rounded-lg mb-4"
             src="${ctx.contextPath}/.resources/b-fy/webresources/images/cybersecurity-trends-evolving-landscape.webp"
             alt="${post.title}" />
        <h3 class="font-bold text-xl/tight text-orange-600 mb-3">${post.title}</h3>
        <p class="text-lg leading-snug mb-4 flex-1">${post.description}</p>
        <a class="inline-flex items-center gap-2 text-orange-600 hover:text-red-800 transition-colors"
           href="${ctx.contextPath}/blog/${post.slug}">
          <span class="underline underline-offset-2">Learn more</span>
          <svg class="w-2.75" fill="currentColor" viewBox="0 0 24 24">
            <path d="M8.59 16.59L13.17 12L8.59 7.41L10 6l6 6-6 6l-1.41-1.41z"/>
          </svg>
        </a>
      </article>
    </#list>
  </div>
  
  <div class="mt-18 text-center">
    <button class="py-2.5 px-5 rounded bg-orange-600 text-white transitions-colors hover:bg-red-800">
      View more
    </button>
  </div>
</div>
  
  <div class="text-center mt-15">
    <a class="py-2.5 px-5 inline-block rounded bg-orange-600 text-xl text-white transitions-colors hover:bg-red-800"
       href="${ctx.contextPath}/blog">
      View more
    </a>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const filterButtons = document.querySelectorAll('.filter-btn');
  const postItems = document.querySelectorAll('.post-item');
  
  filterButtons.forEach(button => {
    button.addEventListener('click', function() {
      const category = this.dataset.category;
      
      filterButtons.forEach(btn => {
        btn.classList.remove('bg-orange-600', 'text-white');
        btn.classList.add('bg-gray-100', 'text-gray-700');
      });
      this.classList.remove('bg-gray-100', 'text-gray-700');
      this.classList.add('bg-orange-600', 'text-white');
      
      postItems.forEach(item => {
        if (category === 'all' || item.dataset.category === category) {
          item.style.display = 'flex';
        } else {
          item.style.display = 'none';
        }
      });
    });
  });
});
</script>
</#macro>
