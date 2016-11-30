   <p>{$event.description|strip_tags:false|truncate:200:"...":false}</p>
{if $event.cost<>''}<p><strong>{$strings_calendarview_event_cost} {$event.cost}</strong></p>{/if}
<p><strong>{$strings_calendarview_event_where}</strong><br />
{if $event.location <>''}{$event.location}<br />{/if}
{if $event.address<>''}{$event.address}<br />{/if}
{if $event.address2<>''}{$event.address2}<br />{/if}
{if $event.city<>''}{$event.city}{/if}{if $event.state<>''},&nbsp;{$event.state}{/if}{if $event.zip<>''}&nbsp;&nbsp;{$event.zip}{/if}
<br />
{if $event.address<>''}
<a href="http://maps.google.com/maps?q={$event.address}+{$event.address2},+{$event.city},+{$event.state}+{$event.zip}&hl=en" target="new"><b>{$strings_calendarview_event_map}</b></a>
{/if}
</p>
{if $event.sponsor || $event.phone || $event.contactname || $event.url}
<p><strong>{$strings_calendarview_more_information_leadin}</strong><br />
{if $event.sponsor}{$strings_calendarview_event_sponsor} {$event.sponsor}<br />{/if}
{if $event.phone}{$strings_calendarview_event_phone} {$event.phone|format:"ddd-ddd-dddd":true}<br />{/if}
{if $event.contactname}{$strings_calendarview_event_contact_name} {$event.contactname}<br />{/if}
{if $event.contactemail}{$strings_calendarview_event_contact_email} {$event.contactemail}<br />{/if}
{assign var=$event.url value=$event.url|replace:'http://',''}
{if $event.url<>'' && $event.url<>'http://'}<strong><a href="{if ereg("http",$event.url)}{$event.url}{else}http://{$event.url}{/if}" target="_blank">{$strings_calendarview_event_website}</a></strong>{/if}
</p>
{/if}
<a class="event-link btn btn-small" href="{$calendar.calendarurl}index.php?view=view_event&itm={$event.id}">{$strings_calendarview_event_more_info}</a>
 
