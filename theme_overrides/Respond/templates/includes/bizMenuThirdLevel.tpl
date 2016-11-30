{menu id=$config.third_level_nav_menu_id}
<nav id="menu_{$config.third_level_nav_menu_id}" role="navigation" class="">
    <ul class="ulStack nav-stacked">
        {foreach from=$menu key="k" item="item" name="third_level"}

            {if $item.children|@count == 0} <a id="menu_{$item.id}" href="{if $item.url <> ''}{$item.url}{else}#{/if}" {if $item.linktarget <> ''} target="{$item.linktarget}"{/if}
                   {if $item.onclick <> ''} onclick="{$item.onclick}" {/if}>
                   <li>
                       <span style="text-transform:uppercase;">{if $item.name != ""}{$item.name}{else}{$item.title}{/if}</span>
                   </li>
               </a>
            {/if}

            {if $item.children|@count > 0}
                <li style="cursor: pointer" id="menu_{$item.id}_click" class="KORdrop" data="{$item.id}">
                    <span style="text-transform:uppercase;">{if $item.name != ""}{$item.name}{else}{$item.title}{/if}<span class="moreItems" style="float:right;">+</span></span>
                  </li>
                  <div style="" id="menu_{$item.id}_child">
                        
                      <ul>
                            
                           
                            {foreach from=$item.children item="child" key="x" name="something"}
                                <a href="{$menu[$k].children[$x].url}" {if $menu[$k].children[$x].linktarget <> ''} target="{$menu[$k].children[$x].linktarget}"{/if}><li>{$menu[$k].children[$x].title}</li> </a>
                            {/foreach}    
                               
                               
                      </ul>
                      {*if $smarty.foreach.third_level.first}
                                {assign var="firstLast" value="first"}
                            {elseif $smarty.foreach.third_level.last}
                                {assign var="firstLast" value="last"}
                            {/if*}
                            
                        
                    </div>
                
             
            {/if}
 
        {/foreach}
    </ul>
</nav>





