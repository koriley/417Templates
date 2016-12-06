{tagged tagid=$tagID what="article" issueid=$publication.issue.id}
{if $isDEPT<>''}{assign var="fmax" value="5"}{else}{assign var="fmax" value="1"}{/if}
{section name="t" loop=$taglist max=$fmax}					
{section name="a" loop=$taglist[t].articles max=$fmax}
{assign var="iscontent" value="true"}
{/section}
{/section}					
	
	
{if $iscontent=="true"}		
	  
	
	
	{section name="t" loop=$taglist }
	{section name="a" loop=$taglist[t].articles}
		
		{if $tagID == "273"}
	<div class="whitebox">
		<a href="{$issue.url}"><img style="margin-left:-17px;" src="/images/elements/headers/wraps/in-this-issue.gif" /></a>

		{/if}

	<div class="boxcontent">
	
	<table class="articles2" id="departments">
		{section name="t" loop=$taglist max='5' max=$fmax}
	   	{section name="a" loop=$taglist[t].articles max=$fmax}
		{if $nopic == 1}
		<tr>
			<td valign="top" colspan="4">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header2">
						<td class="header-left2">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
								
					</tr>
                                        
				</table>
			</td>											
		</tr>
		{/if}
		{if $nopic != 1}
			<tr>
			<td class="article-image2" valign="top">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $taglist[t].articles[a].image<>''}{else} height="74" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
		     
			<td valign="top" colspan="2">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
						<td class="archive-link" valign="bottom">
						{if $isDEPT<>''}
						<!--<a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive&nbsp;&raquo;</a>-->
						{/if}
						</td>		
					</tr>
					
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $taglist[t].articles[a].author<>''}{$taglist[t].articles[a].author}{/if}</p>
						</td>
					</tr>
					{assign var='nopic' value='1'}
					
				</table>
			</td>											
		</tr>
                
		{/if}
	    {/section}				
		{/section}
                <tr>
			<td valign="top" colspan="4">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header2">
						<td class="header-left2">
						<a href="{$issue.url}"  style="color:#D71921;  font-size:10pt;">Read More</a>
						</td>
								
					</tr>
                                        
				</table>
			</td>											
		</tr>
               
	  </table>
          
	</div>
          
	</div>
	
	{/section}
	{/section}		
			

{/if}
{assign var="iscontent" value=""}
