 
<div class="whitebox">
				
	<div class="boxcontent">

	<table class="articles" id="departments">
		<tr>
			<td>
				<table>
                                    <tr>
						<td>
							<table>
								{getarticles tagids=$tagID11 what="article" order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="office_remodel"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=332"><img src="http://www.417mag.com/images/elements/headers/blogs/Remodel_BlogLogo.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="332"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
                                                                      <!--<p>{$articles[a].body}</p>-->
						                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=332">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table>
								{getarticles tagids=$tagID8 what="article" max=10 order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="best-of-the-day"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=181"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="181"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
                                                                      <!--<p>{$articles[a].body}</p>-->
						                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=181">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>
					
					
					<tr>
						<td>
							<table>
								{getarticles tagids=$tagID1 what="article" max=10 order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="talk-of-the-town"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=176"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="176" || $articles[a].tags[t].tagid=="263" || $articles[a].tags[t].tagid=="178" || $articles[a].tags[t].tagid=="264"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
						                      <!--<p>{$articles[a].body}</p>-->
                                                                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=176">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>
					
					<tr>
						<td>
							<table>
								{getarticles tagids=$tagID9 what="article" max=10 order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="contests"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=269"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="269"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="125" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
						                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=269">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>
									
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>
							<table>
								{getarticles tagids=$tagID5 max=10 what="article" order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="photo-file"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=167"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="267" || $articles[a].tags[t].tagid=="167"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
						                      <!--<p>{$articles[a].body}</p>-->
                                                                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=167">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table>
							   
								{getarticles tagids=$tagID2 what="article" max=10 order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="table-talk"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=179"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /></a> </td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="177" || $articles[a].tags[t].tagid=="179"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
						                      <!--<p>{$articles[a].body}</p>-->
                                                                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=179">Archives</a></td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table>
								{getarticles tagids=$tagID3 what="article" max=10 order="ops_article.displayorder asc,ops_article.datepublished desc"}	
							{assign var="blogcat" value="bridal-buzz"}
							    <tr><td colspan="2" class="blog-header"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=217"><img src="/images/elements/headers/blogs/{$blogcat}.jpg" /> </a></td></tr> 
							{section name="a" loop=$articles}				
        					{section name="t" loop=$articles[a].tags }
                            {if $articles[a].tags[t].tagid=="182" || $articles[a].tags[t].tagid=="217" || $articles[a].tags[t].tagid=="271" || $articles[a].tags[t].tagid=="194"}
                                <tr><td class="article-image" valign="top">{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=75&q=100{else}/images/blank.gif{/if}" border="0" width="75" {if $articles[a].image<>''}{else} height="75" {/if}alt="{$articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
			                        <td valign="top">
				                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
					                      <tr class="department-header">
						                     <td class="header-left">
						<!--{if $articles[a].datepublished|date_format:"%B %e" == $smarty.now|date_format:"%B %e" }
        					<div ><img src="images/re/new-today.jpg"/></div>{/if}-->
						                        <a href="{$articles[a].url}">{$articles[a].title}</a>                                           
						                    </td>
						                     <td class="archive-link" valign="bottom">
						                     </td>		
					                     </tr>                                       
                                         <tr class="article-item">
						                    <td class="department-content" colspan="2">						
						                      <p><span class="article-byline">{$articles[a].datepublished|dateformat:"%A, %B %e, %Y"}</span><br />{$articles[a].summary|truncate:100:"...":true} </p>
						                      <!--<p class="article-byline">{$articles[a].comments} comments</p>-->
						                      <!--<p>{$articles[a].body}</p>-->
                                                                      <p class="article-byline"><a href="{$articles[a].url}">READ MORE</a></p>
						<!--<p class="article-byline">{if $articles[a].author<>''}{$articles[a].author}{/if}</p>-->
 		 				                    </td>
					                    </tr>         
				                       </table>
							{/if}
							{/section}
							{/section}
						           </td>
					           </tr><tr><td><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=217">Archives</a></td></tr>
							
							</table>
						</td>
					</tr>					
					
				</table>
			</td>
		</tr>
	</table>
	</div>
	</div>
