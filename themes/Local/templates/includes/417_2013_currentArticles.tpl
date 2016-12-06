

{getarticles tagid=$tagID  what="article" order="ops_article.displayorder asc,ops_article.datepublished desc" issueid=$publication.issue.id}	
{if $isDEPT<>''}{assign var="fmax" value="2"}{else}{assign var="fmax" value="1"}{/if}

{assign var=randArticle value=$articles|@array_rand}
{assign var=randArticle2 value=$articles|@array_rand}
{if $randArticle === $randArticle2}
     {assign var=randArticle2 value=$articles|@array_rand}
{/if}     
	
{if isset($articles)}	
	  
	
                
            
	
	{section name="t" loop=$articles max=$fmax}
	
		
		{if $tagID == "273"}
	<div class="whitebox">
		<div style="width:100%; height:5px; border-bottom:1px solid #919191; margin-bottom:14px; padding-bottom:20px; margin-top:10px; background-color:#000; margin-right:5px;"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=273"><img style="margin-left:-17px;" src="/images/elements/headers/wraps/in-this-issue.gif" /></a></div>

		{/if}

	<div class="boxcontent">
	
	<table class="articles2" id="departments"><tr>
		
                {section name="t" loop=$articles max=$fmax}
                    
		
			
			<td class="article-image2" valign="top"></td>		
		     
			<td valign="top" colspan="2">
				<table border="0" cellspacing="0" cellpadding="0" width="300px" style="width:300px;" >
                                    <tr>
                                        <td>
                                            {if $articles[$randArticle].image<>''}<a href="{$articles[$randArticle].url}"><img src="{if $articles[$randArticle].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[$randArticle].url}{$articles[$randArticle].image}&w=250&q=100{else}/images/blank.gif{/if}" border="0" width="250px" {if $articles[$randArticle].image<>''}{else}  {/if}alt="{$articles[$randArticle].title}" class="article-list-image"style="width:250px; height:200px;" /></a>{else}&nbsp;{/if}
                                        </td>
                                    </tr>
					<tr class="department-header">
						<td class="header-left">
						{if $articles[$randArticle].title==$articles[$randArticle].title}<a href="{$articles[$randArticle].url}">{$articles[$randArticle].title}</a>{else}<a href="{$articles[$randArticle].url}">{$articles[$randArticle].title}</a>{/if}
						</td>
						<td class="archive-link" valign="bottom">
						{if $isDEPT<>''}
						<!--<a href="/417-Magazine/Department-Archive/index.php?tagID={$articles[$randArticle].id}">Archive&nbsp;&raquo;</a>-->
						{/if}
						</td>		
					</tr>
					
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$articles[$randArticle].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $articles[$randArticle].author<>''}{$articles[$randArticle].author}{/if}</p>
						</td>
					</tr>
					
					
				</table>
			</td>											
		
                {assign var=randArticle value=$randArticle2}
		
	    {/section}				
		
                </tr>
                <tr>
			<td valign="top" colspan="6">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr class="department-header2">
						<td class="header-left2">
						<a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=273"  style="color:#D71921;  font-size:10pt;">Read More</a>
						</td>
								
					</tr>
                                        
				</table>
			</td>											
		</tr>
               
	  </table>
          </div>
	
          
	</div>
	
	{/section}
			
			

{/if}

