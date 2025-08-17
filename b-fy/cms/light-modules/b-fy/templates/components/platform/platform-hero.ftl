<#-- Consolidated original platform-hero.ftl content (removed wrapper include) -->
<#macro platformHero wrap=true>
	<#assign heroNode = {} />
		<#if content.hero??>
			<#if content.hero?is_sequence>
				<#if content.hero?size gt 0>
					<#assign heroNode = content.hero[0] />
				</#if>
			<#elseif content.hero.title?? || content.hero.description?? || content.hero.image??>
				<#assign heroNode = content.hero />
			<#else>
				<#assign _children = (content.hero?children)![] />
				<#if _children?size gt 0>
					<#assign heroNode = _children[0] />
				</#if>
			</#if>
		</#if>
	<#assign heroTitle = heroNode.title!"A unique authentication platform" />
	<#assign heroDescription = heroNode.description!"B-FY authenticates people, certifying the truth of their identity, through a simple and easy-to-use design, integrated with online applications. With B-FY, there are no credentials that can be stolen or forged." />
	<#assign heroImage = "" />
	<#if heroNode.image?has_content>
		<#assign imgNode = cmsfn.contentById(heroNode.image!)! />
		<#if imgNode?? && (damfn??)>
			<#attempt><#assign heroImage = (damfn.link(imgNode))!"" /><#recover></#attempt>
		</#if>
	</#if>
	<#if !heroImage?has_content>
		<#assign heroImage = ctx.contextPath + '/.resources/b-fy/webresources/images/platform.webp' />
	</#if>
	<#if wrap><section class="min-h-svh mt-12 mb-24 pb-15 px-5 bg-linear-(--color-neutral-100) bg-size-[auto_60%] bg-no-repeat bg-bottom text-center sm:px-10 lg:px-13 xl:mt-24"></#if>
		<h1 class="font-bold text-3xl xl:text-5xl">${heroTitle}</h1>
		<p class="max-w-240 mt-9 mb-15 mx-auto text-lg xl:text-xl/snug">${heroDescription}</p>
		<img src="${heroImage}" alt="" class="mb-26 mx-auto" loading="eager" onerror="this.onerror=null;this.src='${ctx.contextPath}/.resources/b-fy/webresources/images/platform.webp'" />
	<#if wrap></section></#if>
</#macro>
