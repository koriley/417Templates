{getarticles tagids=$tagID what="article" max=$maxarticles order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	<!-- rebuilt for mobile -->
{if isset($articles)}		
	  <div class="whitebox">
			<div class="articleListTop">{$myTitle}</div>	
	<div class="boxcontent">
{section name="a" loop=$articles}
	<table class="articles" id="departments">
           <tr class="article-item"></tr>
						


              
                    
                         
                      <!--<tr><td colspan="2" class="blog-header"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></td></tr>-->
			 <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=100&q=100{else}/images/blank.gif{/if}" border="0" width="100" {if $articles[a].image<>''}{else} height="125" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			     <td valign="top">
				<table class="tableContent" border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header">
						<td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						<a href="{$articles[a].url}"><div class="articleBoxTitle">{$articles[a].title}</div></a>                                           
						</td>
								
					</tr>                                       
                                         
                                        </table>
			</td>			
										
		</tr>
               
	</table>			
		{/section}				
						
		
		
		</div>
                <div class="articleListBottom"></div>
	  </div>	
{/if}

