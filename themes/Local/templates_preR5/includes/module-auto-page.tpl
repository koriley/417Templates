{tagged tagid="$svar" what="page"}
{section name="t" loop=$taglist max=1}
				<div id="greybox">
					<div class="header-box">
						<div class="headline">
							<h2>{$stitle}</h2>
						</div>
						<div class="header-link"></div>
					</div>
					<div class="content-box">
{section name="a" loop=$taglist[t].pages max=1}
									<h4><a href="{$taglist[t].pages[a].url}">{$taglist[t].pages[a].title}</a></h4>
									<p>{$taglist[t].pages[a].description}</p>
{/section}	

<div class="clear"></div>	
					</div>
				</div>	
{/section}				
			
				
				
				
				
				