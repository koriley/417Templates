{getarticles tagids=$tagID what="article" max=$maxarticles order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	
{if isset($articles)}		
	  <div class="whitebox">
				
	<div class="boxcontent">

	<table class="blog-articles" id="departments" style="width:100%;">
		{section name="a" loop=$articles}				

{section name="t" loop=$articles[a].tags}
<!--<div>{$articles[a].tags[t].tagid}</div>-->

                {if $articles[a].tags[t].tagid=="218"}
                  {assign var="blogcat" value="Promotion"}
                {/if}
                {if $articles[a].tags[t].tagid=="330"}
                  {assign var="blogcat" value="417 Eats"}
                {/if}
                {if $articles[a].tags[t].tagid=="283"}
                  {assign var="blogcat" value="Club 417"}
                {/if}
				{if $articles[a].tags[t].tagid=="281"}
                  {assign var="blogcat" value="Expert Tips"}
                {/if}
				{if $articles[a].tags[t].tagid=="268"}
                  {assign var="blogcat" value="Events"}
                {/if}
                {if $articles[a].tags[t].tagid=="282"}
                  {assign var="blogcat" value="Giving Back"}
                {/if} 
                {if $articles[a].tags[t].tagid=="269"}
                  {assign var="blogcat" value="Contests"}
                {/if}
                {if $articles[a].tags[t].tagid=="194"}
                  {assign var="blogcat" value="Bridal Buzz"}
                {/if}
                {if $articles[a].tags[t].tagid=="176"}
                  {assign var="blogcat" value="Talk of the Town"}
                {/if}
                {if $articles[a].tags[t].tagid=="181"}
                  {assign var="blogcat" value="Best of the Day"}
                {/if}
                {if $articles[a].tags[t].tagid=="263"}
                  {assign var="blogcat" value="Talk of the Town"}
                {/if}
                {if $articles[a].tags[t].tagid=="178"}
                  {assign var="blogcat" value="Talk of the Town"}
                {/if}
                {if $articles[a].tags[t].tagid=="264"}
                  {assign var="blogcat" value="Talk of the Town"}
                {/if}
                {if $articles[a].tags[t].tagid=="177"}
                  {assign var="blogcat" value="Table Talk"}
                {/if}
                {if $articles[a].tags[t].tagid=="179"}
                  {assign var="blogcat" value="Table Talk"}
                {/if}
                {if $articles[a].tags[t].tagid=="167"}
                  {assign var="blogcat" value="Photo File"}
                {/if}
                {if $articles[a].tags[t].tagid=="267"}
                  {assign var="blogcat" value="Photo File"}
                {/if}
                {if $articles[a].tags[t].tagid=="182"}
                  {assign var="blogcat" value="Bridal Buzz"}
                {/if}   
                {if $articles[a].tags[t].tagid=="217"}
                  {assign var="blogcat" value="Bridal Buzz"}
                {/if}	
                {if $articles[a].tags[t].tagid=="271"}
                  {assign var="blogcat" value="Bridal Buzz"}
                {/if}	
                {if $articles[a].tags[t].tagid=="265"}
                  {assign var="blogcat" value="Critics Corner"}
                {/if}
                {if $articles[a].tags[t].tagid=="266"}
                  {assign var="blogcat" value="Critics Corner"}
                {/if}
               {if $articles[a].tags[t].tagid=="180"}
                  {assign var="blogcat" value="Savvy Shopper"}
                {/if}
               {if $articles[a].tags[t].tagid=="272"}
                  {assign var="blogcat" value="Savvy Shopper"}
                {/if}
               {if $articles[a].tags[t].tagid=="270"}
                  {assign var="blogcat" value="Cuddle Party"}
                {/if}
		{if $articles[a].tags[t].tagid=="276"}
                  {assign var="blogcat" value="Weekend Pass"}
                {/if}
		{if $articles[a].tags[t].tagid=="285"}
                  {assign var="blogcat" value="Deal of the Day"}
                {/if}
                {if $articles[a].tags[t].tagid==""}

                  {assign var="blogcat" value="#"}
                 {/if}
		{if $articles[a].tags[t].tagid=="310"}
                  {assign var="blogcat" value="DIY Projects"}
                {/if}
                
{/section}
              
                    <!------This is for ads -->  
                    {if $articles[a].author != ""}
                     <tr><td colspan="2"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></td></tr>
					<tr> <td colspan="2" style="text-align:center; font-size:10px; padding:2px; border-top:1px dashed;"><i>promotion</i></td>
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
                                          <p class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</p>
						<p>{$articles[a].summary|truncate:200:"...":false}</p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
						</td>
					</tr>
                                        
				</table>
			</td>
               <tr>
                     <td colspan="2" style="border-bottom: 1px dashed; padding:0px"></td></tr>
                   <!------End for ads--->
                     {else}
			 
					<tr class="department-header">
						<td class="blog-title">
						<a href="{$articles[a].url}">{$articles[a].title}</a> 
						<p class="article-byline"> {$blogcat} - {$articles[a].datepublished|dateformat:"%A, %B %e, %Y"} </p>                                    
						</td>
								
					</tr>                                      
                                 <!--  <tr class="article-item">
						<td class="department-content" colspan="2">						
						<p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y @ %I.%M %p"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>
 						                                             
						<p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<div class="comment-box">{if $articles[a].comments=='1'}comment {else}comments{/if}</p>
                                                </td>
					</tr>        --> 
				
						
		{/if}								
		</tr>
		{/section}				
	</table>					
		
		
		</div>
	  </div>	

{/if}
