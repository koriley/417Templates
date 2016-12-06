<div>
<a href="/417-Magazine/417-Calendar/Calendar/"><img style="margin-left:-17px;" alt="417 Calendar"  src="/images/elements/headers/wraps/todaysevents.gif" /></a>
</div>
<div class="boxcontent">
<table cellspacing="0" cellpadding="0" width="95%" align="center" border="0" id="mini-calendar">
    <tbody>
      {calGetLatestEvents calendarid=2}
      {section name=x loop=$events max=6}	
      
	    <tr>
           <!--<td class="event-date" valign="top" ><a class="event-date" href="/417-Magazine/417-Calendar/Calendar/?view=view_event&amp;itm={$events[x].id}">
            {if $events[x].startdate<>''}{$events[x].startdate|date_format:$config.shortdateformat}
            {if $events[x].todate<>''} to {$events[x].enddate|date_format:$config.shortdateformat}{/if}{/if}</a></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>-->
            <td valign="top" width="100%"><a class="event-link" href="/417-Magazine/417-Calendar/Calendar/?view=view_event&amp;itm={$events[x].id}">{$events[x].title}</a></td>
        </tr>
		{if $smarty.section.x.last}
		{else}
        
		{/if}
		
		{/section}	
         <tr><td><div class="article-byline"><a href="https://www.417mag.com/417-Magazine/417-Calendar/Submit-an-Event/">Submit an event</a></div>
</td></tr>
         <tr><td><div class="article-byline"><a href="http://www.417mag.com/417-Magazine/Events-Contests/">417 Magazine Events</a></div>
</td></tr>
    </tbody>
</table>
</div>
