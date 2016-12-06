{menu id=$config.primary_nav_menu_id}
{math equation="ceil(x/2)" x=$menu|@count assign="menuHalf"}
<nav role="navigation" class="main-menu nav-container menu-container nav-collapse collapse" id="menu_{$config.primary_nav_menu_id}">
	{assign var="menuAlreadyOn" value=false}
	{assign var="menuFirstHalf" value=""}
	{assign var="menuSecondHalf" value=""}
        {foreach from=$menu key="k" item="item" name="main"}
          	{if !$menuAlreadyOn}
            	{foreach from=$item.params.tagids k="k" item="tagid"}
                	{if $Page->tags[$tagid]<>''}{assign var="menuOn" value="on "}{assign var="menuAlreadyOn" value=true}{/if}
            	{/foreach}
          	{/if}

        	{if $smarty.foreach.main.iteration <= $menuHalf}
        		{capture name="menu_first_half"}
        			{strip}
                        <li{if $item.params.classname<>'' || $smarty.foreach.main.last || $item.children|@count > 0} class="{if $item.children|@count > 0}dropdown{/if} {$item.params.classname} {if $smarty.foreach.main.last}last{/if}"{/if}>
                            {* we have to put an extra DIV in here because Firefox won't let us position elements relative to an element with a display of 'table-cell' :( *}
                            <div class="menu-item-wrapper">
                            {if $item.children|@count > 0}<button class="btn collapsed" data-toggle="collapse" data-target="#submenu_{$item.id}" data-parent="#main-menu-list-small"><span class="caret"></span></button>{/if}
                            <a id="menu_{$item.id}" class="{$menuOn}
                            {if $item.url === $publication.url && $ishome == true} on{/if} 
                            {if $item.url === $publication.url|cat:'archive-index' && $isarchive == true} on{/if}" href="{if $item.url<>''}{$item.url}{else}#{/if}"
                            {if $item.linktarget<>''} target="{$item.linktarget}"{/if}
                            {if $item.onclick<>''} onclick="{$item.onclick}"{/if}
                            >
                            <span>{if $item.name|trim != ""}{$item.name|trim}{else}{$item.title|trim}{/if}</span>{if $item.children|@count > 0 && empty($menuOn)}<span class="caret"></span>{/if}
                            </a>
                            {* add menu here if it exists *}
                            {if $item.children|@count > 0}
                                	{flyout_responsive menu=$item.children parentid=$item.id menuClass="dropdown-menu collapse"}
                                	{if !empty($menuOn)}
                                		{if $smarty.foreach.main.first}
                                			{assign var="firstLast" value="first"}
                                		{elseif $smarty.foreach.main.last}
                                			{assign var="firstLast" value="last"}
                                		{/if}
                                		{capture assign="droppedMenu"}
                                    		{flyout_responsive menu=$item.children menuClass="dropped-menu"}
                                		{/capture}
                                	{/if}
                            {/if}
                            </div>
                        </li>
                	{/strip}
        		{/capture}
        		{assign var="menuFirstHalf" value=$menuFirstHalf|cat:$smarty.capture.menu_first_half}
        	{else}
        		{capture name="menu_second_half"}
        			{strip}
                        <li{if $item.params.classname<>'' || $smarty.foreach.main.last || $item.children|@count > 0} class="{if $item.children|@count > 0}dropdown{/if} {$item.params.classname} {if $smarty.foreach.main.last}last{/if}"{/if}>
                            <div class="menu-item-wrapper">
                            {if $item.children|@count > 0}<button class="btn collapsed" data-toggle="collapse" data-target="#submenu_{$item.id}" data-parent="#main-menu-list-small"><span class="caret"></span></button>{/if}
                            <a id="menu_{$item.id}" class="{$menuOn}
                            {if $item.url === $publication.url && $ishome == true} on{/if} 
                            {if $item.url === $publication.url|cat:'archive-index' && $isarchive == true} on{/if}" href="{if $item.url<>''}{$item.url}{else}#{/if}"
                            {if $item.linktarget<>''} target="{$item.linktarget}"{/if}
                            {if $item.onclick<>''} onclick="{$item.onclick}"{/if}
                            >
                            <span>{if $item.name|trim != ""}{$item.name|trim}{else}{$item.title|trim}{/if}</span>{if $item.children|@count > 0 && empty($menuOn)}<span class="caret"></span>{/if}
                            </a>
                            {* add menu here if it exists *}
                            {if $item.children|@count > 0}
                                	{flyout_responsive menu=$item.children parentid=$item.id menuClass="dropdown-menu collapse"}
                                	{if !empty($menuOn)}
                                		{if $smarty.foreach.main.first}
                                			{assign var="firstLast" value="first"}
                                		{elseif $smarty.foreach.main.last}
                                			{assign var="firstLast" value="last"}
                                		{/if}
                                		{capture assign="droppedMenu"}
                                    		{flyout_responsive menu=$item.children menuClass="dropped-menu"}
                                		{/capture}
                                	{/if}
                            {/if}
                            </div>
                        </li>
                	{/strip}
        		{/capture}
        		{assign var="menuSecondHalf" value=$menuSecondHalf|cat:$smarty.capture.menu_second_half}
        	{/if}
        	{assign var="menuOn" value=""}
        {/foreach}
	{* smaller breakpoint *}
	<div class="main-menu-list-small-wrapper">
	<ul id="main-menu-list-small" class="main-menu-list nav" >
    	<li class="menu-column menu-column-1">
    		<ul>{$menuFirstHalf}</ul>
    	</li>
    	<li class="menu-column menu-column-2">
    		<ul>{$menuSecondHalf}</ul>
    	</li>
	</ul>
	</div>
	{* larger breakpoint *}
	<div class="container-fluid">
	<div class="nav-wrapper">
    	<ul id="main-menu-list-large" class="main-menu-list nav" >
        	{$menuFirstHalf}
        	{$menuSecondHalf}
        </ul>
    </div>
    </div>
</nav>
{if !empty($droppedMenu)}
	<div class="dropped-menu-layer"><div class="container-fluid"><div class="dropped-menu-wrapper{if $firstLast<>''} {$firstLast}{/if}">{$droppedMenu}</div></div></div>
{/if}

{literal}
    <script>
        jQuery('.dropdown span').html('<img style="width:30px;" src="/images/socialIcons/hamburger3.png" />');
        jQuery('.dropdown a').css({padding:'0px', background:'transparent', 'box-shadow':'none'});
        jQuery('.deskSearch span').html('').html('<img src="/images/biz417/search.png" />');
    </script> 
{/literal}