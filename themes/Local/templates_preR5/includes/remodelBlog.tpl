{getarticles tagids=$tagID what="article" max="100" order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	
		
	  <div class="whitebox">
		<div class="header-silver"><h6 class="sIFR"></h6></div>
		<div class="boxcontent">

	<table class="articles" id="departments">
		{section name="a" loop=$articles}				
		
              <tr>
			<td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=200&q=100{else}/images/blank.gif{/if}" border="0" width="200" {if $articles[a].image<>''}{else} height="200" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			<td valign="top" >
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="adheader-left">						
						<a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						</td>
						<td class="archive-link" valign="bottom">
						</td>		
					</tr>                                       
                                         <tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$articles[a].summary|truncate:200:"...":false}</p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 						<p class="article-byline">Posted on: {$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</p>
						</td>
					</tr>
                                        
				</table>
			</td>
               
		{/section}				
	</table>					
		
		
		</div>
	  </div>	



