 <div class="bizBlogMother dept-list module{if $module.class<>''} {$module.class}{/if}"{if $module.id<>''} id="{$module.id}"{/if}>
{*addcss file="tott.css"*}
{assign var="aboutPagePath" value="/Springfields-Best/About-Springfields-Best/"}
{assign var="ppmKeyword" value="BEST"}
<div class="bizBlogroll">   
    <img src="https://www.biz417.com/images/biz417/bizBlog.gif" alt="biz417" />
    	<div class="content">
{if $module.issueid == "current"}{assign var="articleListIssue" value=$Page->publication.issue.id}{/if}
{if is_array($module.tagids)}
	{if $module.operator == "and"}
    	{assign var="articleTagIDs" value=" AND "|implode:$module.tagids}
 	{else}
		{assign var="articleTagIDs" value=","|implode:$module.tagids}
    {/if}
{else}
	{if $module.operator == "and"}
    	{assign var="articleTagIDs" value=$module.tagids|replace:",":" AND "}
    {else}
		{assign var="articleTagIDs" value=$module.tagids}
    {/if}
{/if}
{getarticles tagids=$articleTagIDs what="article" order=$module.sortOrder max=$module.number issueid=$articleListIssue}
{assign var="articleListIssue" value=""}
{assign var="articleTagIDs" value=""}
<table class="articles">
					{foreach name="a" from=$articles key="key" item="article"}
					<tr class="article-item">
						{if $module.showThumbnail == "true" && $article.image<>''}<td class="article-image"><a href="{$article.url}"><img src="{imagesizer src=$article.url|cat:$article.image w=$module.imageWidth q=$module.imageQuality}" alt="{$article.title}" /></a></td>{/if}
                        <td class="article-content"{if $module.showThumbnail == "true"}{if $article.image<>''}{else} colspan="2"{/if}{/if}>
						<h4><a href="{$article.url}">{$article.title}</a></h4>
                        {if $module.showSubTitle == "true" && $article.subtitle<>''}<p>{$article.subtitle|strip_tags:false}</p>{/if}
						{if $module.showSummary == "true" && $article.summary<>''}<p>{$article.summary|strip_tags:false}</p>{/if}
                        {if $module.showByLine == "true" && $article.author<>''}<p class="article-byline">Posted by {$article.author}</p>{/if}
                        {if $module.showPublishedDate == "true"} <div class="bizBlogRollDate"> 
                        	
                        		{assign var=articledateformat value=$config.dateformat}
                        	
                        	{$article.datepublished|dateformat:$articledateformat}
                        </div>{/if}
                        
						</td>
					</tr>					
					{/foreach}
				</table>{if $module.showArchiveLink == "true"}
<a class="archive" href="/417-Magazine/Springfields-Best-Blog/">Archive &raquo;</a>{/if}
</div></div></div>