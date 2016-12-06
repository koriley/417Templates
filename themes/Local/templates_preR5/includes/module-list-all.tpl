{tagged tagid="$svar" what="article||page"}
{section name="t" loop=$taglist max=1}
{section name="a" loop=$taglist[t].articles}

								{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100" border="0" class="left-justify-pic"  width="74"/></a>{/if}
{if $showdate=="yes"}
<h4>{$taglist[t].articles[a].period} {$taglist[t].articles[a].year}</h4>
{/if}
									<h4>{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}:&nbsp;{$taglist[t].articles[a].title}</a>{/if}</h4>
									<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
									<p class="article-byline">{$taglist[t].articles[a].author}</p>
							<div class="article-divider"></div>
{/section}	

<div class="clear"></div>	
{/section}				
			
				
				
				
				
				