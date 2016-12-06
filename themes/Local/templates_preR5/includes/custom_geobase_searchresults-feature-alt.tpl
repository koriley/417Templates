{addjs file="prototype.js"}
{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
<script type="text/javascript" charset="utf-8">
	featured_module_listings = "undefined" == typeof(featured_module_listings) ? [] : featured_module_listings;
</script>
<table id="geobase">
	<td id="search-results">
	 <table id="listings" cellspacing="0">
		<tr><th colspan="2">{if $cssname == "ahl"}Resources We Love...{else}Featured Resources{/if}</th><tr>
{assign var="counter" value="1"}
{section name="x" loop=$listings max=5}
{if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">{/if}
{math equation="y - 1" y=$counter assign="idcounter"}
{assign var="seo_company_name" value = $listings[x].company|stringtourl|default:"Resource"}
{assign var="url" value=$geobaseurl|cat:"/listing/"|cat:$seo_company_name|cat:"/"|cat:$listings[x].id}
{if $listings[x].listingtype=='portfolio'}
		<tr class="{if $cssname == "ahl"}basic{else}premium{/if}"  id="listing{$idcounter}"><td>{if $listings[x].image1<>''}{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="/core/includes/phpThumb/phpThumb.php?w=75&amp;q=100&amp;src={$listings[x].image1}" alt="{$listings[x].image1desc}" style="float:left; margin:0 10px 0 0;" border="0"/>{/trackerlink}{/if}</td>
<td>{$listings[x].description|truncate:150:"...":false}<br>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}Learn more about us{/trackerlink}</td><tr>
{/if}
{if $listings[x].listingtype=='premium'}
		<tr class="premium"  id="listing{$idcounter}"><td><h5>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}&nbsp;<img src="/core/media/images/premium_star.gif" alt="Premium Star" /></h5><p><b>{$listings[x].contactname}</b></p><p>{$listings[x].address}<br>{$listings[x].city}</p></td><td><ul>{if $listings[x].category<>''}<li>{$listings[x].category}</li>{/if}{if $listings[x].subcategory<>''}<li>{$listings[x].subcategory}</li>{/if}</ul></td><tr>
	{/if}
{math equation="z + 1" z=$counter assign="counter"}
<script type="text/javascript" charset="utf-8">
	featured_module_listings.push(";{$listings[x].id};;;event8=1;evar9={if $listings[x].listingtype == 'portfolio'}p{else}s{/if}");
</script>
{/section}
	</table>
  </td>
</table>
{if istrue($geobase.selfservice)}
<p><br><a href="{$config.myaccounturl}?mod=OpsGeobase&cid={$geobase.id}&option=signup">Add a free or paid listing &raquo;</a></p>{/if}