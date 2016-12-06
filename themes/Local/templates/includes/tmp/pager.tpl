<div id="pager">
{if $pager.prev<>''}<a href="{$pager.prev}" class="pageritem">&lt;&lt;&nbsp;Prev</a>
{/if}
{section name="p" loop=$pager.items}
{if $pager.items[p].iscurrent==0}<a href="{$pager.items[p].url}" class="pageritem">{$pager.items[p].value}</a>
{else}
<span class="pageritem">{$pager.items[p].value}</span>
{/if}
{/section}
{if $pager.next<>''}<a href="{$pager.next}" class="pageritem">Next&nbsp;&gt;&gt;</a>
{/if}
</div>