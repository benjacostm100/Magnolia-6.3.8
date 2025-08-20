<#-- Refactored to mirror Astro Table: features = list of feature strings prop -->
<#import "/b-fy/templates/components/util/icons.ftl" as ic />
<#macro platformTable features=[]>
	<#assign fallbackFeatures = [
		"Passwordless by design",
		"Decentralized security",
		"Fraud and AI attack prevention",
		"Frictionless user experience",
		"Protection against ATO",
		"User transparency",
		"Easy integration"
	] />
	<#assign list = (features?size gt 0)?then(features, fallbackFeatures) />
	<div class="overflow-x-auto my-26">
		<table class="w-full leading-tight lg:text-xl/tight">
			<thead>
				<tr class="*:p-7">
					<th></th>
					<th class="w-64 text-zinc-400" scope="col">Traditional 2FA (SMS, OTP, Apps)</th>
					<th class="w-64 text-zinc-400" scope="col">Passwords</th>
					<th class="xl:pr-14" scope="col">
						<svg class="w-auto h-17 mx-auto text-orange-600" viewBox="0 0 103 40" fill="currentColor">
							<path d="M13.85 8.77c3.7 0 6.6 2.87 6.6 6.54s-2.9 6.54-6.6 6.54H8.4v8.12H4.89V8.77h8.96zm-1.31 9.84c1.75 0 3.08-1.31 3.08-3.3 0-1.98-1.33-3.29-3.08-3.29H8.4v6.59h4.14zM33.86 21.67v8.32h-3.52v-8.32l-8.25-12.9h4.14l6.07 9.75 6.07-9.75h4.14l-8.65 12.9z"/>
							<path d="M57.45 8.77c7.15 0 12.15 5.23 12.15 10.6S64.6 29.97 57.45 29.97c-7.16 0-12.16-5.23-12.16-10.6S50.29 8.77 57.45 8.77zm0 17.74c4.69 0 8.4-3.74 8.4-7.14S62.14 12.23 57.45 12.23s-8.4 3.74-8.4 7.14 3.71 7.14 8.4 7.14z"/>
						</svg>
					</th>
				</tr>
			</thead>
			<tbody class="text-sm lg:text-lg">
				<#list list as feature>
					<tr class="border-zinc-400 not-last:border-b *:py-3 *:px-5 lg:*:px-7">
						<th class="font-normal text-left" scope="row"><span class="w-32 lg:w-64 block">${feature}</span></th>
						<td><img class="w-6 mx-auto text-neutral-300" src="${ic.iconPath('x.svg')}" alt="" loading="lazy" /></td>
						<td><img class="w-6 mx-auto text-neutral-300" src="${ic.iconPath('x.svg')}" alt="" loading="lazy" /></td>
						<td class="xl:pr-14"><img class="w-8 mx-auto" src="${ic.iconPath('check.svg')}" alt="" loading="lazy" /></td>
					</tr>
				</#list>
			</tbody>
		</table>
	</div>
</#macro>
