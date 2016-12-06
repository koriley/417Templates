{if $module.publication == "host"}{assign var="popularArticlesPublication" value=$publication.id}{else}{assign var="popularArticlesPublication" value="all"}{/if}
{if is_array($module.tagids)}
	{if $module.operator == "and"}
    	{assign var="tagids" value=" AND "|implode:$module.tagids}
 	{else}
		{assign var="tagids" value=","|implode:$module.tagids}
    {/if}
{else}
	{if $module.operator == "and"}
    	{assign var="tagids" value=$module.tagids|replace:",":" AND "}
    {else}
		{assign var="tagids" value=$module.tagids}
    {/if}
{/if}

{mostpopular assign="artlist" tagids=$tagids max=$module.max timespan=$module.timespan field=$module.field publications=$popularArticlesPublication}
<ol>
    {foreach from=$artlist item="item"}
        <li>
           
            <a href="{$item.url}"><strong>{$item.title}</strong></a>
            {if istrue($module.showSubTitle)}
                <br />
                {$item.subtitle}
            {/if}
            {if istrue($module.showSummary)}
                <br />
                {$item.summary|truncate:$module.summaryTruncate}
            {/if}
            
        </li>
    {/foreach}
</ol>
