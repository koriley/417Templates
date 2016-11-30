{addcss file="music.css" order="9999999999"}
{*
// This is a combo file of module.calendarview.month.tpl and base.calendarview.month.tpl
// The reason for this file is to edit the search to display just search and not any custom field searches.
// That is the only change, later the search will be moved after load via jQuery so the search for the calendar shows up in custom menu
// for the music Calendar. - Kevin O'Riley 417 Magazine
*}
<div class="monthly-view module{if $module.class<>''} {$module.class}{/if}"{if $module.id<>''} id="{$module.id}"{/if}>
    <h2>{$module.title}</h2>
    <div class="content">
        {execModule name="OpsCalendar" view="mini_view" calendarid=$module.calendarid categoryfilter=$module.categoryfilter autoShowTodaysEvents=$module.autoShowTodaysEvents loadEventDescriptions=$module.loadEventDescriptions calendarpageid=$module.calendarpageid}
        <div class='menuSearch' style=''>   
           {include file="caltheme_music/calendar_search_clean.tpl"}
        </div>
        {if $calendar.calendarurl}    
            <ul class="chevron">
                <!--<li><a href="{$calendar.calendarurl}">View all listings &raquo;</a></li>-->
                {*if istrue($calendar.ispublic)} 
                <li><a href="{$calendar.calendarurl}index.php?view=new_event">Submit an Event &raquo;</a></li>
                {/if*}
            </ul>
        {/if}    
    </div>
</div>
{*execModule name="OpsCalendar" view="week_view" calendarid=$module.calendarid categoryfilter=$module.categoryfilter calendarpageid=$module.calendarpageid*}
    
<div id='toHover' style='display:none;'>
    {if $calendar.customfields|@count}

        {foreach from=$calendar.customfields item="item"}
            {assign var=gen value="\n"|split:$item.options}
            {assign var=cnt value=$gen|@count}
            {math equation="ceil(cnt/4)" cnt=$gen|@count assign=dv}
            {if istrue($item.params.isfilter)}
                <div class='span3 genList'>
                {section name="i" loop=$gen}
                    <a href='http://www.417mag.com/417-Live-Music-Calendar/?submit=Search&view=search_event&calendarfilters_genre={$gen[i]}'> {$gen[i]}</a>
                {if $smarty.section.i.iteration % $dv == 0 AND $smarty.section.i.iteration-1 < $cnt}
                    </div> <div class='span3 genList'>
                    {/if}
                {/section} 
                </div>
            {/if}
        {/foreach}
    {/if}
</div>
 