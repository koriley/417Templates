{tagged tagid="47" what="article" issueid=$issue.id}
{section name="t" loop=$taglist max=1}
{section name="a" loop=$taglist[t].articles}
{assign var="showmenu" value="true"}
{/section}
{/section}
{if $showmenu<>''}
<div class="column-3-box-white">
	<div class="header-grey">
	<h4 class="sIFR">417 People Pics</h4>
	</div>
<ul class="child-page-menu">
{section name="t" loop=$taglist max=1}
{section name="a" loop=$taglist[t].articles}
			<li><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title} &raquo;</a></li>					
{/section}						
{/section}	
		</ul>
</div>
{/if}