  {addjs file="Rivista_ajax.js"}

{if $Page->params.category != ""}
	{assign var="category" value=$Page->params.categoryfilter}
{/if}

{strip}
<div class="weekly-calendar" id="calendar_{$calendar.id}" calendar_category="{$category}">
	<h3>{$currentdate|dateformat:"%B %Y"}</h3>
	<div class="calendar-controls btn-group">
		<a href="#" class="load_calendar previous btn" template="calendar_weekview" calendar_request_date="{$predate|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$predate|dateformat:"F d, Y"}">{$strings_calendarview_weekly_previous_week_button}</a>
		<a href="#" class="load_calendar current btn" template="calendar_weekview" calendar_request_date="{$now|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$now|dateformat:"F d, Y"}">{$strings_calendarview_weekly_current_week_button}</a>
		<a href="#" class="load_calendar next btn" template="calendar_weekview" calendar_request_date="{$nextdate|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$nextdate|dateformat:"F d, Y"}">{$strings_calendarview_weekly_next_week_button}</a>
	</div>
	<div class="weekly-calendar-wrapper">
		<div class="tabbable">
			<ul class="nav nav-tabs">
					{foreach item="event" key="key" from=$data}
					<li {if $key|capitalize == $now|dateformat:'%a'}class="active"{/if}>
						<a data-toggle="tab" href="#{$key}_{$calendar.id}">{$key|capitalize}<br />{$daydate[$key]|dateformat:"d"}</a>
					</li>
					{/foreach}
			</ul>
			<div class="tab-content" id="week_{$calendar.id}">
				{foreach item="events" key="key" from=$data}
    				<div id="{$key}_{$calendar.id}" class="tab-pane {if $key|capitalize == $now|dateformat:'%a'}active{/if}">
    				{if $events[0].title == "[ No events ]"}
    					<div class="no-events">{$strings_calendarview_weekly_no_events}</div>
    				{else}
    					{include file="caltheme_music/calendar_event_list.tpl"}
    				{/if}
    				</div>
				{/foreach}
			</div>
		</div>
		<div class="ajaxloader"></div>
	</div>
</div>
{/strip}

<script>
	RivistaAjax.bindCalendarEvents({$calendar.id},'{$calendarpageid}','{$publication.id}');
</script>  
