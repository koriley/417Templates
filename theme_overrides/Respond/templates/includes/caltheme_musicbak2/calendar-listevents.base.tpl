{if !$showpagetools}{assign var="showpagetools" value=true}{/if}
{if !$calendar_div_id}{assign var="calendar_div_id" value="calendar"}{/if}
{if !$calendar_div_body_id}{assign var="calendar_div_body_id" value="calendar-body"}{/if}
{if !$calendar_div_sidebar_id}{assign var="calendar_div_sidebar_id" value="calendar-sidebar"}{/if}
{if !$calendar_div_search_id}{assign var="calendar_div_search_id" value="calendar-search"}{/if}
{if !$enable_load_modules}{assign var="enable_load_modules" value=true}{/if}
{if !$load_modules_position}{assign var="load_modules_position" value="right"}{/if}
{if !$display_recur_info}{assign var="display_recur_info" value=true}{/if}

<div id="{$calendar_div_id}">
 {if $showpagetools && $Page->params.mode !="print"}
	{include file="pagetools.tpl"}
	{/if}
	<div id="{$calendar_div_body_id}">
	<h1>{$Page->title}</h1>
		{include file="calendar_events_search_results.tpl"}
	</div>
</div>

{if $Page->params.mode !="print"}
<div id="{$calendar_div_sidebar_id}">
		{include file="calendar_main_links.tpl"}
		<div id="{$calendar_div_search_id}" class="module">
			<h2>Search {$calendar.title}</h2>
	        <div class="content">
				{include file="calendar_search_filters.tpl"}
	        </div>
		</div>
		{if $enable_load_modules}{loadModules position=$load_modules_position}{/if}
</div>
{/if}
