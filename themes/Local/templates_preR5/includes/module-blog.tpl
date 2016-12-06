{tagged tagid=$tagID what="article"}
{section name="t" loop=$taglist max=1}					
{section name="a" loop=$taglist[t].articles}
{assign var="iscontent" value="true"}
{/section}
{/section}					
	
	
{if $iscontent=="true"}		
	  <div class="whitebox">
		<div class="header-silver"><h6 class="sIFR"><a href="{$headerURL}">{$headerTEXT}</a></h6></div>
		<div class="boxcontent">

	<table class="articles" id="departments">
		{section name="t" loop=$taglist max=1}			
		{section name="a" loop=$taglist[t].articles}				
		<tr>
			<td class="article-image" valign="top">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $taglist[t].articles[a].image<>''}{else} height="74" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			<td valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
						<td class="archive-link" valign="bottom">
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

{/if}
{assign var="iscontent" value=""}
