{addjs file="bootstrap-datepicker.js" position="footer" order="99"}
{addjs file="calendar.datepicker.init.js" position="footer" order="100"}

<form class="calendar-search-filters-form" name="event" method="get" action="{$Page->path}">
    <div class="control-group">
        <div class="control-label"><label for="categoryfilter">Category:</label></div>
        <div class="controls">
        {picklist name="categoryfilter" list=$categories selected=$category displayfield="title" keyfield="title"}
        </div>
    </div>
    <div class="control-group">
        <div class="control-label"><label for="categoryfilter">{$strings_calendar_search_filters_daterange}</label></div>
        <div class="controls">
        {picklist name="date_range" list=$dateLimits selected=$calendar.params.default_initial_date_range id="calendar_date_range_select" selected=$daterange}
        </div>
    </div>    
    <div class="control-group">
        <div class="control-label"><label for="dp1">{$strings_calendar_search_filters_startdate}</label></div>
        <div class="controls"><div class="input-append date datepicker" id="dp1" data-date="{$startdate|dateformat:'%Y-%m-%d'}" data-date-format="yyyy-mm-dd">
            <input class="input-medium" size="16" type="text" name="startdate" value="{$startdate|dateformat:'%Y-%m-%d'}"><span class="add-on"><i class="icon-th"></i></span>
        </div></div>
    </div>

    <div class="control-group">
        <div class="control-label"><label for="dp2">{$strings_calendar_search_filters_enddate}</label></div>
        <div class="controls"><div class="input-append date datepicker" id="dp2" data-date="{$enddate|dateformat:'%Y-%m-%d'}" data-date-format="yyyy-mm-dd">
            <input class="input-medium" size="16" type="text" name="enddate" value="{$enddate|dateformat:'%Y-%m-%d'}"><span class="add-on"><i class="icon-th"></i></span>
        </div></div>
    </div>
    {if $calendar.params.differentiate_reader_events == 'yes'}
        <div class="control-group">
            <div class="control-label"><label for="reader_submitted">{$strings_calendar_search_filters_eventtype}</label></div>
            <div class="controls">
                <div class="event-type-filter">
                    <input id="reader_submitted" class="checkbox" size="16" type="checkbox" {if $showreadersubmitted=="on" || $firstload} checked="checked"{/if} name="show_reader_submitted" /> {$strings_calendar_search_filters_showreaderevents}
                </div>
            </div>
        </div>    
    {else}
        <input id="reader_submitted" type="hidden" name="show_reader_submitted" value="on">
    {/if}
{* display additional custom filters *}
{* loop through the customfields array and display a drop down for each available filter *}
{if $calendar.customfields|@count}
    {foreach from=$calendar.customfields item="item"}
        {if istrue($item.params.isfilter)}

            <label>{$item.label}</label>
            {assign var="selectedFilterValue" value=""}
            {assign var="filterParamName" value="calendarfilters_"|cat:$item.fieldname}
            {if isset($Page->params.$filterParamName)}
                {assign var="selectedFilterValue" value=$Page->params.$filterParamName}
            {/if}
            {if $item.fieldtype=="yesno"}
                {picklist name="calendarfilters_"|cat:$item.fieldname|urlencode firstitem="" list=","|split:"Yes,No" selected=$selectedFilterValue}
                {else}
                {picklist name="calendarfilters_"|cat:$item.fieldname|urlencode firstitem="" list="\n"|split:$item.options selected=$selectedFilterValue}
            {/if}

        {/if}
    {/foreach}
{/if}
    <input type=hidden name="view" value="search_event">
    <div class="control-group">
        <input class="input-block-level" type="text" id="search" name="search"  value="{$Page->params.search}" placeholder="Search for:"/>
    </div>
    <div class="controls">
        <button type="submit" class="btn" name="submit" value="Search" id="formbutton">{$calendar_filters_action}</button>
    </div>
</form>