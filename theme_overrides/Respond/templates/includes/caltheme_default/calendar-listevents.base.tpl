<div class="row-fluid visible-phone">
	<div class="span12 calendar-sidebar">
        <ul class="nav nav-tabs nav-stacked nav-icons" id="calendar-search">
        	<li>
        		<a data-toggle="collapse" data-target="#calendar-search-container" data-parent="calendar-search">{$calendar_filters_action} {$calendar.title}<i class="icon-chevron-down"></i></a>
        		<div class="collapse search-filter" id="calendar-search-container">
                	{include file="caltheme_default/calendar_search_filters.tpl"}
           		 </div>
        	</li>
        	{include file="caltheme_default/calendar_main_links.tpl"}
		</ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span8 calendar-results">
        <div class="calendar-body module">
        {include file="caltheme_default/calendar_events_search_results.tpl"}
        </div>
    </div>
    {if $Page->params.mode !="print"}
    <div class="span4 calendar-sidebar">
        <div class="search-filter module hidden-phone">
            <h2>{$calendar_filters_action} {$calendar.title}</h2> 
            <div class="content">
            	{include file="caltheme_default/calendar_search_filters.tpl"}
            </div>
        </div>
        <ul class="nav nav-tabs nav-stacked nav-icons hidden-phone">
            {include file="caltheme_default/calendar_main_links.tpl"}
        </ul>
        {loadModules position="right"}
    </div>
    {/if}
</div>

