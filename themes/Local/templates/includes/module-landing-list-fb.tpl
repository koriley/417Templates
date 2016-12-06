					{tagged tagid=$tagID what="article"}
					{section name="t" loop=$taglist max=$getMAX}
					{section name="a" loop=$taglist[t].articles max=$getMAX}
					{assign var="showthisone" value="true"}
					{/section}
					{/section}					
					
					
					{if $showthisone=="true"}


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
					
					{section name="a" loop=$taglist[t].articles max=$getMAX}

					
										
						<td class="article-image">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $taglist[t].articles[a].image<>''}{else} height="74" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
						<td valign="top">
					
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="department-header">
									<td class="header-left">
									<a style="text-decoration:none; font-weight:bold; font-size:13px; color:#3b5998;" id="article{counter print=true}" href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a>
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
					<a style="text-decoration:none; font-size:13px; color:#3b5998;" href="{$headerURL}">&raquo;More {$headerTEXT}</a>
					
				

				  {/if}
 				  {assign var="showthisone" value=""}
				  