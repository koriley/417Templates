					{tagged tagid=$tagID what="article"}
					{section name="t" loop=$taglist max=$getMAX}
					{section name="a" loop=$taglist[t].articles max=6}
					{assign var="showthisone" value="true"}
					{/section}
					{/section}					
					
					
					{if $showthisone=="true"}
				  <div class="whitebox">
					<div class="header-silver"><h6 class="sIFR"><a href="{$headerURL}">{$headerTEXT}</a></h6></div>
					<div class="boxcontent">


				<table class="articles" id="departments">
					{section name="t" loop=$taglist max=$getMAX}
					{if $taglist[t].id!=$suppresstagid}		
					{if $suppressheaders!="TRUE"}			
					<tr>
						<td colspan="2">

							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="department-header">
									<td class="header-left"><h6 class="sIFR">{$taglist[t].title}</h6>
									</td>
									<td class="archive-link" valign="bottom">
									<a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive&nbsp;&raquo;</a>
									</td>		
								</tr>
							</table>						
						
						</td>
					</tr>
					{/if}
					{section name="a" loop=$taglist[t].articles max=6}
					<tr>
					{if $isDEPT<>'' || $taglist[t].id=='41' || $taglist[t].id=='44'}
					
						<td valign="top" colspan="2">
					{else}					
						<td class="article-image">{if $taglist[t].articles[a].image<>''}<a href="{$taglist[t].articles[a].url}"><img src="{if $taglist[t].articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74" {if $taglist[t].articles[a].image<>''}{else} height="74" {/if}alt="{$taglist[t].articles[a].title}" class="article-list-image" /></a>{else}&nbsp;{/if}</td>		
						<td valign="top">
					{/if}
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
				  