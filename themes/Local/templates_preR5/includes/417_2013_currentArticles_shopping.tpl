{getarticles tagids=$tagID what="article" max='2' order="ops_article.displayorder asc,ops_article.datepublished desc"}				

{if isset($articles)}	
	  
	
	
	
	
		
		{if $tagID == "53"}
	<div class="whitebox">
		<div style="width:100%; height:5px; border-bottom: 1px solid #919191; margin-bottom:14px; padding-bottom:20px; margin-top:10px; background-color:#000; margin-right:5px;"><a href="/417-Magazine/417-Shopping/"><img style="margin-left:-17px;" alt="Shopping" src="/images/elements/headers/wraps/shopping-wrap.gif" /></a></div>

		{/if}

	<div class="boxcontent">
	
	<table class="articles2" id="departments"><tr>
		{section name="t" loop=$articles max='2'}
		
		
			
			<td class="article-image2" valign="top"></td>		
		     
			<td valign="top" colspan="2">
				<table border="0" cellspacing="0" cellpadding="0" width="300px" style="width:300px;" >
                                    <tr>
                                        <td>
                                            {if $articles[t].image<>''}<a href="{$articles[t].url}"><img src="{if $articles[t].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[t].url}{$articles[t].image}&w=250&q=100{else}/images/blank.gif{/if}" border="0" width="250px" {if $articles[t].image<>''}{else}  {/if}alt="{$articles[t].title}" class="article-list-image" /></a>{else}&nbsp;{/if}
                                        </td>
                                    </tr>
					<tr class="department-header">
						<td class="header-left">
						{if $articles[t].title==$articles[t].title}<a href="{$articles[t].url}">{$articles[t].title}</a>{else}<a href="{$articles[t].url}">{$articles[t].title}</a>{/if}
						</td>
						<td class="archive-link" valign="bottom">
						{if $isDEPT<>''}
						<!--<a href="/417-Magazine/Department-Archive/index.php?tagID={$articles[t].id}">Archive&nbsp;&raquo;</a>-->
						{/if}
						</td>		
					</tr>
					
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$articles[t].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $articles[t].author<>''}{$articles[t].author}{/if}</p>
						</td>
					</tr>
					
					
				</table>
			</td>											
		
                
		
	    {/section}				
		
                </tr>
                <tr>
			<td valign="top" colspan="6">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header2">
						<td class="header-left2">
						<a href="/417-Magazine/417-Shopping/"  style="color:#D71921;  font-size:10pt;">Read More</a>
						</td>
								
					</tr>
                                        
				</table>
			</td>											
		</tr>
               
	  </table>
          </div>
	
          
	</div>
	
			
			

{/if}
{assign var="iscontent" value=""}
