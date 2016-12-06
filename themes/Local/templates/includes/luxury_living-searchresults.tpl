		
		<style type="text/css">
<!--
@import url("/media/css/database-restaurant.css");
-->
</style>
<!-- display filter choices -->
<div id="restaurant">
<!--<h2>{$table.title}</h2>-->
<div id="restaurant-search">
<!--<form method="get" name="filterform">
	<div class="cell">
		<table cellpadding="0" cellspacing="3" border="0">
		{foreach from=$filterlist key="filter" item="values"}
			<tr>
			<td>{$values.label}:</td><td><select name="{$filter}"><option value="">all</option>
			{foreach from=$filterlist.$filter.values key="choice" item="count"}
			<option value="{if $choice<>'all'}{$choice}{else}{/if}" {if $choice==$Page->get($filter)} selected {/if}>{$choice}{if $choice<>'all'} ({$count}){/if}</option>
			{/foreach}
			</select></td>
			<td>&nbsp;</td>
			</tr>
		{/foreach}
			<tr>
			<td>Search:</td><td><input type="text" size="25" name="searchcustomdata" value="{$Page->params.searchcustomdata}"></td><td></td>
			</tr>
			<tr>
			<td>&nbsp;</td><td><input type="submit" value="Search"></td><td></td>
			</tr>
		</table>
	</div>
</form>-->
</div>
<table width="100%"  border="0" cellpadding="5" cellspacing="0" id="restaurant-search-table">
   <tr class="header">
		<!--<td height="25" nowrap class="header"><a href="{sortlink field="coupon"}" class="sort">Coupon<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="coupon"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="price"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>-->
		<td height="25" nowrap class-"header">Coupon</td>
		<td height="25" nowrap class="header"><a href="{sortlink field="name"}" class="sort">Name<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="name"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="additionalinfo"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>
		<td height="25" nowrap class="header"><a href="{sortlink field="category"}" class="sort">Category<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="category"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="location"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0"></a></td>
		</tr>
								<!-- loop through the records -->
								{assign var="hasdisplayorder" value="0"}
								{section name=x loop=$datalist max=$config.rowsperpage start=$Page->get('si')}
								{strip}
										<tr class="{cycle values="rowA,rowB"}">

										   <td valign="top">
										     click the image for the printable coupon:<br>
											  <a href="{pageurl sefriendly=true view='details' itm=$datalist[x].id}">{$datalist[x].directions}</a></td>
										   <td class="city">
										      
											  <table border="0" width="100%" id="restaurant-details-table" cellspacing="0" cellpadding="0">
			<tr><td width="350px" valign="top"><b>{$datalist[x].name}</b><br>{$datalist[x].address}<br>
			
			 {$datalist[x].city}<br>
			
			{$datalist[x].phone|format:"ddd-ddd-dddd"}<br>
			
			{if $datalist[x].url<>''}<a href="{$datalist[x].url}" target="_blank">{$datalist[x].url}</a><br>{/if}
			
			{if $datalist[x].additionalinfo<>''}{$datalist[x].additionalinfo}<br>{/if}
			<a href="http://maps.google.com/maps?hl=en&q={$datalist[x].address},+{$datalist[x].city|default:"Springfield"},+{$datalist[x].state|default:"MO"},+{$datalist[x].zip|default:"65801"}&" target="_blank">Click to map the location of {$datalist[x].name}</a><br></td>
			<td><img src="{$images}/customdata/{$datalist[x].image}" /></td></tr>
			</table>
										   </td>
										   
										<td class="city">
										      {$datalist[x].category}
										   </td>
										   
										</tr>
								{/strip}
								{/section}
{if count($datalist)==0}<tr><td><font color="red">The listing(s) you were looking for could not be found. <br>Please try a different query.</font>
</td></tr>{/if}
								<!-- done looping -->
</table>
               <!-- end data table -->
{pager style="link" data=$datalist maxpages=$config.maxpages rowsperpage=$config.rowsperpage}
</div>