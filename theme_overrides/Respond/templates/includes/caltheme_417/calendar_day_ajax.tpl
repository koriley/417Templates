<div class="dayevents" id="events_{$dcurrentdate|dateformat:"m-d-Y"}">
	<h4>{$dcurrentdate|dateformat:"D, M d, Y"}</h4>
	{if $data|@count>0}
	{assign var="events" value=$data}
	{include file="calendar_event_list.tpl"}
	{else}
	<h5>No events</h5>
	{/if}
</div>