{getarticles tagids=$tagID what="article" max=$maxarticles order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	
{if isset($articles)}		
	  <div class="whitebox">
		<div class="header-silver"><h6 class="sIFR"></h6></div>
		<div class="boxcontent">

	<table class="articles" id="departments">
		{section name="a" loop=$articles}				
		<tr>
                    <!------This is for ads-->   
                    {if $articles[a].author != ""}
                     <td colspan="2" style="text-align:center; font-size:10px; padding:2px; border-top:1px dashed;"><i>promotion</i></td>
              </tr>
              <tr>
			<td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $articles[a].image<>''}{else} height="74" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
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
               <tr>
                     <td colspan="2" style="border-bottom: 1px dashed; padding:0px"></td>	
                   <!------End for ads--->
                     {else}
                      
			 <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=125&q=100{else}/images/blank.gif{/if}" border="0" width="125" {if $articles[a].image<>''}{else} height="125" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
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
						<p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						<p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 						
						</td>
					</tr>         
				</table>
			</td>			
		{/if}								
		</tr>
		{/section}				
	</table>					
		
		
		</div>
	  </div>	

{/if}

