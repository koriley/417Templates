{assign var="tagids" value=40,41,44,49,192,279}
{if $module.publication == "host"}{assign var="popularArticlesPublication" value=$publication.id}{else}{assign var="popularArticlesPublication" value="all"}{/if}
{mostpopular assign="artlist" tagids=$tagids max=3  publications=$popularArticlesPublication}






<ul class="blogList">
    {foreach from=$artlist item="item"}
        <li class="blogListLI"><div class="blogListItem" style="margin-left:-25px;">
                <img src="http://www.417mag.com/images/2014/blogdot.png" />
                </div>
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
</ul>