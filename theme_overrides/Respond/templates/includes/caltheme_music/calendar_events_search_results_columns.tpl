		{if count($calendar.events)>0}
		<table id="calendar-listings">
        <tr>
        	<th class="date-time-column"><a href="{sortlink field="startdate"}">Date and Time</a></th>
            <th class="description-column"><a href="{sortlink field="title"}">Description</a></th>
            <th class="city-column"><a href="{sortlink field="city"}">City</a></th>
            <th class="category-column">Categories</th>
        </tr>
		{assign var="id" value="0"}
		{section name="x" loop=$calendar.events max=10 start=$Page->params.sievents|default:0}
		{strip}
		{assign var="event" value=$calendar.events[x]}
			<tr>{pageurl assign='eventUrl' reset=true name=$event.title|nametopath event=$event.id filter='seo_url_filter'}
            	<td>{$event.eventdate|dateformat:"%b %e, %Y"}{if $event.enddate!=$event.startdate} -<br>{$event.enddate|dateformat:"%b %e, %Y"}{/if}
                {if $display_recur_info}{include file="caltheme_music/calendar_eventdatedetails.tpl"}{/if}</td>
                <td><h3><a href="{$eventUrl}">{$event.title}</a></h3>
                {if $event.image<>''}
                <img src="{imagesizer src=$event.image w=75}" alt="{$event.title}" />
                {/if}
                {if $event.description != ''}{$event.description|strip_tags:false|truncate:200}{/if}</td>
                <td>{$event.city}</td>
                <td><ul>
                	{foreach from=$event.categories item="event_category"}
                	<li>{$event_category.title}</li>
                	{/foreach}
                    </ul>
                </td>
			</tr>
		{/strip}
		{/section}
		</table>
		{else}
		<p>{$calendar_listevents_noresults}</p>
		{/if}
		
		{if $Page->params.mode !="print"}
		{pager name="events" style="link" data=$calendar.events maxpages=10 rowsperpage=10}
		{/if}