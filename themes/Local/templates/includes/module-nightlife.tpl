<div>
<a href="/417-Magazine/417-Calendar/Calendar/"><img alt="Nightlife"  src="/images/elements/headers/bar/nightlife.jpg" /></a>
</div>
<div class="boxcontent">
<table cellspacing="0" cellpadding="5" width="100%" align="center" border="0" >
    <tbody>
      {calGetLatestEvents calendarid="13" category="Happy Hours" random="$gbRandom" max="100" assign="events"}
      {section loop=$events name="x" max="20"}	
	 <tr>
	     <td style="border-bottom:1px solid #cbcbcb;">
		<a href="/417-Magazine/417-Calendar/Calendar/?view=view_event&itm={$events[x].id}">{if $events[x].image<>''}<img width="75" height="75" alt="" src="{$events[x].image}" />{else}<img width="75" height="75" alt="" src="/images/elements/food-wine.jpg" />{/if}</a>
	     </td>

            <td valign="top" width="100%" style="border-bottom:1px solid #cbcbcb;">
		<div class="header-left"><a href="/417-Magazine/417-Calendar/Calendar/?view=view_event&amp;itm={$events[x].id}">{$events[x].title}</a></div>
               {$events[x].description|striptags|truncate:100}
	     </td>

	 </tr>
		{if $smarty.section.x.last}
		{else}
		{/if}
		{/section}	
         <tr>
		<td colspan="2"><div class="article-byline"><a href="https://www.417mag.com/417-Magazine/417-Calendar/Submit-an-Event/">Submit an event</a></div>
		</td>
	  </tr>
         
    </tbody>
</table>
</div>
