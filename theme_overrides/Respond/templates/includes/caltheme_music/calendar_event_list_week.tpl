  {foreach item="events" key="key" from=$data}
	<div id="{$key}_{$calendar.id}" class="tab-pane {if $key|capitalize == $now|dateformat:'%a'}active{/if}">
	{if $events[0].title == "[ No events ]"}
		<div class="no-events">{$strings_calendarview_weekly_no_events}</div>
	{else}
			<div class="accordion">
			{foreach item="event" from=$events}
				{if $event.title<>"[ No events ]"}
				<div class="accordion-group">
					<div class="accordion-heading {if $event.params.featured == 'yes'} featured {/if}">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#{$key}_{$calendar.id}" href="#{$key}_{$calendar.id}_event_{$event.id}">
							{if $event.starttime<>''}<span class="event-time">{$event.starttime}{if $event.starttime != $event.endtime && $event.endtime<>''} - {$event.endtime}{/if}</span>{/if}<span class="event-title">{$event.title}</span><span class="caret-wrapper"><span class="caret"></span></span>
						</a>
					</div>
					<div id="{$key}_{$calendar.id}_event_{$event.id}" class="accordion-body collapse">
            <div class="accordion-inner">
          		{include file="caltheme_music/calendar_view_event.tpl"}
            </div>
          </div>
				</div>
				{/if}
			{/foreach}
			</div>
	{/if}
	</div>
{/foreach}
 
