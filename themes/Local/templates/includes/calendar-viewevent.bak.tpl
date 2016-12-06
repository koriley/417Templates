<div id="calendar-main">	
		{include file="pagetools.tpl"}
		<h1>{$event.title}</h1>
		<table class="event">
		<tr>
			<th>Date</th>
			<td><h4>{$event.startdate|dateformat:"M j, Y"}{if $event.startdate<>$event.enddate} to {$event.enddate|dateformat:"M j, Y"}{/if}<br />
		{if $event.starttime<>''}{$event.starttime|dateformat:"g:i a"}{/if}{if $event.endtime<>'' && $event.starttime<>$event.endtime} until {$event.endtime|dateformat:"g:i a"}{/if}</h4></td>
		</tr>
		{if $event.description<>'' || $event.image<>''}
		<tr>
			<th>Description</th>
			<td>
				<p class="event-description">{if $event.image<>''}
				<div class="right-justify-pic image-container">
   				<img src="/core/includes/phpThumb/phpThumb.php?src={$event.image}&amp;w=145" alt="{$event.title}" text-align="left"/>
   				{if $event.photodescription<>''}<p>{$event.photodescription}</p>{/if}
 				</div>
				{/if}{$event.description}</p>
			</td>
		</tr>
		{/if}
		{if $event.cost<>''}
		<tr>
			<th>Cost</th>
			<td>{$event.cost}</td>
		</tr>
		{/if}
		<tr>
		<th>Location</th>
		<td><p class="event-description">
{if $event.location<>''}{$event.location}<br />{/if}		
{if $event.address<>''}{$event.address}<br />{/if}
		{if $event.address2<>''}{$event.address2}<br />{/if}
		{$event.city}{if $event.state<>''}, {$event.state}{/if}<br />
		{if $event.address<>''}
		<a href="http://maps.google.com/maps?q={$event.address}+{$event.address2},+{$event.city},+{$event.state}+&hl=en" target="new"><b>View map &raquo;</b></a>{/if}</p>
		</td>
		</tr>
		<tr>
		<th>Additional Information</th>
		<td>
		{if $event.sponsor || $event.phone || $event.contactname || $event.url}
		<p><strong>For more information:</strong></p>
		<p>{$event.sponsor}</p>
		<p class="event-description">
		{if $event.phone}<strong>Telephone:</strong> {$event.phone|format:"ddd-ddd-dddd"}<br />{/if}
		{if $event.contactname}<strong>Contact name:</strong> {$event.contactname}<br />{/if}
		{if $event.params.email}<strong>Contact email:</strong> {$event.params.email}{/if}		
		{assign var=$event.url value=$event.url|replace:'http://',''}
		{if $event.url<>'' && $event.url<>'http://'}<strong>Website:</strong> <a href="{if ereg("http",$event.url)}{$event.url}{else}http://{$event.url}{/if}" target="_blank">{$event.url}</a>{/if}
		</p>
		{/if}
		</td>
		</tr>
		</table>
		<p class="subcontent">
		<em>We make every effort to ensure the accuracy of this information. However, you should always call ahead to confirm dates, times, location, and other information.</em>
		</p>
</div>
<div id="calendar-sidebar">
		<ul class="child-page-menu">
		    {if $event.calendarid == 3}
			<li><a href="index.php?search=&categoryfilter=All&startmonth=7&startday=1&startyear=2007&endmonth={$smarty.now|date_format:'%m'}&endday={$smarty.now|date_format:'%d'}&endyear={$smarty.now|date_format:'%Y'}&view=search_event&submit=Search">Calendar Home &raquo;</a></li>
			{else}
			<li><a href="index.php">Calendar Home &raquo;</a></li>
			{/if}
			{if istrue($calendar.ispublic)}
			<li><a href="./?view=new_event">Submit an event &raquo;</a></li>
			{/if}
		</ul>
	{loadModules position="right"}
</div>