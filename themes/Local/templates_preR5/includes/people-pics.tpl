				<div class="module-box" style="padding-left:15px;">
				<h1>People Pics</h1>
				<table class="articles">
{tagged tagid="47" what="article" }
{section name="t" loop=$taglist max=3}
{section name="a" loop=$taglist[t].articles start=$si max="5"}
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
				<p>
				<a href="/417-Magazine/People-Pics/Archive">Show all galleries &raquo;</a>


<h1>Where's 417?</h1>
<table class="articles">
{tagged tagid="167" what="article" }
{section name="x" loop=$taglist }
{section name="a" loop=$taglist[x].articles start=$si max="5"}
					<tr class="article-item">
						{if $taglist[x].articles[a].image<>''}<td class="article-image"><a href="{$taglist[x].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[x].articles[a].url}{$taglist[x].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[x].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[x].articles[a].url}">{$taglist[x].articles[a].title}</a></h4>
						<p>{$taglist[x].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[x].articles[a].author<>''}<p class="article-byline">{$taglist[x].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
				<p>
				<a href="http://www.417mag.com/417-Magazine/Wheres-417-Archive/">Show all galleries &raquo;</a>
				</div>