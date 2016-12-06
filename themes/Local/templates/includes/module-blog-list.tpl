{tagged tagid=$svar what="article"}
{section name="t" loop=$taglist}
{section name="a" loop=$taglist[t].articles max=1}
{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100" border="0"  width="74" style="float:left;margin-right:10px"/></a>{/if}
<a href="{$taglist[t].articles[a].url}" class="whitefeature-link">{$taglist[t].articles[a].title}</a>
<div class="whitefeature-summary">{$taglist[t].articles[a].summary|truncate:200:"...":false}</div>
{if $taglist[t].articles[a].author<>''}<div class="whitefeature-byline">{$taglist[t].articles[a].author}</div>{/if}
{/section}				
{/section}