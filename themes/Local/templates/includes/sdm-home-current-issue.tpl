
				<h2 class="current-issue" id="{$cssname}">The Current Issue</h2>
				<div class="article-list">
				
				<div class="period">{$issue.period} {$issue.year}</div>
				<table class="articles" id="features">
				    <tr>
					    <th colspan="2"><h3>Features</h3></th>
					</tr>
					{tagged tagid=$featureTagID what="article" issueid=$publication.issue.id}
						{section name="t" loop=$taglist max=1}
						{counter start=0 print=false}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a id="article{counter print=true}" href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
				<div class="horizontal-rule"><img src="{$images}/blank.gif" width="1" height="1" alt="" border="0" /></div>	
				<table class="articles" id="departments">
				    <tr>
					    <th colspan="2"><h3>Departments</h3></th>
					</tr>
					{tagged tagid=$departmentTagID what="article" issueid=$publication.issue.id}
					{section name="t" loop=$taglist}
					{section name="a" loop=$taglist[t].articles}
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a id="article{counter print=true}" href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a id="article{counter print=true}" href="{$taglist[t].articles[a].url}">{$taglist[t].title}:&nbsp;{$taglist[t].articles[a].title}</a>{/if}
						</td>
						<td class="archive-link">
						<a href="/media/San-Diego-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive &raquo;</a>
						</td>		
					</tr>
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}				
					{/section}	
				</table>
				</div>