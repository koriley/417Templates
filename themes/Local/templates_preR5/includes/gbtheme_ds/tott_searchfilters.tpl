{literal}
<script type="text/javascript">

function showHideFilterPanel(e) {
	filterPanel = $('filter-panel');
	if (filterPanel.style.display == 'block') {
		filterPanel.style.display = 'none';
		e.innerHTML = 'Select filters';
	} else  {
		filterPanel.style.display = 'block';
		e.innerHTML = 'Close filter panel';
	}
}

</script>
{/literal}
{assign var="filtered" value="false"}
{foreach name="filterCheck" from=$filters key="key" item="item"}
{if $item<>'' && isset($Page->params.$key)}{assign var="filtered" value="true"}{/if}
{/foreach}
{if isset($Page->params.search)}{assign var="filtered" value="true"}{/if}
{if $filtered == "true"}
<h2>Filtered by {if isset($Page->params.search)}search term: "{$Page->params.search}" {/if}{foreach name="filters" from=$Page->params key="key" item="item"}{if $key != 'search' && $key != "si" && $key != "cp"}{$filters.$key.label}: {$Page->params.$key}{if !$smarty.foreach.filters.last}, {/if}{/if}{/foreach}</h2>
{/if}
<div class="filter-buttons">{if $filtered == "true"}
    <a class="remove-filters button" href="{$Page->path}">Remove filters</a>{/if}
    <div class="select-filters button" onclick="showHideFilterPanel(this);return false;">Select filters</div>
</div>

<div id="filter-panel">
{include file="gb_alphapager.tpl"}
<form action="{$Page->path}" method="get">
{foreach from=$filters key="filter" item="field"}
    {strip}
        {if istrue($field.hasdata)}
            {assign var="fldname" value=$field.fieldname}
                <select name="{$fldname}" onchange="this.form.submit();">
                    <option value="">Select {$field.label}</option>
                {foreach from=$filters.$filter.options item="value" key="id"}
                  {if $value.count>0}
                    <option value="{$value.value}"{if $Page->params.$fldname == $value.value} selected {/if}>{$value.value} ({$value.count})</option>
                  {/if}
                {/foreach}
                </select>
        {/if}
    {/strip}
{/foreach}
</form>
</div>
