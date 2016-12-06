{menu id=$config.secondary_nav_menu_id}
<div class="top-links">
{foreach from=$menu key="k" item="item" name="eyebrow"}
{if $item.url<>''}<a{else}<span{/if}{if $item.classname<>''} class="{$item.classname}"{/if}{if $item.url<>''} href="{$item.url}"{/if}{if $item.linktarget<>''} target="{$item.linktarget}"{/if}{if $item.onclick<>''} onclick="{$item.onclick}"{/if}>{$item.title}{if $item.url<>''}</a>{else}</span>{/if}{if $smarty.foreach.eyebrow.last}{else}&nbsp;&nbsp;|&nbsp;&nbsp;{/if}
{/foreach}
</div>