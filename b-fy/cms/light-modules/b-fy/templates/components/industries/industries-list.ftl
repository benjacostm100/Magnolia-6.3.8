<#-- Industries List Component -->
<#macro industriesList>
<#assign industries = [
  {
    "title": "Transport & Logistics",
    "tagline": "Security and efficiency across all your operations",
    "description": "Secure access across your logistics chain — terminals, service stations, warehouses, and delivery hubs. B-FY's decentralized biometric solution ensures agile and secure authentication of drivers, staff, and clients, eliminating impersonation risks while streamlining operations.",
    "image": "transport-logistics.webp",
    "slug": "transport-logistics",
    "isEven": false
  },
  {
    "title": "Financial Services", 
    "tagline": "Biometric defense against identity fraud",
    "description": "Stay ahead of fraud with B-FY. Our real, decentralized, passwordless biometric authentication stops phishing, ATO, and AI-generated attacks in their tracks. Don't just verify credentials — verify legitimate users, and ensure every interaction is secure and compliant.",
    "image": "financial-services.webp",
    "slug": "financial-services",
    "isEven": true
  },
  {
    "title": "Education",
    "tagline": "Secure access to platforms, campuses, and systems", 
    "description": "Education is evolving — so should your security. B-FY brings next-generation security to education — blocking phishing, bots, AI-driven threats, and ransomware with cutting-edge, passwordless biometrics. Give students, faculty, and staff instant, secure access to platforms and campuses, all while delivering a smooth, friction-free experience.",
    "image": "education.webp",
    "slug": "education",
    "isEven": false
  },
  {
    "title": "Healthcare Services",
    "tagline": "Comprehensive protection for the healthcare sector",
    "description": "B-FY safeguards patients, healthcare professionals, and institutions from the sector's top threats — medical identity theft, insurance fraud, and data breaches. Our decentralized biometric authentication stops fraud attempts powered by AI, phishing, account takeovers, and unauthorized access, ensuring full compliance with privacy and security regulations.",
    "image": "healthcare-services.webp", 
    "slug": "healthcare-services",
    "isEven": true
  }
] />

<section style="margin: 6.25rem 0; padding: 0 1.25rem; display: grid; gap: 5rem; text-wrap: pretty;">
  <style>
    @media (min-width: 640px) {
      .industries-list { padding: 0 2.5rem; }
    }
    @media (min-width: 768px) {
      .industries-list { padding: 0; gap: 0; }
      .industry-article {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        align-items: center;
      }
      .industry-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-top-right-radius: 1rem;
        display: block;
      }
      .industry-content {
        padding: 2.5rem;
      }
      .industry-even .industry-content {
        grid-column-start: 1;
        grid-row-start: 1;
        text-align: right;
      }
    }
    @media (min-width: 1024px) {
      .industry-content {
        padding: 3.25rem;
      }
    }
    .industry-tagline {
      padding: 0.625rem 1.25rem;
      display: inline-block;
      border-radius: 0.25rem;
      background-color: #ea580c;
      color: white;
      line-height: 1;
      text-transform: uppercase;
      font-size: 0.875rem;
    }
    @media (min-width: 1280px) {
      .industry-tagline {
        font-size: 1.25rem;
      }
    }
    .industry-title {
      margin: 2rem 0;
      font-weight: bold;
      font-size: 1.875rem;
      line-height: 1.2;
    }
    @media (min-width: 1280px) {
      .industry-title {
        font-size: 3rem;
      }
    }
    .industry-description {
      margin-bottom: 2rem;
      font-size: 1.125rem;
      line-height: 1.6;
    }
    @media (min-width: 1280px) {
      .industry-description {
        font-size: 1.25rem;
        line-height: 1.4;
      }
    }
    .industry-link {
      padding: 0.625rem 1.25rem;
      display: inline-block;
      border-radius: 0.25rem;
      border: 1px solid #ea580c;
      font-size: 1.125rem;
      line-height: 1;
      color: #ea580c;
      text-decoration: none;
      transition: color 0.3s ease;
    }
    @media (min-width: 1280px) {
      .industry-link {
        font-size: 1.25rem;
      }
    }
    .industry-link:hover {
      color: #dc2626;
    }
    .industry-image-mobile {
      display: block;
      width: 100%;
      height: auto;
      border-radius: 0.5rem;
      margin-bottom: 1.5rem;
    }
    @media (min-width: 768px) {
      .industry-image-mobile {
        display: none;
      }
    }
  </style>
  <div class="industries-list">
    <#list industries as industry>
      <article class="industry-article ${industry.isEven?then('industry-even', '')}">
        <img class="industry-image-mobile" 
             src="${ctx.contextPath}/.resources/b-fy/webresources/images/${industry.image}" 
             alt="${industry.title}" />
        <img class="industry-image" 
             style="display: none;"
             src="${ctx.contextPath}/.resources/b-fy/webresources/images/${industry.image}" 
             alt="${industry.title}" />
        <div class="industry-content">
          <hgroup>
            <p class="industry-tagline">${industry.tagline}</p>
            <h2 class="industry-title">${industry.title}</h2>
          </hgroup>
          <p class="industry-description">${industry.description}</p>
          <a class="industry-link" href="${ctx.contextPath}/industries/${industry.slug}">
            Discover more
          </a>
        </div>
      </article>
    </#list>
  </div>
</section>

<script>
// Show desktop images on larger screens
document.addEventListener('DOMContentLoaded', function() {
  function updateImageDisplay() {
    const images = document.querySelectorAll('.industry-image');
    if (window.innerWidth >= 768) {
      images.forEach(img => img.style.display = 'block');
    } else {
      images.forEach(img => img.style.display = 'none');
    }
  }
  
  updateImageDisplay();
  window.addEventListener('resize', updateImageDisplay);
});
</script>
</#macro>
