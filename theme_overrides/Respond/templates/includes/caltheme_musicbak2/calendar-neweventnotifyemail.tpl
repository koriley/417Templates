A new event has been entered.

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
Title: {$event.title}
Cost: {$event.cost}
Description:
{$event.description}


WHEN?:
{$event.startdate|dateformat:"M j, Y"}{if $event.startdate <> $event.enddate} to {$event.enddate|dateformat:"M j, Y"}{/if}

{if $event.starttime <> ''}
{$event.starttime|dateformat:"g:i a"}{/if}{if $event.endtime<>'' && $event.starttime<>$event.endtime} until {$event.endtime|dateformat:"g:i a"}
{/if}

WHERE?:
{if $event.location<>''}
{$event.location}
{/if}
{if $event.address<>''}
{$event.address}
{/if}
{if $event.address2<>''}
{$event.address2}
{/if}
{$event.city}{if $event.state<>''}, {$event.state} {$event.zip}
{/if}

FOR MORE INFORMATION:
{if $event.sponsor<>''}
Sponsor: {$event.sponsor}
{/if}
{if $event.phone}
Telephone: {$event.phone}
{/if}
{if $event.contactname}
Contact name: {$event.contactname}
{/if}
{if $event.url<>''}
Website: {$event.url}
{/if}
{if $mid}

Review in Rivista backend:
https://{$SERVERINFO.SERVER_NAME}/admin/pages/Publishing/index.php?mid={$mid}&view=edit_calendarevent&itm={$event.id}&calendarid={$event.calendarid}
{/if}
