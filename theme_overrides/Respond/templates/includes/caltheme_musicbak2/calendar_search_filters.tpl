<form name="event" method="get" action="{$Page->path}">
		<table>
			<tr>
				<td>Search for:</td><td><input type="text" id="search" name="search" value="{$Page->params.search}" /></td>
			</tr>
			<tr>
				<td>Category:</td><td>{picklist name="categoryfilter" list=$categories selected=$category displayfield="title" keyfield="title"}</td>
			</tr>
				<td colspan="2">
				Start date / year<br />
				{picklist name="startmonth" function="months"  selected=$startmonth} /
				{picklist name="startday" function="numbers" start="1" end="31"  selected=$startday} /
				{picklist name="startyear" function="years" start=$smarty.now|dateformat:'%Y' selected=$startyear}	
				</td>
			<tr>
				<td colspan="2">
				End date / year<br />
				{picklist name="endmonth" function="months"  selected=$endmonth} /
				{picklist name="endday" function="numbers"  start="1" end="31" selected=$endday} /
				{picklist name="endyear" function="years" selected=$endyear}	
				</td>
			</tr>
            {* display additional custom filters *}
            {* loop through the customfields array and display a drop down for each available filter *}
            {if $calendar.customfields|@count}
            {foreach from=$calendar.customfields item="item"}
            {if istrue($item.params.isfilter)}
            <tr>
                    <td>{$item.label}</td><td>
                    {assign var="selectedFilterValue" value=""}
                    {assign var="filterParamName" value="calendarfilters_"|cat:$item.fieldname}
                    {if isset($Page->params.$filterParamName)}
                    	{assign var="selectedFilterValue" value=$Page->params.$filterParamName}
                    {/if}
                    {if $item.fieldtype=="yesno"}
						{picklist name="calendarfilters_"|cat:$item.fieldname|urlencode firstitem="" list=","|split:"Yes,No" selected=$selectedFilterValue}
					{else}
						{picklist name="calendarfilters_"|cat:$item.fieldname|urlencode firstitem="" list="\n"|split:$item.options selected=$selectedFilterValue}
                    {/if}
                    </td>
            </tr>
            {/if}
            {/foreach}
            {/if}
			<tr>
				<td colspan="2" class="last">
				<input type=hidden name="view" value="search_event">
				<input type="submit" name="submit" value="Search" id="formbutton">
				</td>
			</tr>
		</table>
</form>