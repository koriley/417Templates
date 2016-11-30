{addcss file="featured-resources.css"}
{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
<div class="featured-listings module">

<!--<h2>{$gbTitle}</h2>
<a class="search-all" href="{$gbURL}">Search all listings &raquo;</a>-->
<div class="content">
    
<div class="featured-listings-container" style="margin-top:5px;" >
{if $gbID=="10"}<table id="geobase" style="width:100%;">
{else}<table id="geobase">{/if}
	<tbody>
		<tr>
			<td id="search-results">
				 <table id="listings" cellspacing="0" >
					<tr>
						{if $gbID=="10"}<th colspan="2"><a style="color:#fff;" href="http://www.417homemag.com/417-Home/Resources-We-Love/"><img alt="RESOURCES WE LOVE" src="/images/elements/headers/resources/resources.gif" /></th>{/if}
						{if $gbID=="12"}<th colspan="2"><img src="/images/elements/headers/resources/beautiful.gif" /></th>{/if}
						{if $gbID=="13"}<th colspan="2"><img src="/images/elements/headers/resources/doctors.gif" /></th>{/if}
                                                {if $gbID=="28"}<th colspan="2"><img src="/images/elements/headers/resources/medical.png" /></th>{/if}
						{if $gbID=="14"}<th colspan="2"><img src="/images/elements/headers/resources/dentists.gif" /></th>{/if}
						{if $gbID=="15"}<th colspan="2"><img src="/images/elements/headers/resources/kids-camps.gif" /></th>{/if}
						{if $gbID=="16"}<th colspan="2"><img src="/images/elements/headers/resources/vets-pets.gif" /></th>{/if}
						{if $gbID=="17"}<th colspan="2"><img src="/images/elements/headers/resources/real-estate.gif" /></th>{/if}
						{if $gbID=="18"}<th colspan="2"><img src="/images/elements/headers/resources/financial.gif" /></th>{/if}
						{if $gbID=="19"}<th colspan="2"><img src="/images/elements/headers/resources/insurance.gif" /></th>{/if}
						{if $gbID=="20"}<th colspan="2"><img src="/images/elements/headers/resources/aging-parent.gif" /></th>{/if}
						{if $gbID=="21"}<th colspan="2"><img src="/images/elements/headers/resources/attorneys.png" /></th>{/if}
						{if $gbID=="22"}<th colspan="2"><img src="/images/elements/headers/resources/churches.gif" /></th>{/if}
						{if $gbID=="23"}<th colspan="2"><img src="/images/elements/headers/resources/branson.gif" /></th>{/if}
                                                {if $gbID=="26"}<th colspan="2"><img src="/images/elements/headers/resources/architects.png" /></th>{/if}
                                                {if $gbID=="32"}<th colspan="2"><img src="/images/elements/headers/resources/visionCare.png" /></th>{/if}
                                                
					</tr>
					{assign var="counter" value="1"}
					{getgeobaselistings geobaseid=$gbID assign="listings" type="featured" max="$gbMax" random=$gbRandom filtername=$filtername filtervalue=$filtervalue}
					{if $listings|@count > 0}
						{section name="x" loop=$listings}
						{assign var="url" value=$gbURL|default:$Page->url("ssl=false")|cat:"?listing="|cat:$listings[x].id}
						{if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">{/if}
						{math equation="y - 1" y=$counter assign="idcounter"}
						{if $listings[x].listingtype=='featured' || $listings[x].listingtype=='premium'}
						<tr class="featured" id="listing{$idcounter}">
							<td class="business-name">
							{if $listings[x].image1}
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="/core/includes/phpThumb/phpThumb.php?src={$listings[x].image1}&amp;w=70&amp;h=70&amp;q=100" alt="{$listings[x].company}" />{/trackerlink}{/if}
							</td>
							<td class="contact" style="text-align:left;"><h5> 
							{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}</h5><p>{$listings[x].description|truncate:100:"...":false}<br/>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<b>Learn More</b>{/trackerlink}</p></td>
							
						</tr>
						{/if}
						{math equation="z + 1" z=$counter assign="counter"}
						{/section}
					{/if}
					<!--{assign var="listings" value=''}
					{getgeobaselistings geobaseid=$gbID assign="listings" type="premium" max="$gbMax" random=$gbRandom filtername=$filtername filtervalue=$filtervalue}
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
						<td colspan="2" style="background-color:#fff; margin:0px;"><a style="color:#333;" href="{$gbURL}">&raquo; See More</a></td>
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