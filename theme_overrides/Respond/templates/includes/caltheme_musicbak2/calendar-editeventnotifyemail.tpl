An  event has been updated.

This event needs to be approved!

Please login to the Rivista Admin website and go to Publishing  -> Calendar Editor
to approve the event.


CALENDAR: {$calendar.title}

POSTED BY:
Title:{$user.title}
First name: {$user.firstname}
Last name: {$user.lastname}
Email: {$user.email}


EVENT INFORMATION:
{if $oldValues.title<>$event.title || $oldValues.cost<>$event.cost || $oldValues.categoryid<>$event.categoryid || $oldValues.description <>$event.description }
{if $oldValues.title<>$event.title}
Title: {$event.title} [old value: {$oldVlaues.title}] 
{/if}
{if $oldValues.cost<>$event.cost}
Cost: {$event.cost} [old value: {$oldValues.cost}] 
{/if}
{if $oldValues.categoryid<>$event.categoryid }
Category:{$calendar.categories[$event.categoryid].title} 
{/if}
{if $oldValues.description <>$event.description }
Description:
{$event.description}
[old value : {$oldValues.description}]
{/if}
{else} 
<em> No changes</em>
{/if}

{if $oldValues.startdate<>$event.startdate || $oldValues.enddate<>$event.enddate  }
WHEN?:
{$event.startdate|dateformat:"M j, Y"}{if $event.startdate <> $event.enddate} to {$event.enddate|dateformat:"M j, Y"}{/if} [old value: {$oldValues.startdate|dateformat:"M j, Y"}{if $oldValues.startdate <> $oldValues.enddate} to {$oldValues.enddate|dateformat:"M j, Y"}{/if}]
{/if}
{if $oldValues.starttime<>$event.starttime || $oldValue.endtime<>$event.endtime  }
{$event.starttime|dateformat:"g:i a"}{/if}{if $event.endtime<>'' && $event.starttime<>$event.endtime} until {$event.endtime|dateformat:"g:i a"} [old value: {$oldValue.starttime|dateformat:"g:i a"}{/if}{if $oldValues.endtime<>'' && $oldValues.starttime<>$event.endtime} until {$oldValues.endtime|dateformat:"g:i a"}]
{/if}

WHERE?:
{if $oldValues.location<>$event.location || $oldValues.address <> $event.address || $oldValues.address2<>$event.address2 || $oldValues.city<> $event.city}
{if $oldValues.location<>$event.location}
{$event.location} [old value : {$oldValues.location}]
{/if}
{if $oldValues.address<>$event.address}
{$event.address} [old value : {$oldValues.address}]
{/if}
{if $oldValues.address2<>$event.address2}
{$event.address2} [old values : {$oldValuest.address2}]
{/if}
{if $oldValues.city<>$event.city}
{$event.city} [old value : {$oldValues.city} ]
{/if}
{if $oldValues.state<>$event.state}
{$event.state} {$event.zip} [old values: {$oldValues.state} {$oldVaues.zip}]
{/if}
{else}
<em> No changes</em>
{/if}

FOR MORE INFORMATION:
{if $oldValues.sponser<>$event.sponsor}
Sponsor: {$event.sponsor} [old values : {$oldValues.sponser}]
{/if}
{if $oldValues.phone <> $event.phone }
Telephone: {$event.phone} [old value : {$oldValues.phone}]
{/if}
{if $oldValues.contactname<>$event.contactname}
Contact name: {$event.contactname} [old value : {$oldValues.contactname}]
{/if}
{if $oldValues.url<>$event.url}
Website: {$event.url} [old value : {$oldValues.url}]
{/if}
{if $mid}

Review in Rivista backend:
https://{$SERVERINFO.SERVER_NAME}/admin/pages/Publishing/index.php?mid={$mid}&view=edit_calendarevent&itm={$event.id}&calendarid={$event.calendarid}
{/if}
