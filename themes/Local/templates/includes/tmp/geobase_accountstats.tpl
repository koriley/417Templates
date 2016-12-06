<div id="listing-stats">
{if $listing.isapproved=='f'}
<div class="formline">Your listing is currently pending review. It will show up in the Geoguide system when it is approved.</div> 
{/if}              
<div class="formline">From Date:&nbsp;<input class="date" size=10 type=text id="from_date" name="from_date" value="{$from_date|date_format:$config.shortdateformat}"onblur="fixDate(this)">&nbsp;&nbsp;&nbsp;To Date:&nbsp;<input class="date" onblur="fixDate(this)" size=10 type=text id="to_date" name="to_date" value="{$to_date|date_format:$config.shortdateformat}">&nbsp;&nbsp;&nbsp;<input type=submit value="Run Report"></div>
<div class="headline">Listing statistics:</div>        
<div class="formline">
<table border="0" cellpadding="5" cellspacing="2" width="100%" id="listing-stats-table">
	<tr class="header">
		<td>Displayed in directory search results</td>
		<td>Listing Clicked</td>
		<td>Click-through ratio (CTR)</td>
	</tr>
	<tr>
		<td>{$report.views}</td>
		<td>{$report.clicks}</td>
		<td>{$report.ratio}%</td>
	</tr>
</table>
</div>
{if $listing.listingtype!='basic'} 
<div class="headline">Website link statistics: </div>
<div class="formline">Clicks to your main website: {$report.weblinkclicks}</div>
{/if}

{if $listing.listingtype=='website' || $listing.listingtype=='realtor'} 
<div class="headline">Contact form statistics: </div>
<div class="formline">Contact form submissions: {$report.forms}</div>
{/if}

<div class="headline">Visitor Statistics: </div>
<div class="formline">Total visits: {$report.pageviews}</div>
{if $listing.listingtype=='website' || $listing.listingtype=='realtor'}
<div class="formline">
<table border="0" cellpadding="5" cellspacing="2" id="page-views-table">
<tr class="header"><td>Page Title</td><td>Views</td></tr>
{section name=c loop=$report.pageviews}
	<tr>
	<td>{$report.pages[c].extra}</td>
	<td>{$report.pages[c].count}</td>
	</tr>
{/section}
</table>
</div>
{if $smarty.section.c.total==0}
<div class="formline">No stats yet.</div>
{/if}
{/if}
<div class="formline"><span class="fineprint">NOTE: The total number of visits to your listing may be higher than your directory search clicks as visitors also access your Premium Listing from the major search engines - Google, Yahoo, and MSN as well as bookmarks.</span></div>
</div>
