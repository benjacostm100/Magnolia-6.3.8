<#-- Refactored to accept class/id similar to Astro Video component -->
<#macro platformVideo class="" id="" title="Play">
	<#assign fallbackVideoId = 'dQw4w9WgXcQ' />
	<#assign vid = id />
	<#if !vid?has_content>
		<#-- attempt to resolve from content.video -->
		<#assign node = {} />
		<#if content.video??>
			<#if content.video?is_sequence && content.video?size gt 0>
				<#assign node = content.video[0] />
			<#elseif content.video.videoId??>
				<#assign node = content.video />
			<#else>
				<#assign ch = (content.video?children)![] />
				<#if ch?size gt 0><#assign node = ch[0] /></#if>
			</#if>
		</#if>
		<#assign vid = node.videoId!fallbackVideoId />
	</#if>
	<div class="${class!''}">
		<div class="aspect-video w-full rounded-lg overflow-hidden bg-neutral-200">
			<iframe src="https://www.youtube.com/embed/${vid}" title="${title}" allowfullscreen class="w-full h-full border-0"></iframe>
		</div>
	</div>
</#macro>
