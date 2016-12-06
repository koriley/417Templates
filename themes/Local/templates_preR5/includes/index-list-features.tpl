{tagged tagid="$svar" what="article"}
<div id="feature-list">
{section name="t" loop=$taglist}			
{section name="a" loop=$taglist[t].articles}
							<div class="article-item">
								{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100" border="0"  width="74"/></a>{/if}
								<div class="article-content">
									<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
									<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
									<p class="article-byline">{$taglist[t].articles[a].author}</p>
								</div>
							</div>
							<div class="article-divider"></div>
{/section}	
{/section}			
</div>		
				
				
				
				
				