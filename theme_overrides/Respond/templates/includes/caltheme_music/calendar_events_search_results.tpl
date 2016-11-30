  {addjs file="dateparse.js" position="footer"}
{addjs file="CalendarEventsSearcher.class.js" position="footer"}

{if $Page->params.mode !="print"}
    {pager class="pagination pagination-centered hidden-phone" name="events" style="link" data=$calendar.events maxpages=10 rowsperpage=10}
{/if}
{if isset($config.caldateformat)}
    {assign var="calendardateformat" value=$config.caldateformat}
{else}
    {assign var="calendardateformat" value="%b %e, %Y"}
{/if} 
{if count($calendar.events)>0}
<section id="calendar-listings">
    {assign var="id" value="0"}
    {section name="x" loop=$calendar.events max=10 start=$Page->params.sievents|default:0}
        {strip}
            {assign var="event" value=$calendar.events[x]}
            {calGetEventCategories varname="eventcategory" eventid=$calendar.events[x].id}
            <article class="event-listing {if $event.params.featured == 'yes'} featured {/if}">
                {pageurl assign='eventUrl' reset=true name=$event.title|nametopath event=$event.id filter='seo_url_filter'}
                <div class="event-header">
                    {if $event.params.readersubmitted == 'yes' && $calendar.params.differentiate_reader_events == 'yes'}
                        <p class="reader-submitted">{$strings_calendar_listevent_reader_submitted}</p>
                    {/if}                    
                    <h2><a href="{$eventUrl}">{$event.title}</a></h2>
                    {if $calendar.params.display_event_location == "yes" && $event.location != ""}
                        <p class="event-location">
                            {$event.location}
                        </p>
                    {/if}
                    <p class="event-date">
                        {$event.eventdate|dateformat:$calendardateformat}{if $event.enddate!=$event.startdate} - {$event.enddate|dateformat:$calendardateformat}{/if}
                        {if $calendar.params.display_event_time == "yes" && $event.params.starthour != ""}
                            &nbsp;{$strings_calendar_at_time}&nbsp;{$event.params.starthour}:{$event.params.starttime}&nbsp;{$event.params.starttimeampm}
                        {/if}
                    </p>
                </div>
                <div class="event-body">
                    <div class='calendar-list-data'>
                        {include file="caltheme_music/calendar_eventdatedetails.tpl"}
                        <div class="event-desc">
                            {if istrue($calendar.params.display_search_images) && $event.image != ""}
                                <div class='calendar-list-image' style="width: {$calendar.params.eventimagesize|default:100}px"><img src="{$event.image}"/></div>
                            {/if}
                            {if $event.description != ''}
                                {$event.description|strip_tags:false|truncate:400}
                            {/if}
                            <p class="event-detail"><a href="{$eventUrl}"><strong>View event details</strong></a></p>
                            {if istrue($calendar.params.display_event_categories) && $eventcategory }
                                <div class="event-categories">
                                    {section name="c" loop=$eventcategory}
                                        <a class="event-category" href="{$smarty.server.PHP_SELF}/?categoryfilter={$eventcategory[c].title}">{$eventcategory[c].title}</a>
                                    {/section}
                                </div>
                            {/if}
                        </div>
                    </div>
                </div>
            </article>
        {/strip}
    {/section}
</section>
    {else}
<p>{$calendar_listevents_noresults}</p>
{/if}
{if $Page->params.mode !="print"}
    {pager class="pagination pagination-centered" name="events" style="link" data=$calendar.events maxpages=10 rowsperpage=10}
{/if}
{literal}
    <script>
       
            //jQuery('.newResize').removeClass('span3');
            //jQuery('.newResize').addClass('span12');
            jQuery('#calendar-listings').appendTo('#calendarPlace');
            jQuery('.calendar-results').hide();
            jQuery('.calendar-sidebar').removeClass('span4');
            jQuery('.calendar-sidebar').addClass('span12');
       
    </script>
{/literal} 
