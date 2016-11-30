 {addcss file="music.css" order="9999999999"}
<div class="calendar-preview module{if $module.class<>''} {$module.class}{/if}"{if $module.id<>''} id="{$module.id}"{/if}>
              <h2>{$module.title}</h2>
              <div class="content">
              
              {if $module.categoryfilter<>''}
              {calGetLatestEvents calendarid=$module.calendarid max=$module.max category=$module.categoryfilter calendarpageid=$module.calendarpageid}
              {else}
              {calGetLatestEvents calendarid=$module.calendarid max=$module.max calendarpageid=$module.calendarpageid}
              {/if}
              {section name=x loop=$events}
                <div >{if $events[x].image<>''}<a href="{$events[x].calendarurl}index.php?view=view_event&itm={$events[x].id}"><img src="{imagesizer src=$events[x].image w=75 h=75 zc=1 q=90}" alt="{$events[x].title}" /></a>{/if}
                  <h4><a href="{$events[x].calendarurl}index.php?view=view_event&itm={$events[x].id}">{$events[x].title}</a></h4>
                  <h5>{if $events[x].startdate<>''}{$events[x].startdate|dateformat:$config.shortdateformat}
                  {if $events[x].todate<>''} to {$events[x].enddate|dateformat:$config.shortdateformat}{/if}{/if}</h5>
	          	  <p>{$events[x].description|strip_tags:false|truncate:150:"...":false}</p>
                </div>
              {/section}
				{*}<form method="get" name="event" action="{$events[0].calendarurl}">
				<table class="calendar-search">
				<tbody>
					<tr>
						<td>Search for:</td><td><input type="text" name="search" id="search" /></td>
					</tr> 
					<tr>
						<td class="last"><input type="hidden" value="search_event" name="view" /></td><td><input type="submit" id="formbutton" value="Search" name="submit" /></td>
					</tr>
				</tbody>
				</table>
				</form>
				<ul class="chevron">
					<li><a href="{$events[0].calendarurl}">View all listings</a></li>
					<li><a href="{$events[0].calendarurl}index.php?view=new_event">Submit an Event</a></li>
				</ul>{*}
              </div>
</div>
                                <div style="display:none">
{execModule name="OpsCalendar" view="mini_view" calendarid=$module.calendarid categoryfilter=$module.categoryfilter autoShowTodaysEvents=$module.autoShowTodaysEvents loadEventDescriptions=$module.loadEventDescriptions calendarpageid=$module.calendarpageid}
                                </div>
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
<div class='menuSearch' style=''>   
            <form method="get" name="event" action="{$calendar.calendarurl}">
                <table class="calendar-search">
                    <tr>

                        <td><div class="input-append" name="search">
                                <input  id="search" type="text" placeholder="Search">
                                <input class="add-on" type="submit" id="formbutton" value="Search" name="submit" style="height:auto;" />
                            </div></td>
                        <td class="last"><input type="hidden" value="search_event" name="view" /></td>
                    </tr>
                </table>
            </form>
        </div>
                 