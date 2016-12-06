{tagged tagid="$svar" what="article"  order="ops_issue.year desc, ops_issueperiod.displayorder, ops_article.datepublished desc"}
{section name="t" loop=$taglist max=1}
				<div id="greybox">
					<div class="header-box">
						<div class="headline">
							<h2>{if $surl<>''}<a href="{$surl}">{/if}{if $stitle<>''}{$stitle}{else}{$taglist[t].title} Features{/if}{if $surl<>''}</a>{/if}</h2>
						</div>
						<div class="header-link"></div>
					</div>
					<div class="content-box">
{if $showone=="yes"}{assign var='showmax' value='1'}{else}{assign var='showmax' value='5'}{/if}					
{section name="a" loop=$taglist[t].articles max=$showmax}
							<div class="article-item">
								{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0"  width="74"/></a>{/if}
								<div class="article-content">
									<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
									<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
									{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
								</div>
							</div>
							{if $showone=="yes"}{else}
							<div class="article-divider"></div>
							{/if}
{/section}	

<div class="clear"></div>	
					</div>
				</div>	
{/section}				
			
				
				
				
				
				