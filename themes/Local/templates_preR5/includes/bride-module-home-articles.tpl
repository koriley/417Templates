{if $size=='half'}
{tagged tagid=$tagID what="article" max=$getMAX issueid=$publication.issue.id}

{else}
{tagged tagid=$tagID what="article" }

{/if}

{assign var="iscontent" value="true"}
{assign var='isDEPT' value=""}				
	
	
{if $iscontent=="true"}		
	  <div class="whitebox">
	
		<div class="boxcontent">

	<table class="articles" id="departments">
		{section name="t" loop=$taglist max=3}					
		{section name="a" loop=$taglist[t].articles}				
		<tr>
		{if $isDEPT<>''}{else}
			<td class="article-image" style="padding-bottom:10px;" valign="top">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=200&q=100{else}/images/blank.gif{/if}" border="0" width="200" {if $taglist[t].articles[a].image<>''}{else} height="150" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}{/if}</td>		
		{/if}

			<td valign="top" style="padding-bottom:10px;">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
						<td class="archive-link" valign="bottom">
						{if $isDEPT<>''}
						<a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive&nbsp;&raquo;</a>
						{/if}
						</td>		
					</tr>
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $taglist[t].articles[a].author<>''}{$taglist[t].articles[a].author}{/if}</p>
						</td>
					</tr>
				</table>
			</td>											
		</tr>
	  
		{/section}				
		{/section}	
	</table>					
		
		
		</div>
	  </div>
<!-- {if $size=='half'}
<div style="float:right; padding-right:15px;"><a href="http://www.417bride.com/417-Bride/Real-Weddings/index.php">&raquo;More Real Weddings </a></div>
{/if}	-->

{/if}
{assign var="iscontent" value=""}
