	<td id="search-results">
	 <ul class="pager">
	Jump to:
	{foreach from=$alphalinks key="letter" item="value"}
	   {if $value<>''}
		<li><a href="{pageurl cp="" si="" alpha=$value}">{$letter}</a></li>
		{else}
		<li>{$letter}</li>
		{/if}
	{/foreach}
	</ul>
	 <table id="listings">
		<tr><th>Business Name</th><th>Location</th><th>Category</th><tr>
{section name="x" loop=$listings max=10 start=$si}
{assign var="url" value=$Page->url()|cat:"&listing="|cat:$listings[x].id}
	{if $listings[x].premium=='t'}
		<tr class="premium"><td><h5><a href="{tracker url=$url|urlencode item='clickthrough' itemid=$listings[x].id}">{$listings[x].company}</a>&nbsp;<img src="/images/premium_star.gif" alt="Premium Star" /></h5><p>{$listings[x].address}</p></td><td>{$listings[x].city}</td><td><ul><li>{$listings[x].subcategory}</li><li>{$listings[x].specialty}</li></ul></td><tr>
	{else}
		<tr><td><h5><a href="{tracker url=$url|urlencode item='clickthrough' itemid=$listings[x].id}">{$listings[x].company}</a></h5><p>{$listings[x].address}</p></td><td>{$listings[x].city}</td><td><ul>{if $listings[x].subcategory<>''}<li>{$listings[x].subcategory}</li>{/if}{if $listings[x].specialty<>''}<li>{$listings[x].specialty}</li>{/if}</ul>{tracker item="searchresults" itemid=$feature.id}</td><tr>
	{/if}
{/section}
	</table>
	<ul class="pager">
	{pager style="link" data=$listings maxpages=$config.maxpages rowsperpage=10}
	</ul>
  </td>
