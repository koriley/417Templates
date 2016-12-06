<style type="text/css">
<!--
@import url("/themes/Local/css/{$table.tabletype}-data.css");
-->
</style>
<!-- display filter choices -->
{$Page->setTitle($table.title)}
<div id="customdata">
<div id="customdata-search">
<form method="get" name="filterform">
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
</form>
</div>
<table width="100%"  border="0" cellpadding="5" cellspacing="0" id="customdata-search-table">
   <tr class="header">
		<td height="25" class="header"><a href="{sortlink field="name"}" class="sort">Name<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="name"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="name"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0" /></a></td>
		<td height="25" class="header"><a href="{sortlink field="additionalinfo"}" class="sort">Category<img align="absmiddle" src="{$images}/order-{if $Page->params.sort=="additionalinfo"}{if $Page->params.so=="asc"}desc{else}asc{/if}{else}desc{/if}.gif" alt="Sort {if $Page->params.sort=="additionalinfo"}{if $Page->params.so=="asc"}Descending{else}Ascending{/if}{else}Descending{/if}" width="48" height="15" border="0" /></a></td>	
	</tr>
								<!-- loop through the records -->
								{assign var="hasdisplayorder" value="0"}
								{section name=x loop=$datalist max=$config.rowsperpage start=$Page->get('si')}
								{strip}
										<tr class="{cycle values="rowA,rowB"}">

										   <td class="customdata-name">
										      <a href="{pageurl view='details' itm=$datalist[x].id}">{$datalist[x].name}</a></td>
										   <td class="city">
										      {$datalist[x].additionalinfo}
										   </td>
										</tr>
								{/strip}
								{/section}
{if count($datalist)==0}<tr><td><p class="errors">The listing(s) you were looking for could not be found. <br />Please try a different query.</p>
</td></tr>{/if}
								<!-- done looping -->
</table>
               <!-- end data table -->
{pager style="link" data=$datalist maxpages=$config.maxpages rowsperpage=$config.rowsperpage}
</div>
