<div class="dayevents" id="events_{$dcurrentdate|dateformat:"m-d-Y"}">
	<h4>{$dcurrentdate|dateformat:"D, M d, Y"}</h4>
	{if $data|@count>0}
	<table class="dayeventlist">
	{section name="event" loop=$data start=$Page->params.sievents|default:0}
		<tr>
			<td class="time">{if $data[event].starttime<>''}{$data[event].starttime}{/if}</td>
            <td><a href="{$Page->path}index.php/name/{$data[event].title|urlencode}/event/{$data[event].id}/">{$data[event].title|capitalize}</a></td>
		</tr>
	{/section}
	</table>
	{else}
	<h5>No events</h5>
	{/if}
</div>