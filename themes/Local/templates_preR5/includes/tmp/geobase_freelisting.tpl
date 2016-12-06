{assign var="title" value=$listing.company|cat:" - "|cat:$listing.city|default:"Springfield"|cat:", "|cat:$listing.state|default:"MO"}{$Page->setTitle($title)}
	<td id="premium-listing">
	<div id="listing-top">
	<a href="{pageurl listing=""}"><< Back to listings</a><br/>
		<h2>{$listing.company}</h2>
		<h5>{$listing.subcategory} / {$listing.specialty}</h5>
		<div id="listing-data">
			<p id="address">{$listing.address}<br />{$listing.city}, {$listing.state} {$listing.zipcode}<br />{$listing.phone|format:"ddd-ddd-dddd"}</p>
{if $listing.description!=''}
<p>{$listing.description}</p>
{/if}
            <p id="map"><a href="http://maps.google.com/maps?hl=en&q={$listing.address|urlencode},+{$listing.city|urlencode},+{$listing.state}+{$listing.zipcode}" target="new">Map this business &raquo;</a></p>
<!--			<p class="fineprint">Is this your company? <a href="{pageurl option=signup listingid=$listing.id}">Update or enhance your listings &raquo;</a></p>-->
		</div>
	</div>
	</td>
