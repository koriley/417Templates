<div id="left-menu">
<div class="top-pad"><img src="/media/images/blank.gif" height="1" width="1" alt="0" border="0" /></div>
{section name=parents loop=$menu} {strip}
{section name=items loop=$menu[parents].children} {strip}
<a href="{$menu[parents].children[items].url}" class="leftnavlink{if $Page->path==$menu[parents].children[items].url}_on{/if}">{$menu[parents].children[items].title}</a>
{/strip} {/section}
{/strip} {/section}
</div>
