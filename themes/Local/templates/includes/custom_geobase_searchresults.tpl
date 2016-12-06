{addcss file="featured-resources.css"}
{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
<div class="featured-listings module">
<!--<h2>{$gbTitle}</h2>
<a class="search-all" href="{$gbURL}">Search all listings &raquo;</a>-->
<div class="content" style="width:363px;">
<div class="featured-listings-container">
<table id="geobase" >
	<tbody>
		<tr>
			<td id="search-results">
				 <table id="listings" cellspacing="0">
					<tr>
						{if $gbID="12"}<td><img src="/images/elements/headers/resources/beautiful.gif" /></td>{/if}
						{if $gbID="13"}<td><img src="/images/elements/headers/resources/doctors.gif" /></td>{/if}
						{if $gbID="14"}<td><img src="/images/elements/headers/resources/dentists.gif" /></td>{/if}
						{if $gbID="15"}<td><img src="/images/elements/headers/resources/kids-camps.gif" /></td>{/if}
						{if $gbID="16"}<td><img src="/images/elements/headers/resources/vets-pets.gif" /></td>{/if}
						{if $gbID="17"}<td><img src="/images/elements/headers/resources/real-estate.gif" /></td>{/if}
						{if $gbID="18"}<td><img src="/images/elements/headers/resources/financial.gif" /></td>{/if}
						{if $gbID="19"}<td><img src="/images/elements/headers/resources/insurance.gif" /></td>{/if}
						{if $gbID="20"}<td><img src="/images/elements/headers/resources/aging-parent.gif" /></td>{/if}
						{if $gbID="21"}<td><img src="/images/elements/headers/resources/attourneys.gif" /></td>{/if}
						{if $gbID="22"}<td><img src="/images/elements/headers/resources/churches.gif" /></td>{/if}
						{else}
						<th colspan="2">Resources We Love</th>
						{/else}
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
							{if $listings[x].image1}
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="/core/includes/phpThumb/phpThumb.php?src={$listings[x].image1}&amp;w=60&amp;h=60&amp;q=100" alt="{$listings[x].company}" />{/trackerlink}{/if}
							</td>
							<td class="contact"><h5> 
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}</h5><p>{$listings[x].description|truncate:100:"...":false}<br/>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<b>Learn More</b>{/trackerlink}</p></td>
							
						</tr>
						{/if}
						{math equation="z + 1" z=$counter assign="counter"}
						{/section}
					{/if}
					<!--{assign var="listings" value=''}
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
					{/if}-->
					<tr>
						<td colspan="2" style="background-color:#fff; margin:0px;"><a style="color:#333;" href="http://www.417homemagazine.com/417-Home/Resources-We-Love/">&raquo; See More</a></td>
					</tr>
				</table>
		  </td>
	  </tr>
  </tbody>
</table>
</div>
{if istrue($geobase.selfservice)}
<p>
<a class="search-all" href="{$gbURL}">Search all listings &raquo;</a><br />
<a href="{$config.myaccounturl}?mod=OpsGeobase&cid={$geobase.id}&option=signup">Add a free listing &raquo;</a>
</p>
{/if}
</div></div>