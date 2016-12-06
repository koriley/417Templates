					{tagged tagid=$tagID what="article"}
					{section name="t" loop=$taglist max=$getMAX}
					{section name="a" loop=$taglist[t].articles max=3}
					{assign var="showthisone" value="true"}
					{/section}
					{/section}					
					
					
					{if $showthisone=="true"}

				  <div class="module-box">
					<p>
                                   {if $tagID == "57"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/re/home-header.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
                                        {if $tagID == "158"}
					<div style="text-align: left; margin-bottom:55px;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/topattorneys.png" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "40"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/re/dining-header.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "152"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/re/shopping-header.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "15"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/5-best.gif" alt="{$headerTEXT}" /></a></h2><br />&nbsp;</div>
					{/if}
					{if $tagID == "150"}
					  {if $micro == "true"}
                                           
					 
                                         {elseif $micro ==''}
                                            <div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/best-of.gif" alt="{$headerTEXT}" /></a></h2><br />&nbsp;</div>
					 
                                          {/if}
                                        {/if}
                                   {if $tagID == "151"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/top-docs.gif" alt="{$headerTEXT}" /></a></h2><br />&nbsp;</div>
					{/if}
					{if $tagID == "295"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/top-dentists.gif" alt="{$headerTEXT}" /></a></h2><br />&nbsp;</div>
					{/if}
                                   {if $tagID == "219"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/hot-husbands.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
                                   {if $tagID == "230"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/20-under-30.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "277"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/10mb.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "296"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/top-singles.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
					{if $tagID == "297"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/elements/headers/middle/best-dressed.gif" alt="{$headerTEXT}" /></a></h2></div>
					{/if}
                                        {if $tagID == "2013"}
					<div style="text-align: left;" class="middle-header"><h2><a href="{$headerURL}"><img src="/images/bestof/2013/best-of-archive.gif"  /></a></h2></div>
					{/if}
					</p>

					<div class="boxcontent">




				<table class="articles" id="departments">
					{section name="t" loop=$taglist max=$getMAX}
					{if $taglist[t].id!=$suppresstagid}		
					{if $suppressheaders!="TRUE"}			
					
<tr>
						<td colspan="2">
							
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="department-header">
									<td class="header-left" >
										<div style="text-align: left;" class="arrow-purple"><span class="archive-link" valign="bottom"><a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">More&nbsp;&raquo;</a></span>
											{$taglist[t].title}											
										</div>
									</td>
								</tr>
							<!--	<tr>
									<td></td>
									<td class="archive-link" valign="bottom">
									<a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive&nbsp;&raquo;</a>
									</td>		
								</tr> -->
							</table>						
						
						</td>
					</tr>
					{/if}
					{section name="a" loop=$taglist[t].articles max=3}

					<tr>
										
						<td class="article-image">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $taglist[t].articles[a].image<>''}{else} height="74" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
						<td valign="top">
					
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="department-header">
									<td class="header-left">
									<a id="article{counter print=true}" href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>
									</td>
									<td class="archive-link" valign="bottom">

									</td>		
								</tr>
								<tr class="article-item">
									<td class="department-content" colspan="2">
									<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
									{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
									</td>
								</tr>
							</table>
						</td>											
					</tr>
					{/section}				
					{/if}					
					{/section}	
				</table>					
					
					
					</div>
				  </div>	

				  {/if}
 				  {assign var="showthisone" value=""}
				  