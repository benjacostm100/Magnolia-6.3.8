<#-- Home Industries section replicating Astro Industries with defaults and CMS overrides -->
<#macro homeIndustries 
  tagline="B‑FY in action"
  title="A solution that adapts to every sector"
  description="Our technology meets the demands of different industries. B‑FY protects institutions from all types of online identity fraud, including growing attack vectors such as AI, APP, ATO, and bots."
>
  <#if !HOME_INDUSTRIES_STYLE_INCLUDED??>
    <#global HOME_INDUSTRIES_STYLE_INCLUDED = true />
    <style>
      .industries{overflow:hidden;margin-bottom:104px;padding:60px 20px;background:#e5e5e5;font-optical-sizing:auto;}
      @media (min-width:640px){.industries{padding-left:40px;padding-right:40px;}}
      @media (min-width:1024px){.industries{padding-left:52px;padding-right:52px;}}
      .industries__tag{display:inline-block;padding:10px 20px;border-radius:8px;background:#ea580c;color:#fff;text-transform:uppercase;line-height:1;}
      @media (min-width:1280px){.industries__tag{font-size:1.25rem;}}
      .industries__title{margin:28px 0 36px;font-weight:700;font-size:1.875rem;line-height:1.1;}
      @media (min-width:1280px){.industries__title{font-size:3rem;}}
      .industries__desc{max-width:880px;font-size:1.125rem;line-height:1.25;}
      @media (min-width:1280px){.industries__desc{font-size:1.25rem;line-height:1.2;}}
  .industries__scroller{margin-top:52px;overflow-x:auto;scroll-snap-type:x mandatory;display:flex;gap:40px;padding-bottom:10px;-webkit-overflow-scrolling:touch;}
  .industry{display:flex;flex-direction:column;scroll-snap-align:start;flex:0 0 82%;max-width:82%;}
  @media (min-width:640px){.industry{flex:0 0 50%;max-width:50%;}}
  @media (min-width:1024px){.industry{flex:0 0 33.3333%;max-width:33.3333%;}}
  @media (min-width:1440px){.industry{flex:0 0 25%;max-width:25%;}}
      .industry__name{margin:32px 0 16px;font-weight:700;font-size:1.25rem;text-transform:uppercase;color:#ea580c;}
      .industry__summary{font-size:1.125rem;line-height:1.3;margin:0 0 20px;}
      .industry__more{margin-top:auto;display:inline-flex;align-items:center;gap:6px;color:#ea580c;text-decoration:none;transition:color .25s;font-size:.95rem;}
      .industry__more span{text-decoration:underline;text-underline-offset:2px;}
      .industry__more:hover{color:#991b1b;}
      .industry__thumb{border-radius:12px;display:block;width:100%;height:auto;object-fit:cover;}
  .industries__arrow{width:11px;height:auto;}
  .industries__controls{margin-top:52px;display:flex;gap:20px;}
  .industries__btn{width:56px;height:56px;display:grid;place-items:center;border-radius:999px;background:#fff;box-shadow:0 4px 12px -2px rgba(0,0,0,.15);cursor:pointer;transition:color .25s;background-clip:padding-box;}
  .industries__btn:hover{color:#991b1b;}
  .industries__btn svg{width:26px;height:auto;}
    </style>
  </#if>

  <#-- Fallback industry items (extended descriptions) -->
  <#assign fallbackIndustryItems = [
    {"name":"Financial Services","summary":"Stop ATO and APP threats, MFA bombing, and other attacks and data breaches with B-FY’s secure, decentralized biometric authentication. Balance regulatory compliance and user experience with strong security measures that stop all forms of online identity fraud.","link":"/industries#financial"},
    {"name":"Transport & Logistics","summary":"Meet all sector-specific regulatory requirements while offering a seamless user experience with B-FY’s decentralized, passwordless-by-design solution. Eliminate financial fraud stemming from identity theft caused by both internal and external actors.","link":"/industries#transport"},
    {"name":"Education","summary":"Protect students, teachers, and administrative staff against ransomware, data breaches, and online financial fraud in payments, student loans, grants, and scholarships. Improve user experience by streamlining enrollment and ensure only authorized individuals access restricted areas with B-FY.","link":"/industries#education"},
    {"name":"Healthcare Services","summary":"Comply with all privacy, quality, and security regulations, including HIPAA and GDPR. Deliver a frictionless user experience with B-FY’s decentralized, passwordless-by-design solution. We protect healthcare institutions and their users against medical identity theft, insurance fraud, and data breaches.","link":"/industries#healthcare"}
  ] />

  <#-- Resolve authored industries node -->
  <#assign _industries = {} />
  <#if content.industries??>
    <#assign _indChildren = (content.industries?children)![] />
    <#if _indChildren?size gt 0>
      <#assign _industries = _indChildren[0] />
    </#if>
  </#if>
  <#assign _tag = _industries.tagline!tagline />
  <#assign _title = _industries.title!title />
  <#assign _desc = _industries.description!description />

  <#-- Build authored industries items supporting different jcrMultiField storage shapes -->
  <#assign itemList = fallbackIndustryItems />
  <#assign authoredItems = [] />
  <#if _industries?has_content>
    <#-- Pattern A: _industries.items is already a sequence provided by model -->
    <#if _industries.items?has_content && _industries.items?is_sequence>
      <#assign authoredItems = _industries.items />
    <#elseif _industries.items?has_content && _industries.items?is_hash>
      <#-- Pattern B: items is a wrapping node: use its children -->
      <#if _industries.items?children?has_content>
        <#assign authoredItems = _industries.items?children />
      </#if>
    </#if>
    <#-- Pattern C: legacy multiField creates children named items0, items1 ... directly under _industries -->
    <#if authoredItems?size == 0>
      <#assign tmp = [] />
      <#list _industries?children as ch>
        <#if ch.@name?starts_with('items')>
          <#assign tmp += [ch] />
        </#if>
      </#list>
      <#if tmp?size gt 0>
        <#assign authoredItems = tmp />
      </#if>
    </#if>
  </#if>
  <#if authoredItems?size gt 0>
    <#assign itemList = authoredItems />
  </#if>

  <section class="industries" aria-label="Industries overview">
    <hgroup>
      <p class="industries__tag">${_tag}</p>
      <h2 class="industries__title">${_title}</h2>
    </hgroup>
    <p class="industries__desc">${_desc}</p>
    <div class="industries__scroller" id="industries-scroll">
      <#list itemList as it>
        <article class="industry">
          <#-- Optional thumbnail if present -->
          <#-- Resolve thumbnail from several possible shapes produced by damLinkField inside multifield -->
          <#assign thumbSrc = "" />
          <#if it.thumbnail?has_content>
            <#assign rawThumb = it.thumbnail />
            <#if rawThumb?is_hash>
              <#-- Hash may contain @path or identifier; try @path first -->
              <#if rawThumb.@path?has_content && (damfn??)>
                <#attempt>
                  <#assign thumbNode = cmsfn.contentByPath(rawThumb.@path, "dam")! />
                  <#if thumbNode??>
                    <#assign thumbSrc = (damfn.link(thumbNode))!thumbSrc />
                  </#if>
                <#recover>
                </#attempt>
              </#if>
              <#-- Some damLinkFields expose identifier or uuid -->
              <#if (thumbSrc == "") && (rawThumb.identifier?has_content || rawThumb.uuid?has_content) && (damfn??)>
                <#assign _id = rawThumb.identifier!rawThumb.uuid />
                <#attempt>
                  <#assign assetNode = cmsfn.contentById(_id, "dam")! />
                  <#if assetNode??>
                    <#assign thumbSrc = (damfn.link(assetNode))!thumbSrc />
                  </#if>
                <#recover>
                </#attempt>
              </#if>
              <#-- Scan any other keys that might carry id/path (defensive) -->
              <#if thumbSrc == "">
                <#list rawThumb?keys as k>
                  <#assign lk = k?lower_case />
                  <#if (lk?contains('uuid') || lk?contains('identifier')) && (damfn??)>
                    <#attempt>
                      <#assign nodeByAny = cmsfn.contentById(rawThumb[k], "dam")! />
                      <#if nodeByAny??>
                        <#assign thumbSrc = (damfn.link(nodeByAny))!thumbSrc />
                      </#if>
                    <#recover>
                    </#attempt>
                  </#if>
                  <#if thumbSrc == "" && lk?contains('path') && rawThumb[k]?has_content && (damfn??)>
                    <#attempt>
                      <#assign nodeByPath = cmsfn.contentByPath(rawThumb[k], "dam")! />
                      <#if nodeByPath??>
                        <#assign thumbSrc = (damfn.link(nodeByPath))!thumbSrc />
                      </#if>
                    <#recover>
                    </#attempt>
                  </#if>
                </#list>
              </#if>
              <#-- Fallback: direct src property if present -->
              <#if thumbSrc == "" && rawThumb.src?has_content>
                <#assign thumbSrc = rawThumb.src />
              </#if>
            <#elseif rawThumb?is_string>
              <#-- rawThumb could be: a full URL, a DAM path (/b-fy/... or /...), or a UUID identifier produced by damLinkField -->
              <#assign thumbSrc = rawThumb />
              <#if damfn??>
                <#-- Try UUID/identifier lookup first (typical damLinkField behaviour) -->
                <#attempt>
                  <#assign _maybeNode = cmsfn.contentById(rawThumb, "dam")! />
                  <#if _maybeNode??>
                    <#assign thumbSrc = (damfn.link(_maybeNode))!thumbSrc />
                  <#else>
                    <#-- If not an ID, maybe it's a path beginning with /; attempt path resolution -->
                    <#if rawThumb?starts_with("/")>
                      <#assign thumbNode2 = cmsfn.contentByPath(rawThumb, "dam")! />
                      <#if thumbNode2??>
                        <#assign thumbSrc = (damfn.link(thumbNode2))!thumbSrc />
                      </#if>
                    </#if>
                  </#if>
                <#recover>
                </#attempt>
              </#if>
            </#if>
          </#if>
          <#if thumbSrc?has_content>
            <img src="${thumbSrc}" alt="" class="industry__thumb" loading="lazy" />
          <#else>
            <#-- Debug aid: expose structure when thumbnail not resolved (remove in production) -->
            <pre style="display:none" data-debug="industry-thumb-miss">Missing thumbnail; keys=${it?keys}; thumbnailType=<#if it.thumbnail??>${it.thumbnail?api.getClass().getName()!}</#if></pre>
          </#if>
          <h3 class="industry__name">${it.name!}</h3>
          <p class="industry__summary">${it.summary!it.description!}</p>
          <#if it.link?has_content>
            <a class="industry__more" href="${it.link}"><span>Read more</span><svg class="industries__arrow" viewBox="0 0 11 9" fill="currentColor" aria-hidden="true"><path d="M10.645 4.08 6.738.173A.588.588 0 0 0 6.32 0 .588.588 0 0 0 5.9.173l-.355.355a.6.6 0 0 0 0 .842l2.28 2.284H.584A.578.578 0 0 0 0 4.236v.502c0 .326.258.608.584.608h7.267L5.546 7.643a.583.583 0 0 0 0 .831l.355.354c.112.111.26.172.419.172a.588.588 0 0 0 .419-.173l3.906-3.907a.588.588 0 0 0 .173-.42.588.588 0 0 0-.173-.42Z"/></svg></a>
          </#if>
        </article>
      </#list>
    </div>
    <div class="industries__controls" aria-hidden="true">
      <button type="button" class="industries__btn" data-dir="prev" onclick="(function(btn){const sc=document.getElementById('industries-scroll');if(!sc)return;sc.scrollBy({left:-sc.clientWidth*0.85,behavior:'smooth'});})(this)"><svg viewBox="0 0 11 9" fill="currentColor" aria-hidden="true"><path d="M10.645 4.08 6.738.173A.588.588 0 0 0 6.32 0 .588.588 0 0 0 5.9.173l-.355.355a.6.6 0 0 0 0 .842l2.28 2.284H.584A.578.578 0 0 0 0 4.236v.502c0 .326.258.608.584.608h7.267L5.546 7.643a.583.583 0 0 0 0 .831l.355.354c.112.111.26.172.419.172a.588.588 0 0 0 .419-.173l3.906-3.907a.588.588 0 0 0 .173-.42.588.588 0 0 0-.173-.42Z"/></svg></button>
      <button type="button" class="industries__btn" data-dir="next" onclick="(function(btn){const sc=document.getElementById('industries-scroll');if(!sc)return;sc.scrollBy({left:sc.clientWidth*0.85,behavior:'smooth'});})(this)"><svg style="transform:rotate(180deg)" viewBox="0 0 11 9" fill="currentColor" aria-hidden="true"><path d="M10.645 4.08 6.738.173A.588.588 0 0 0 6.32 0 .588.588 0 0 0 5.9.173l-.355.355a.6.6 0 0 0 0 .842l2.28 2.284H.584A.578.578 0 0 0 0 4.236v.502c0 .326.258.608.584.608h7.267L5.546 7.643a.583.583 0 0 0 0 .831l.355.354c.112.111.26.172.419.172a.588.588 0 0 0 .419-.173l3.906-3.907a.588.588 0 0 0 .173-.42.588.588 0 0 0-.173-.42Z"/></svg></button>
    </div>
  </section>
</#macro>
