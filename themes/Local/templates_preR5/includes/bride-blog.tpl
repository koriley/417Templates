{getarticles tagids=$tagID what="article" max=$maxarticles order="ops_article.displayorder asc,ops_article.datepublished desc"}				
	
	
{if isset($articles)}		
	  <div class="whitebox">
		<!--<div class="header-silver"><h6 class="sIFR"><a href="{$headerURL}">{$headerTEXT}</a></h6></div>-->
		<div class="boxcontent">

	<table class="articles" id="departments">
		{section name="a" loop=$articles}				
		<tr>
			<td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $articles[a].image<>''}{else} height="74" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			<td valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        <div ><img src="images/re/new-today.jpg"/></div>{/if}
						<a href="{$articles[a].url}">{$articles[a].title}</a>
						</td>
						<td class="archive-link" valign="bottom">
						</td>		
					</tr>
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$articles[a].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>
 						<p class="article-byline">Posted on: {$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</p>
						</td>
					</tr>
				</table>
			</td>											
		</tr>
		{/section}				
	</table>					
		
		
		</div>
	  </div>	

{/if}
