<h4>Recent Posts</h4>
{getarticles tagids=$blogdata.tagids what="article" order="ops_article.datepublished desc"}
<ul>
    {section name="a" loop=$articles max=10}
    <li><a href="{$articles[a].url}">{$articles[a].title}</a>{if istrue($articles[a].iscommentenabled)} | <a href="{$articles[a].url}index.php#comments">Comments{if $articles[a].comments > 0}: {$articles[a].comments}{/if}</a>{/if}</li>
    {/section}
</ul>