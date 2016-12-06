{menu id=$config.primary_nav_menu_id}
{assign var="dropMenu" value="false"}
<div class="nav-container" id="menu_{$config.primary_nav_menu_id}">
  <table class="nav"><tbody><tr>
    {assign var="menuAlreadyOn" value=false}
    {foreach from=$menu key="k" item="item" name="main"}
      {if !$menuAlreadyOn}
        {foreach from=$item.params.tagids k="k" item="tagid"}
            {if $Page->tags[$tagid]<>''}{assign var="menuOn" value="on "}{assign var="menuAlreadyOn" value=true}{/if}
        {/foreach}
      {/if}
    {strip}
    <td{if $item.params.classname<>'' || $smarty.foreach.main.last} class="{$item.params.classname} {if $smarty.foreach.main.last}last{/if}"{/if}>
    {if $item.url<>''}<a{else}<span{/if} class="{if $item.children|@count > 0}dropdown {/if}{$menuOn}
    {if $item.url === $publication.url && $ishome == true}on{/if} 
    {if $item.url === $publication.url|cat:'archive-index' && $isarchive == true}on{/if}" 
    {if $item.url<>''} href="{$item.url}"{/if}
    {if $item.linktarget<>''} target="{$item.linktarget}"{/if}
    {if $item.onclick<>''} onclick="{$item.onclick}"{/if}>
    {$item.title}
    {if $item.url<>''}</a>{else}</span>{/if}
    {/strip}
    {* add menu here if it exists *}
    {if $item.children|@count > 0}
    {addjs file="prototype.js"}
	{addjs file="Menu.class.js"}
    {assign var="dropMenu" value="true"}
    	{flyoutmenu menu=$item.children}
    {/if}
    </td>
    {assign var="menuItemTags" value=""}
    {assign var="menuOn" value=""}
    {/foreach}
  </tr></tbody></table>
</div>

{if $dropMenu == "true"}
<script type="text/javascript">
		var menu_{$config.primary_nav_menu_id} = new Menu('menu_{$config.primary_nav_menu_id}',{ldelim}
				dropshadow: true, // render a Javascript dropshadow?
				dropShadowOpacity: 50, // the opacity of the dropshadow (1-100). Has no effect if dropshadow set to 'false'
				dropShadowSize: 5, // the opacity of the dropshadow (1-100). Has no effect if dropshadow set to 'false'
				offset: 0, // the offset of the sub-menus
				delay: 100 // delay, in milliseconds for menus to go away after rolling off of them
				{rdelim});
</script>
{/if}