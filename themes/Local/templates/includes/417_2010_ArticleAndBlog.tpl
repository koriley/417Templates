{tagged tagid=$BlogtagID what="article" }

{section name="t" loop=$taglist max=5}					
{section name="a" loop=$taglist[t].articles}
{assign var="biscontent" value="true"}
{/section}
{/section}					

	
{if $biscontent=="true"}	
    <div class="whitebox">
				<!--section title?-->
		{$BlogTagID}
	<div class="boxcontent">

<table class="articles" id="departments">
	             {section name="t" loop=$taglist max=$max}
                     {section name="a" loop=$taglist[t].articles max=$max}
             
		<tr>
		    <td class="article-image" valign="top">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=125&q=100{else}/images/blank.gif{/if}" border="0" width="125" {if $taglist[t].articles[a].image<>''}{else} height="125" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
		    <td valign="top" colspan="2">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">

						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
{if $taglist[t].articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        <td><div ><img src="/images/re/new-today.jpg"/></div></td>{/if}
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
				</table>
			</td>										
		</tr>
		{/section}				
		{/section}	
	  </table>	
	</div>
	</div>
{/if}
{assign var="biscontent" value=""}


{tagged tagid=$tagID what="article" issueid=$publication.issue.id max=5}

{section name="t" loop=$taglist max=5}					
{section name="a" loop=$taglist[t].articles}
{assign var="iscontent" value="true"}
{/section}
{/section}					
	
	
{if $iscontent=="true"}	
    <div class="whitebox">
				<!--section title?-->
		
	<div class="boxcontent">
<img style="padding-top:20px;" alt="Current Issue" src="/images/elements/headers/middle/current-issue.gif">
<table class="articles" id="departments">
		{section name="t" loop=$taglist max=5}
	    {section name="a" loop=$taglist[t].articles}
		<tr>
		    <td class="article-image" valign="top">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=125&q=100{else}/images/blank.gif{/if}" border="0" width="125" {if $taglist[t].articles[a].image<>''}{else} height="125" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
		    <td valign="top" colspan="2">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>{/if}
						</td>
{if $taglist[t].articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        <td><div ><img src="/images/re/new-today.jpg"/></div></td>{/if}
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
				</table>
			</td>										
		</tr>
		{/section}				
		{/section}	
	  </table>	
	</div>
	</div>
{/if}
{assign var="biscontent" value=""}


{tagged tagid=$tagID what="article" issueid=$publication.issue.id max=5}

{section name="t" loop=$taglist max=5}					
{section name="a" loop=$taglist[t].articles}
{assign var="iscontent" value="true"}
{/section}
{/section}					
	
	
