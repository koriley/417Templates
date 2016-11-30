{addcss file="417Today.css" order="900" }
{getarticles tagids=$tagID what="article" max=$maxarticles order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	
{if isset($articles)}		
	  <div class="" style="width:auto; margin-top:10px;">
				
	<div class="blogContent">

	<ul class="blogList">
		{section name="a" loop=$articles max=$maxarticles}				

{section name="t" loop=$articles[a].tags}
<!--<div>{$articles[a].tags[t].tagid}</div>-->

                {if $articles[a].tags[t].tagid=="218"}
                  {assign var="blogcat" value="Promotion"}
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
                {if $articles[a].tags[t].tagid=="329"}
                  {assign var="blogcat" value="Well Worn"}
                {/if}
                {if $articles[a].tags[t].tagid=="330"}
                  {assign var="blogcat" value="417 Eats"}
                {/if}
                 {if $articles[a].tags[t].tagid=="378"}
                  {assign var="blogcat" value="Style 417"}
                {/if}
                {if $articles[a].tags[t].tagid==""}

                  {assign var="blogcat" value="#"}
                 {/if}
		{if $articles[a].tags[t].tagid=="310"}
                  {assign var="blogcat" value="DIY Projects"}
                {/if}
{/section}
              
                    
                    
			 
					<li class="blogListLI">
                                                    
                                                  
						<span class="blogTitle din"><div class="blogListItem"><img src="http://www.417mag.com/images/2014/blogdot.png" /></div><a href="{$articles[a].url}">{$articles[a].title}</a> </span><br />
						<span class="blogCatandDate" style="margin-bottom:10px;"> {$blogcat} - {$articles[a].datepublished|dateformat:"%a, %b %e, %Y"} {if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }<img src="/images/re/new-today.png" width="60px">{/if} </span> <br/>                                  
                                                   
                                                                                   
                                 <!--  <tr class="article-item">
						<td class="department-content" colspan="2">						
						<p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y @ %I.%M %p"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>
 						                                             
						<p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<div class="comment-box">{if $articles[a].comments=='1'}comment {else}comments{/if}</p>
                                                </td>
					</tr>        --> 
				
					</li>	
										
		
		{/section}				
	</ul>					
		
		
		</div>
	  </div>	

{/if}
