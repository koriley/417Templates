{getgeobaseinfo geobaseid="6"}
<form class="geobase-form" action="{$geobase.geobaseurl}index.php" method="post">
<input class="search-field" name="search" /> <input class="button" type="submit" name="Search" value="Search &raquo;" />
</form>
{foreach from=$geobase.fields key="k" item="field"}
{if istrue($field.filter)}
{if $field.fieldtype == "multichoice"}
<h3>{$field.label}</h3>
<ul class="category-list"{if $module.filterheight<>''} style="max-height:{$module.filterheight}px; overflow:auto;"{/if}>
{foreach from=$field.params.mc_options key="key" item="item"}
<li class="mc"><a href="{$geobase.geobaseurl}index.php/{$field.fieldname}/{$item.title|trim|urlencode|urlencode}">{$item.title}</a></li>
{foreach from=$item.options item="option"}
<li class="mc_category"><a href="{$geobase.geobaseurl}index.php/{$field.fieldname}/{$item.title|trim|urlencode|urlencode}__{$option|trim|urlencode|urlencode}">{$option}</a></li>
{/foreach}
{/foreach}
</ul>
{else}
{if $field.options<>''}
{assign var="options" value="\r\n"|explode:$field.options}
<h3>{$field.label}</h3>
<ul class="category-list"{if $module.filterheight<>''} style="max-height:{$module.filterheight}px; overflow:auto;"{/if}>
{foreach from=$options item="option"}
<li><a href="{$geobase.geobaseurl}index.php/{$field.fieldname}/{$option|trim|urlencode|urlencode}">{$option}</a></li>
{/foreach}
</ul>
{/if}
{/if}
{/if}
{/foreach}
<p><a href="{$geobase.geobaseurl}">Browse all listings &raquo;</a></p>