<div class="dayevents" id="events_{$dcurrentdate|dateformat:"m-d-Y"}">
	<h4>{$dcurrentdate|dateformat:"D, M d, Y"}</h4>
	{if $data|@count>0}
	{section name="event" loop=$data start=$Page->params.sievents|default:0}
		<div class="event">
			<div class="time">{if $data[event].starttime<>''}{$data[event].starttime}{/if}{if $data[event].endtime<>''} - {$data[event].endtime}{/if}</div>
            <div class="event-description">
            	<h5><a href="{$Page->path}index.php/name/{$data[event].title|urlencode}/event/{$data[event].id}/">{$data[event].title|capitalize}</a></h5>
            	<p>
            	{if $data[event].image<>''}
                <img src="{imagesizer src=$data[event].image w=75}" alt="{$data[event].title}" />
                {/if}
                {$data[event].description|truncate:200}</p>
            </div>
		</div>
	{/section}
	{else}
	<h5>No events</h5>
	{/if}
</div>