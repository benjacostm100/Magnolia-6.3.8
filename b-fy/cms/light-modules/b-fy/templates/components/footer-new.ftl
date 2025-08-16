<#-- Reusable footer macro with CSS-based styling instead of Tailwind -->
<#macro siteFooter>
  <footer class="footer-main">
    <div class="footer-section">
      <div class="footer-grid">
        
        <!-- Company Logo & LinkedIn -->
        <div class="footer-logo-section">
          <img src="${config.link}/webresources/images/logo-white.png" alt="B-FY" class="footer-logo">
          <a href="#" class="footer-linkedin">
            <svg fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
              <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
            </svg>
          </a>
        </div>

        <!-- Navigation Links -->
        <div class="footer-links-section">
          <h3 class="footer-links-title">Links</h3>
          <nav class="footer-links-nav">
            <a href="${config.link}/" class="footer-link">Inicio</a>
            <a href="${config.link}/platform" class="footer-link">Plataforma</a>
            <a href="${config.link}/industries" class="footer-link">Industrias</a>
            <a href="${config.link}/partners" class="footer-link">Partners</a>
            <a href="${config.link}/developers" class="footer-link">Desarrolladores</a>
            <a href="${config.link}/about-us" class="footer-link">Sobre nosotros</a>
            <a href="${config.link}/resources" class="footer-link">Recursos</a>
            <a href="${config.link}/legal/privacy-policy" class="footer-link">Política de Privacidad</a>
            <a href="${config.link}/legal/terms-of-service" class="footer-link">Términos de Servicio</a>
            <a href="${config.link}/legal/legal-notice" class="footer-link">Aviso Legal</a>
            <a href="${config.link}/legal/cookies-policy" class="footer-link">Política de Cookies</a>
          </nav>
        </div>

        <!-- Legal Links -->
        <div class="footer-legal-section">
          <h3 class="footer-legal-title">Legal</h3>
        </div>

        <!-- Contact -->
        <div class="footer-contact-section">
          <h3 class="footer-contact-title">Contacto</h3>
          <a href="#" class="footer-contact-button">
            hello@b-fy.com
          </a>
        </div>

      </div>

      <!-- Certifications Section -->
      <div class="footer-certifications">
        <h3 class="footer-certifications-title">Certificaciones</h3>
        <div class="footer-certifications-grid">
          <img src="${config.link}/webresources/images/iso-9001.svg" alt="ISO 9001" class="footer-cert-img">
          <img src="${config.link}/webresources/images/iso-iec-27001.svg" alt="ISO/IEC 27001" class="footer-cert-img">
          <img src="${config.link}/webresources/images/iso-iec-27701.svg" alt="ISO/IEC 27701" class="footer-cert-img">
          <img src="${config.link}/webresources/images/pacto-digital.webp" alt="Pacto Digital" class="footer-cert-img">
          <img src="${config.link}/webresources/images/incibe.webp" alt="INCIBE" class="footer-cert-img">
          <img src="${config.link}/webresources/images/openid.webp" alt="OpenID" class="footer-cert-img">
        </div>
      </div>
    </div>
    
    <div class="footer-bottom">
      <p>&copy; 2024 B-FY. Todos los derechos reservados.</p>
    </div>
  </footer>
</#macro>
