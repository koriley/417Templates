{tagged tagid="$svar" what="article||page"}
{section name="t" loop=$taglist max=1}
{section name="a" loop=$taglist[t].articles max=1}
{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&h=229&q=100" border="0"  height="229"  class="splash-image" /></a>{/if}

<div><a href="{$taglist[t].articles[a].url}" class="lead-article-title">{$taglist[t].articles[a].title}</a></div>
<img src="/images/lead-article-dots.gif" width="310" height="23" alt="" border="0">
<div class="lead-article-description">{$taglist[t].articles[a].summary|truncate:200:"...":false}</div>				
<div class="lead-article-byline">{$taglist[t].articles[a].author}</div>										
{/section}
{/section}		


