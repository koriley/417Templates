<div class="right-header">
<h2><a href="/417-Magazine/417-Calendar/Calendar/">417 CALENDAR</a></h2>
</div>
<div class="boxcontent">
<table cellspacing="0" cellpadding="0" width="98%" align="center" border="0" class="mini-calendar">
    <tbody>
      {calGetLatestEvents calendarid=2}
      {section name=x loop=$events max=6}	
        <tr style="margin-top:10px; border-bottom:1px dashed #e2e2e2; ">
            <td colspan="2" class="event-date" valign="top"><a class="event-date" href="/417-Magazine/417-Calendar/Calendar/?view=view_event&amp;itm={$events[x].id}">{if $events[x].startdate<>''}{$events[x].startdate|date_format:$config.shortdateformat}
            {if $events[x].enddate<>''} to {$events[x].enddate|date_format:$config.shortdateformat}{/if}{/if}</a></td>
		
	</tr>
	<tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td valign="top" width="100%"><a class="event-link" href="/417-Magazine/417-Calendar/Calendar/?view=view_event&amp;itm={$events[x].id}">{$events[x].title}</a></td>
        </tr>
	
        {if $smarty.section.x.last}
		{else}
        <tr>
            <td bgcolor="#ffffff" colspan="3" style="padding: 0"><img height="1" alt="" width="1" border="0" src="/images/blank.gif" /></td>
        </tr>
		{/if}
		{/section}		
    </tbody>
</table>
</div>
