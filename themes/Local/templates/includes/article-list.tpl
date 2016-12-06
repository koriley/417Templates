				<table class="articles">
				    <tr>
					    <th colspan="2">
							<h3>{$listName}</h3>
							<div class="archive-link"><a href="/417-Magazine/Department-Archive/index.php?tagID={$featureTagID}">Archive &raquo;</a></div>								
						</th>
					</tr>
					{tagged tagid=$featureTagID what="article"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles max=$maxArticles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>


