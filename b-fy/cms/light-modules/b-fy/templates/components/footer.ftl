<#-- Reusable footer macro with default content -->
<#macro siteFooter>
  <footer class="px-6 py-20 bg-neutral-900 text-white text-sm">
      <div class="max-w-screen-xl mx-auto grid gap-12 md:grid-cols-4">
          <div class="flex flex-col gap-4">
              <h3 class="font-bold text-lg">Links</h3>
              <ul class="flex flex-col gap-2 text-neutral-500">
                  <li><a href="/platform" class="hover:text-orange-600 transition-colors">Platform</a></li>
                  <li><a href="/industries" class="hover:text-orange-600 transition-colors">Industries</a></li>
                  <li><a href="/partners" class="hover:text-orange-600 transition-colors">Partners</a></li>
                  <li><a href="/developers" class="hover:text-orange-600 transition-colors">Developers</a></li>
                  <li><a href="/resources" class="hover:text-orange-600 transition-colors">Resources</a></li>
                  <li><a href="/blog" class="hover:text-orange-600 transition-colors">Blog</a></li>
                  <li><a href="/white-papers" class="hover:text-orange-600 transition-colors">White Papers</a></li>
                  <li><a href="/newsroom" class="hover:text-orange-600 transition-colors">Newsroom</a></li>
                  <li><a href="/faqs" class="hover:text-orange-600 transition-colors">FAQs</a></li>
                  <li><a href="/about-us" class="hover:text-orange-600 transition-colors">About Us</a></li>
                  <li><a href="/contact" class="hover:text-orange-600 transition-colors">Contact</a></li>
              </ul>
          </div>
          <div class="flex flex-col gap-4">
              <h3 class="font-bold text-lg">Legal</h3>
              <ul class="flex flex-col gap-2 text-neutral-500">
                  <li><a href="/legal-notice" class="hover:text-orange-600 transition-colors">Legal Notice</a></li>
                  <li><a href="/privacy-policy" class="hover:text-orange-600 transition-colors">Privacy Policy</a></li>
                  <li><a href="/cookies-policy" class="hover:text-orange-600 transition-colors">Cookies Policy</a></li>
                  <li><a href="/terms-conditions" class="hover:text-orange-600 transition-colors">Terms and Conditions</a></li>
              </ul>
          </div>
          <div class="flex flex-col gap-4">
              <h3 class="font-bold text-lg">Contact</h3>
              <ul class="flex flex-col gap-2 text-neutral-500">
                  <li>info@b-fy.com</li>
                  <li><a href="/contact" class="hover:text-orange-600 transition-colors">Contact us</a></li>
              </ul>
              <h3 class="font-bold text-lg mt-8">Certifications</h3>
              <p class="text-neutral-500 text-xs leading-snug">ISO 9001 · ISO/IEC 27001 · ISO/IEC 27701 · Pacto Digital para la protección de las personas · INCIBE · OpenID</p>
          </div>
          <div class="flex flex-col gap-4">
              <h3 class="font-bold text-lg">Get a demo</h3>
              <p class="text-neutral-500 text-sm">Experience the new era of authentication. Discover how B-FY can transform your company’s security.</p>
              <div class="flex gap-4 mt-2">
                  <a href="/contact" class="py-2.5 px-4 rounded bg-orange-600 text-white text-sm font-medium transition-colors hover:bg-red-800">Get a demo</a>
                  <a href="/contact" class="py-2.5 px-4 rounded ring ring-inset text-sm font-medium transition-colors hover:text-orange-600">Contact us</a>
              </div>
          </div>
      </div>
      <div class="mt-16 text-center text-neutral-500">B-FY ${.now?string("yyyy")} - All rights reserved.</div>
  </footer>
</#macro>
