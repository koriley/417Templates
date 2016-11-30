{addcss file="calendar-month-view.css"}
{addjs file="Rivista_ajax.js"}
{if $loadEventDescriptions === "no"}
	{assign var="calendarTemplate" value="calendar_day.tpl"}
{else}
	{assign var="calendarTemplate" value="calendar_day_ajax.tpl"}
{/if}

{if $Page->params.category != ""}
	{assign var="category" value=$Page->params.categoryfilter}
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
		RivistaAjax.loadCalendar({$calendar.id}, '{$currentTs|date_format:"%Y"}','{$currentTs|date_format:"%m"}','{$currentTs|date_format:"%d"}','day_view','{$category}','{$calendarTemplate}','{$calendarpageid}');
	</script>
{/if}
<script>
	RivistaAjax.bindCalendarEvents({$calendar.id},'{$calendarpageid}','{$publication.id}');
</script>