<#--	<#assign fbSteps = [
		"The user scans the B‑FY QR code at an online or physical access point.",
		"Biometric verification is performed through the institution's mobile app (with B‑FY libraries integrated).",
		"B‑FY grants direct access to the user, not just their credentials."
	] />ored to mirror Astro AuthProcess (3 steps, infographic + list) -->
<#macro platformAuthProcess>
	<#assign fbTitle = "Simple and frictionless authentication" />
		<#assign fbDescription = "A smarter and safer way to authenticate:" />
		<#assign fbSteps = [
			"The user scans the B‑FY QR code at an online or physical access point.",
			"Biometric verification is performed through the institution’s mobile app (with B‑FY libraries integrated).",
			"B‑FY grants direct access to the user, not just their credentials.",
			"Why it matters: Hackers can steal credentials, but they cannot replicate a real person.",
			"B-FY renders identification credentials useless to hackers. Even if leaked, they are worthless without biometric validation."
		] />
	<#assign node = {} />
	<#if content.process??>
		<#assign _c = (content.process?children)![] />
		<#if _c?size gt 0><#assign node = _c[0] /></#if>
	</#if>
	<#assign title = node.title!fbTitle />
	<#assign description = node.description!fbDescription />
	<#assign steps = [] />
	<#if node.items??>
		<#if node.items?is_sequence>
			<#assign steps = node.items />
		<#else>
			<#assign sc = (node.items?children)![] />
			<#if sc?size gt 0><#assign steps = sc /></#if>
		</#if>
	</#if>
	<#assign stepsList = (steps?size gt 0)?then(steps, fbSteps) />
	<#assign infographic = '' />
	<#if node.infographic?has_content>
		<#assign imgNode = cmsfn.contentById(node.infographic!)! />
		<#if imgNode?? && (damfn??)><#attempt><#assign infographic = (damfn.link(imgNode))!'' /><#recover></#attempt></#if>
	</#if>
	<#if !infographic?has_content>
		<#assign infographic = ctx.contextPath + '/.resources/b-fy/webresources/images/platform-infographic-en.webp' />
	</#if>
	<section class="mb-24 grid gap-15 lg:grid-cols-2 lg:items-center">
		<img src="${infographic}" alt="" class="mx-auto" loading="lazy" onerror="this.onerror=null;this.src='${ctx.contextPath}/.resources/b-fy/webresources/images/platform-infographic-en.webp'" />
		<div class="text-left text-lg xl:mt-15">
			<h3 class="w-72 font-bold text-xl/tight text-balance text-orange-600 uppercase">${title}</h3>
			<p class="mt-6 mb-7">${description}</p>
			<ol class="pl-[1em] grid gap-5 list-decimal marker:font-bold marker:text-orange-600">
				<#list stepsList as step>
					<#if step?is_string><#assign txt = step /><#else><#assign txt = step.text!step["text"]!step.title!step["title"]!step /></#if>
					<li>${txt}</li>
				</#list>
			</ol>
		</div>
	</section>
</#macro>
