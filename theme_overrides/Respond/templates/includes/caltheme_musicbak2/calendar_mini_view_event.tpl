<div id="event_{$event.id}" class="event">
	<h5>{$event.startdate|dateformat:"M d, Y"}{if $event.enddate!=$event.startdate} - {$event.enddate|dateformat:"M d, Y"}{/if}
	{$event.starttime}{if $event.starttime!=$event.starttime} - {$event.endtime}{/if}</h5>
	<div class="eventcontainer">
		<p>{$event.description}</p>
		{if $event.cost<>''}<p><strong>Cost:</strong> {$event.cost}</p>{/if}
		<p><strong>Where?</strong><br />
		{if $event.location <>''}{$event.location}<br />{/if}
		{if $event.address<>''}{$event.address}<br />{/if}
		{if $event.address2<>''}{$event.address2}<br />{/if}
		{if $event.city<>''}{$event.city}{/if}{if $event.state<>''},&nbsp;{$event.state}{/if}{if $event.zip<>''}&nbsp;&nbsp;{$event.zip}{/if}
		<br />
		{if $event.address<>''}
		<a href="http://maps.google.com/maps?q={$event.address}+{$event.address2},+{$event.city},+{$event.state}+{$event.zip}&hl=en" target="new"><b>View map &raquo;</b></a>
		{/if}
		</p>
		{if $event.sponsor || $event.phone || $event.contactname || $event.url}
		<p><strong>For more information:</strong><br />
		{if $event.sponsor}Sponsor: {$event.sponsor}<br />{/if}
		{if $event.phone}Telephone: {$event.phone|format:"ddd-ddd-dddd"}<br />{/if}
		{if $event.contactname}Contact name: {$event.contactname}<br />{/if}
		{if $event.contactemail}Email: {$event.contactemail}<br />{/if}		
		{assign var=$event.url value=$event.url|replace:'http://',''}
		{if $event.url<>'' && $event.url<>'http://'}<strong><a href="{if ereg("http",$event.url)}{$event.url}{else}http://{$event.url}{/if}" target="_blank">Website &raquo;</a></strong>{/if}
		</p>
		{/if}
		<p><a href="{$calendar.calendarurl}index.php?view=view_event&itm={$event.id}"><em>{$event.title}</em> event details &raquo;</a></p>
	</div>
</div>