<style type="text/css">
<!--
@import url("/media/css/restaurant.css");
-->
</style>
<!-- display filter choices -->
<div id="restaurant">
<h2>{$table.title}</h2>
<div id="restaurant-search">
<form method="get" name="filterform">
	<div class="cell">
		Area: <select name="areaname">
			<option value="">All ({arraycount value=$datalist})</option>
			{section name=c loop=$filterlist.specialty}
			<option value="{$filterlist.specialty[c].value}" {if $Page->params.areaname==$filterlist.specialty[c].value}selected{/if}>{$filterlist.specialty[c].value} ({$filterlist.specialty[c].records})</option>
			{/section}
			</select>&nbsp;&nbsp;<input type="submit" value="Filter">
			<input type="text" size="20" name="searchcustomdata" value="{$Page->params.searchcustomdata}">&nbsp;<input type="submit" value="Search">
	</div>
</form>
</div>
<table width="100%"  border="0" cellpadding="5" cellspacing="0" id="restaurant-search-table">
   <tr class="header">
		<td height="25" nowrap class="header"><a href="{sortlink field="name"}" class="sort">Name<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="name"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="name"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>
		<td height="25" nowrap class="header"><a href="{sortlink field="city"}" class="sort">City<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="city"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="city"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>
		<td height="25" nowrap class="header"><a href="{sortlink field="state"}" class="sort">State<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="state"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="state"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>	
	</tr>
								<!-- loop through the records -->
								{assign var="hasdisplayorder" value="0"}
								{section name=x loop=$datalist max=$config.rowsperpage start=$Page->get('si')}
								{strip}
										<tr class="{cycle values="rowA,rowB"}">

										   <td class="restaurant-name">
										      <a href="{pageurl sefriendly=true view='details' itm=$datalist[x].id}">{$datalist[x].name}</a></td>
										   <td class="city">
										      {$datalist[x].city}
										   </td>
										   <td>
										      {$datalist[x].state}
										   </td>
										</tr>
								{/strip}
								{/section}
								<!-- done looping -->
</table>
               <!-- end data table -->
<div id="pager">{pager style="link" data=$datalist maxpages=$config.maxpages rowsperpage=$config.rowsperpage}</div>
</div>
