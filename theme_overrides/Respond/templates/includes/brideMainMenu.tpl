{menu id=$config.primary_nav_menu_id}

<nav id="menu_{$config.secondary_nav_menu_id}" class="">
    
    <ul id=""  class="">
         
    {foreach from=$menu key="k" item="item" name="eyebrow"}
        {if $item.url<>''}<a{else}<span{/if}{if $item.classname<>''} class="{$item.classname}"{/if}{if $item.url<>''} href="{$item.url}"{/if}{if $item.linktarget<>''} target="{$item.linktarget}"{/if}{if $item.onclick<>''} onclick="{$item.onclick}"{/if}><li>
<span style="text-transform:uppercase;">{if $item.name|trim != ""}{$item.name|trim}{else}{$item.title|trim}{/if}
        </li>{if $item.url<>''}</span></a>{else}</span>{/if}
    {/foreach}
    
    
   
    </ul>
    
       
    
</nav>
    