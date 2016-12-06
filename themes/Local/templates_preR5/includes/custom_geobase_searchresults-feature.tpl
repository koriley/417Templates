{addcss file="geobase.css"}
{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
<div class="featured-listings module">
<h2>{$gbTitle}</h2>
<a class="search-all" href="{$gbURL}">Search all listings &raquo;</a>
<div class="content">
<div class="featured-listings-container">
<table id="geobase">
	<tbody>
		<tr>
			<td id="search-results">
				 <table id="listings" cellspacing="0">
					<tr>
						<th>Business</th><th>Contact</th><th>Category</th>
					</tr>
					{assign var="counter" value="1"}
					{getgeobaselistings geobaseid=$gbID assign="listings" type="featured" max="5" random=$gbRandom filtername=$filtername filtervalue=$filtervalue}
					{if $listings|@count > 0}
						{section name="x" loop=$listings}
						{assign var="url" value=$gbURL|default:$Page->url("ssl=false")|cat:"?listing="|cat:$listings[x].id}
						{if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">{/if}
						{math equation="y - 1" y=$counter assign="idcounter"}
						{if $listings[x].listingtype=='featured' || $listings[x].listingtype=='premium'}
						<tr class="featured" id="listing{$idcounter}">
							<td class="business-name">
							<h5>{$counter}. 
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}</h5>
								{if $listings[x].contactname <>''}
								<p><b>{$listings[x].contactname}</b></p>
								{/if}
							{if $listings[x].image1}
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="/core/includes/phpThumb/phpThumb.php?src={$listings[x].image1}&amp;w=98&amp;h=98&amp;q=100" alt="{$listings[x].company}" />{/trackerlink}{/if}
							</td>
							<td class="contact"><p>{if $listings[x].address<>''}{$listings[x].address}{/if}{if $listings[x].city<>''}<br />{$listings[x].city}{if $listings[x].state<>''}, {/if}{/if}{if $listings[x].state<>''}{$listings[x].state}{/if}{if $listings[x].phone<>''}<br />{$listings[x].phone|format:"ddd-ddd-dddd dddddd"}{/if}</p></td>
							<td class="categories"><ul>{if $listings[x].category<>''}<li>{$listings[x].category|replace:",":", "}</li>{/if}{if $listings[x].subcategory<>''}<li>{$listings[x].subcategory|replace:",":", "}</li>{/if}</ul>{tracker item="searchresults" itemid=$listings[x].id}</td>
						</tr>
						{/if}
						{math equation="z + 1" z=$counter assign="counter"}
						{/section}
					{/if}
					{assign var="listings" value=''}
					{getgeobaselistings geobaseid=$gbID assign="listings" type="premium" max="5" random=$gbRandom filtername=$filtername filtervalue=$filtervalue}
					{if $listings|@count > 0}
						{section name="x" loop=$listings}
						{assign var="url" value=$gbURL|default:$Page->url("ssl=false")|cat:"?listing="|cat:$listings[x].id}
						{if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">{/if}
						{math equation="y - 1" y=$counter assign="idcounter"}
						{if $listings[x].listingtype=='featured' || $listings[x].listingtype=='premium'}
						<tr class="premium" id="listing{$idcounter}">
							<td class="business-name">
							<h5>{$counter}. 
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}</h5>
								{if $listings[x].contactname <>''}
								<p><b>{$listings[x].contactname}</b></p>
								{/if}
							{if $listings[x].image1}
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="/core/includes/phpThumb/phpThumb.php?src={$listings[x].image1}&amp;w=98&amp;h=98&amp;q=100" alt="{$listings[x].company}" />{/trackerlink}{/if}
							</td>
							<td class="contact"><p>{if $listings[x].address<>''}{$listings[x].address}{/if}{if $listings[x].city<>''}<br />{$listings[x].city}{if $listings[x].state<>''}, {/if}{/if}{if $listings[x].state<>''}{$listings[x].state}{/if}{if $listings[x].phone<>''}<br />{$listings[x].phone|format:"ddd-ddd-dddd dddddd"}{/if}</p></td>
							<td class="categories"><ul>{if $listings[x].category<>''}<li>{$listings[x].category|replace:",":", "}</li>{/if}{if $listings[x].subcategory<>''}<li>{$listings[x].subcategory|replace:",":", "}</li>{/if}</ul>{tracker item="searchresults" itemid=$listings[x].id}</td>
						</tr>
						{/if}
						{math equation="z + 1" z=$counter assign="counter"}
						{/section}
					{/if}
				</table>
		  </td>
	  </tr>
  </tbody>
</table>
</div>
{if istrue($geobase.selfservice)}
<p><br />
<a href="{$config.myaccounturl}?mod=OpsGeobase&cid={$geobase.id}&option=signup">Add a free listing &raquo;</a>
</p>
{/if}
</div></div>