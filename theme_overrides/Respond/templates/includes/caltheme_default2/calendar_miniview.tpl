{addjs file="Rivista_ajax.js"}
{if $loadEventDescriptions === "no"}
	{assign var="calendarTemplate" value="calendar_day.tpl"}
{else}
	{assign var="calendarTemplate" value="calendar_day_ajax.tpl"}
{/if}

{if $Page->params.category != ""}
	{assign var="category" value=$Page->params.categoryfilter}
{/if}

{if $module.max|trim != ""}
    {assign var="maxDisplayed" value=$module.max|default:5}
{else}
    {assign var="maxDisplayed" value=5}
{/if}


{strip}
<div class="monthly-calendar" id="calendar_{$calendar.id}" calendar_category="{$category}">
	<h3>{$thismonth}</h3>
	{include file="calendar_monthly_navigation_ajax.tpl"}
	<div class="monthly_calendar_wrapper">
		{include file="calendar_monthly_grid_ajax.tpl"}
		<div class="eventsContainer">
		</div>
		<div class="eventContainer">
		</div>
		<div class="ajaxloader">
		</div>
	</div>
</div>
{/strip}
{if $SCRIPT_NAME == '/core/ajaxserver.php' || ($currentTs > 0 && $autoShowTodaysEvents == "yes")}
	<script type="text/javascript">
		RivistaAjax.loadCalendar({$calendar.id}, '{$currentTs|date_format:"%Y"}','{$currentTs|date_format:"%m"}','{$currentTs|date_format:"%d"}','day_view','{$category}','{$calendarTemplate}','{$calendarpageid}','{$publication.id}', {$maxDisplayed});
	</script>
{/if}
{if $module.featured_only == "yes"} {* Workaround for ajax events not knowing which view they're using *}
	{literal}
	<style>
		tr.event-listing {
			display: none !important;
		}
		tr.event-listing.featured {
			display: table-row !important;
		}
		.dayevents .accordion .accordion-group {	
			display: none !important;
		}	
		.dayevents .accordion .accordion-group.featured {	
			display: block !important;
		}			
	</style>
	{/literal}
{/if}
<script>
	RivistaAjax.bindCalendarEvents({$calendar.id},'{$calendarpageid}','{$publication.id}');
</script>