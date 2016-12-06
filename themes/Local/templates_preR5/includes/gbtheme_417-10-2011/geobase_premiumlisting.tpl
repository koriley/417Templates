premium-listing
{assign var="title" value=$listing.company|cat:" - "|cat:$listing.city|default:"Springfield"|cat:", "|cat:$listing.state|default:"MO"}{$Page->setTitle($title)}
	<td id="premium-listing">
	<!-- NOTE: the above ID will change depending on what type of listing this is -->
	<div id="listing-top">
	<a href="{pageurl listing=""}"><< Back to listings</a><br/>
		<h2>{$listing.company}</h2>
		<h5>{$listing.subcategory} / {$listing.specialty}</h5>
		<div id="listing-data">
			<p id="address">{$listing.address}<br />{$listing.city}, {$listing.state}  {$listing.zipcode}<br />{$listing.phone|format:"ddd-ddd-dddd"}</p>
			<!-- loop through custom fields and display data.  empty fields are not displayed -->
			{if count($listing.fields)}
            {foreach from=$listing.fields key="name" item="field"}
   			<p>{$field.label}: {$field.value|tohtml}</p>
            {/foreach}
	        {/if}
	        <!-- alternate method -->
	        <!-- in this example "test" is the field name" -->
	        {if $listing.fields.test.value <> ''}<p>{$listing.fields.test.label}: {$listing.fields.test.value}</p>{/if}
            <p id="map"><a href="http://maps.google.com/maps?hl=en&q={$listing.address|urlencode},+{$listing.city|urlencode},+{$listing.state}+{$listing.zipcode}" target="new">Map this business &raquo;</a></p>
			<!-- not ready yet -->
			<!--<p class="fineprint">Is this your company? <a href="#">Update or enhance your listings &raquo;</a></p>-->
		</div>
		{if count($listing.quickfacts)}
		<table id="quickfacts">
			<tr>
			<th colspan="2">Quick Facts</th>
			</tr>
            {foreach from=$listing.quickfacts key="label" item="value"}
   			<tr>
				<td class="factname">{$label}:</td>
				<td class="fact">{$value|tohtml}</td>
			</tr>
            {/foreach}
		</table>
        {/if}
	</div>
	<div id="images">
	<!-- Image sizes will be controlled by phpThumb.
	The image size should be limited to no larger than 300 pixels wide.
	If the image is smaller than 300 pixels, it will be rendered at true size.
	
	i dont know how to do the above
	-->
	{if $listing.image1<>''}
		<div class="image-instance clearfix"><a href="/images/geobase/{$listing.id}/{$listing.image1}"><img src="/core/includes/phpThumb/phpThumb.php?w=300&src=/images/geobase/{$listing.id}/{$listing.image1}" alt="{$listing.image1desc}" /></a><p>{$listing.image1desc}</p></div>
	{/if}
	{if $listing.image1<>''}
		<div class="image-instance clearfix"><a href="/images/geobase/{$listing.id}/{$listing.image2}"><img src="/core/includes/phpThumb/phpThumb.php?w=300&src=/images/geobase/{$listing.id}/{$listing.image2}" alt="{$listing.image2desc}" /></a><p>{$listing.image2desc}</p></div>
	{/if}
	{if $listing.image1<>''}
		<div class="image-instance clearfix"><a href="/images/geobase/{$listing.id}/{$listing.image3}"><img src="/core/includes/phpThumb/phpThumb.php?w=300&src=/images/geobase/{$listing.id}/{$listing.image3}" alt="{$listing.image3desc}" /></a><p>{$listing.image3desc}</p></div>
	{/if}
	</div>
	<div id="custom-content">
	{$listing.content}
	</div>
	</td>
