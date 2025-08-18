<#-- Debug DAM Assets - Para diagnosticar valores del dialog -->
<#macro debugDam>
<div style="background: #f0f0f0; padding: 20px; margin: 20px; border: 2px solid #ccc; font-family: monospace; white-space: pre-wrap;">
<h3>🐞 DEBUG DAM ASSETS</h3>

<strong>HERO IMAGE (content.image):</strong>
Exists: ${(content.image??)?c}
Value: ${(content.image?string)!'null'}
Is Hash: ${(content.image??)?then(content.image?is_hash?c, 'false')}
Is String: ${(content.image??)?then(content.image?is_string?c, 'false')}

<#if content.image?? && content.image?is_string && content.image?starts_with('jcr:')>
<strong>UUID RESOLUTION TEST:</strong>
UUID after prefix removal: ${content.image?replace('jcr:', '')}
<#if cmsfn?? && cmsfn.contentById??>
  <#assign testNode = cmsfn.contentById(content.image?replace('jcr:', ''))!'' />
  UUID resolution successful: ${testNode?is_hash?c}
  <#if testNode?is_hash>
  Asset node type: ${testNode['jcr:primaryType']!'unknown'}
    <#if damfn?? && damfn.link??>
      <#attempt>
        <#assign testUrl = damfn.link(testNode)!"" />
  damfn.link() result: ${testUrl!'empty'}
      <#recover>
  damfn.link() error: Failed to generate URL
      </#attempt>
    </#if>
  </#if>
</#if>
</#if>

<strong>LIST MULTIFIELD (content.list):</strong>
Exists: ${(content.list??)?c}
Keys: ${(content.list??)?then(content.list?keys?join(', '), 'none')}

<#if content.list?? && content.list?is_hash>
<strong>MULTIFIELD ITEMS:</strong>
<#list content.list?keys?sort as k>
  <#if k?matches('^[0-9]+$')>
    Item ${k}:
      - Image Exists: ${(content.list[k].image??)?c}
      - Image Value: ${(content.list[k].image?string)!'null'}
      - Image Is Hash: ${(content.list[k].image??)?then(content.list[k].image?is_hash?c, 'false')}
      - Image Is String: ${(content.list[k].image??)?then(content.list[k].image?is_string?c, 'false')}
      - Title: ${content.list[k].title!'null'}
  </#if>
</#list>
</#if>

<strong>FUNCTIONS AVAILABLE:</strong>
damfn: ${damfn???then('true', 'false')}
cmsfn: ${cmsfn???then('true', 'false')}
${cmsfn???then('- cmsfn.contentById: ' + (cmsfn.contentById???then('true', 'false')), '')}
${cmsfn???then('- cmsfn.contentByPath: ' + (cmsfn.contentByPath???then('true', 'false')), '')}
</div>
</#macro>
