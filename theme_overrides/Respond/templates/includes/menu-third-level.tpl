{menu id=$config.third_level_nav_menu_id}
{math equation="ceil(x/2)" x=$menu|@count assign="menuHalf"}
<nav id="menu_{$config.third_level_nav_menu_id}" role="navigation" class="third-level-menu nav-container menu-container nav-collapse collapse">
    {assign var="menuAlreadyOn" value=false}
    {assign var="menuFirstHalf" value=""}
    {assign var="menuSecondHalf" value=""}
    {foreach from=$menu key="k" item="item" name="third_level"}
        {if !$menuAlreadyOn}
            {foreach from=$item.params.tagids k="k" item="tagid"}
                {if $Page->tags[$tagid]<>''}{assign var="menuOn" value="on "}{assign var="menuAlreadyOn" value=true}{/if}
            {/foreach}
        {/if}
        
        {if $smarty.foreach.third_level.iteration <= $menuHalf}
            {capture name="menu_first_half"}
                {strip}
                    <li{if $item.params.classname <> '' || $smarty.foreach.third_level.last || $item.children|@count > 0} class="{if $item.children|@count > 0}dropdown{/if} {$item.params.classname} {if $smarty.foreach.third_level.last} last{/if}" {/if}>
                        {* we have to put an extra DIV in here because Firefox won't let us position elements relative to an element with a display of 'table-cell' :( *}
                        <div class="menu-item-wrapper">
                            {if $item.children|@count > 0}
                                <button class="btn collapsed" data-toggle="collapse" data-target="#submenu_{$item.id}" data-parent="#third-level-menu-list-small">
                                    <div class="caret-button"><div class="caret"></div></div>
                                </button>
                            {/if}
                            <a id="menu_{$item.id}" class="{$menuOn}
                                {if $item.url == $publication.url && $ishome == true} on{/if}
                                {if $item.url == $publication.url|cat:'archive-index' && $isarchive == true} on{/if}" href="{if $item.url <> ''}{$item.url}{else}#{/if}"
                                {if $item.linktarget <> ''} target="{$item.linktarget}"{/if}
                                {if $item.onclick <> ''} onclick="{$item.onclick}" {/if}>
                                <span>{if $item.name != ""}{$item.name}{else}{$item.title}{/if}</span>{if $item.children|@count > 0 && empty($menuOn)}<span class="caret"></span>{/if}
                            </a>
                            {* add menu here if it exists *}
                            {if $item.children|@count > 0}
                                {flyout_responsive menu=$item.children parentid=$item.id menuClass="dropdown-menu collapse"}
                                {if !empty($menuOn)}
                                    {if $smarty.foreach.third_level.first}
                                        {assign var="firstLast" value="first"}
                                    {elseif $smarty.foreach.third_level.last}
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
                    <li{if $item.params.classname <> '' || $smarty.foreach.third_level.last || $item.children|@count > 0} class="{if $item.children|@count > 0}dropdown{/if} {$item.params.classname} {if $smarty.foreach.third_level.last}last{/if}"{/if}>
                        <div class="menu-item-wrapper">
                            {if $item.children|@count > 0}
                                <button class="btn collapsed" data-toggle="collapse" data-trigger="#submenu_{$item.id}" data-target="#submenu_{$item.id}" data-parent="#third-level-menu-list-small">
                                    <div class="caret-button"><div class="caret"></div></div>
                                </button>
                            {/if}
                            <a id="menu_{$item.id}" class="{$menuOn}
                                {if $item.url == $publication.url && $ishome == true} on{/if}
                                {if $item.url == $publication.url|cat:'archive-index' && $isarchive == true} on{/if}" href="{if $item.url <> ''}{$item.url}{else}#{/if}"
                               {if $item.linktarget <> ''} target="{$item.linktarget}"{/if}
                               {if $item.onclick <> ''} onclick="{$item.onclick}"{/if}>
                                <span>{if $item.name != ""}{$item.name}{else}{$item.title}{/if}</span>{if $item.children|@count > 0 && empty($menuOn)}<span class="caret"></span>{/if}
                            </a>
                            {* add menu here if it exists*}
                            {if $item.children|@count > 0}
                                {flyout_responsive menu=$item.children parentid=$item.id menuClass="dropdown-menu collapse"}
                                {if !empty($menuOn)}
                                    {if $smarty.foreach.third_level.first}
                                        {assign var="firstLast" value="first"}
                                    {else}
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
    <div class="third-level-menu-list-small-wrapper">
        <ul id="third-level-menu-list-small" class="third-level-menu-list nav">
            <li class="menu-column menu-column-1">
                <ul>{$menuFirstHalf}</ul>
            </li>
            <li class="menu-column menu-column-2">
                <ul>{$menuSecondHalf}</ul>
            </li>
        </ul>
    </div>
    
    {* larget breakpoints *}
    <div class="container-fluid">
        <div class="nav-wrapper">
            <ul id="third-level-menu-list-large" class="third-level-menu-list nav">
                {$menuFirstHalf}
                {$menuSecondHalf}
            </ul>
        </div>
    </div>
</nav>
{if !empty($droppedMenu)}
	<div class="dropped-menu-layer"><div class="container-fluid"><div class="dropped-menu-wrapper{if $firstLast<>''} {$firstLast}{/if}">{$droppedMenu}</div></div></div>
{/if}