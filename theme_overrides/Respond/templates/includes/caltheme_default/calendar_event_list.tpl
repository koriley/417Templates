{assign var="maxHeight" value=$module.maxHeight|default:250}
<style>
@media(min-width: 979px){ldelim}
    div.accordion{ldelim}
        max-height: {$maxHeight}px !important;
    {rdelim}
{rdelim}
</style>
<div class="accordion calendar-events-list" style='max-height: {$maxHeight}px;' data-maxheight="{$maxHeight}px;">
   {foreach item="event" from=$events key=index}
    	{if $event.title<>"[ No events ]"}
    		<div class="accordion-group {if $event.params.featured == 'yes'} featured {/if}">
    			<div class="accordion-heading">
          			<a class="accordion-toggle" data-toggle="collapse" data-parent="#{if $key<>''}{$key}{else}calendar{/if}_{$calendar.id}" href="#{$key}_{$calendar.id}_event_{$event.id}">
          				{if $event.starttime<>''}<span class="event-time">{$event.starttime}{if $event.starttime != $event.endtime && $event.endtime<>''} - {$event.endtime}{/if}</span>{/if}<span class="event-title">{$event.title}</span><span class="caret-wrapper"><span class="caret"></span></span>
          			</a>
        		</div>
        		<div id="{$key}_{$calendar.id}_event_{$event.id}" class="accordion-body collapse">
                	<div class="accordion-inner">
                    	{include file="caltheme_default/calendar_view_event.tpl"}
                    </div>
                </div>
    		</div>
    	{/if}
    {/foreach}
</div>

<br />
<div class='btn calendar-show-more'>{$strings_calendar_show_more_results}</div>
<div class='btn calendar-show-less' data-max-displayed="{$maxDisplayed}">{$strings_calendar_show_less_results}</div>