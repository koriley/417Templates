<div id="breadcrumb-layer"><div id="breadcrumb-tott">{section name=crumb loop=$breadcrumbs}{strip}{if $smarty.section.crumb.last}{$breadcrumbs[crumb].title}{else}<a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if}{/strip}{/section}</div></div>