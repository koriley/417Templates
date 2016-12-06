{** DO NOT REMOVE THESE LINES **}
{include file="geobase_required.tpl"}
<h1>{$ops_geobase.title}</h1>
<table id="geobase">
  <tr>
  <td id="search">
  <h3>Search</h3>
  <div class="search-form"><form method="post" action="{pageurl cp="" si="" option="" id=""}">
  <input name="search" name="search" type="text" class="search-field"  value="{$Page->get('search')}"/>&nbsp;<input name="Search" type="submit" value="&raquo;" class="button" /><br /><input name="within" type="checkbox" value="1" />&nbsp;Search within these results
  </form>
  </div>
	{foreach from=$filters key="filter" item="field"}{strip}
	{assign var="fldname" value=$field.fieldname}
		<h4>{$field.label}</h4>
		{if $Page->params.$fldname<>''}
		<ul class="nonfilter">
		Selected: {$Page->params.$fldname|urldecode}<br/>
		<a href="{pageurl option="" id="" cp="" si="" _name=$field.fieldname _value=""}">Click to clear selection</a>
		</ul>
		{else}
		<ul class="filter">
		{if $field.fieldtype=='yesno'}
		<li><a href="{pageurl option="" id="" _name=$field.fieldname _value="yes"}">Yes</a></li>
		<li><a href="{pageurl option="" id="" _name=$field.fieldname _value="no"}">No</a></li>
		{else}
		{foreach from=$filters.$filter.values item="value" key="id"}<li><a href="{pageurl option="" id="" _name=$field.fieldname _value=$value|urlencode}">{$value}</a></li>{/foreach}
		{/if}
		</ul>
		{/if}
		{/strip}
	{/foreach}
	</td>

	{include file=$geobasetemplate}
  <td id="featured-listings">
  {if count($featured)}
  <h3>Sponsored Listings</h3>
    <ul class="featured-listing">
	{foreach from=$featured item="feature"}
	{assign var="url" value=$Page->url("cp=,si=")|cat:"&listing="|cat:$feature.id}
      <li><a href="{tracker url=$url|urlencode item='clickthrough' itemid=$feature.id}">{$feature.company}</a>
	  		<ul>
				<li>{$feature.subcategory}</li>
				<li>{$feature.address}<br />
				{$feature.city}<br />
				{$feature.state}, {$feature.zipcode}</li>
			</ul>
		</li>
		{tracker item="viewfeatured" itemid=$feature.id}
	{/foreach}
	</ul>
     {/if}
    <!-- <h3>Add a Listing</h3>
	<p><a href="http://www.417mag.com/417-Magazine/Advertise/">Add a free or paid listing &raquo;</a></p> -->
  </td>
  </tr>
  </table>