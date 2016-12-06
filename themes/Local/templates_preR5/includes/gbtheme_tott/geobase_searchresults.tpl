{assign var="gb_maxpages" value=5}
<div class="geobase geobase-search-results">
	{if $smarty.get.previewmode=='on'}
	<h1>Designers</h1>
	{else}
	<h1>Members</h1>
	{/if}
	
    	{include file="tott_searchfield.tpl"}
	<div class="filterrow">
     	{include file="tott_searchfilters.tpl"}
      {include file="gb_pager.tpl"}
	</div>
	<div class="resultscolumn">
		{include file="tott_searchresults.tpl"}
         {include file="gb_pager.tpl"} 
	</div>
	<div class="mapcolumn">
        {include file="googlemap-multiple.tpl"}
		{loadModules position="right"}
	</div>
    <div class="clear"></div>
</div>