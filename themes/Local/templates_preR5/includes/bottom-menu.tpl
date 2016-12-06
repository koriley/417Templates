<div id="bottom-menu">
  {section name=parents loop=$menu}{strip}
   {section name=items loop=$menu[parents].children}{strip}
    <a href="{$menu[parents].children[items].url}">{$menu[parents].children[items].title}</a>
    {if !$smarty.section.items.last}
    &nbsp;|
    {/if}{/strip}{/section}
  {/strip} {/section}
</div>