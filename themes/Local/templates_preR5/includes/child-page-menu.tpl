{getchildpages depth="1"}
{section name="childCheck" loop=$childpages max=1}
{if $childpages[childCheck]<>''}
<div style="background-color:white" class="tott column-3-box-white">
	<div class="header-grey">
		<h4 style="margin-left:10px" class="sIFR">{$Page->title}</h4>
	</div>
	<div id="child-page-menu">
		<div id="child-page-menu-container">
			<ul>
                     {section name='pgs' loop=$childpages}
			<li><a class="menulink" href="{$childpages[pgs].url}">{$childpages[pgs].title} &raquo;</a></li>
			{/section}
                     </ul>
		</div>
	</div>
</div>
{/if}
{/section}

