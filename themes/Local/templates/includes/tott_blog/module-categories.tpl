{blogcategories tagdata=$blogdata.tagarray}
<h4>Categories</h4>
<ul>
	{section name=cat loop=$blogcategories}
    <li><a href="{$publication.params.articlearchiveurl}index.php?tagID={$blogcategories[cat].id}" title="{$blogcategories[cat].title}">{$blogcategories[cat].title}</a> ({$blogcategories[cat].count})</li>
    {/section}
</ul>
