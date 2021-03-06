
{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{if $publication.url=='/417-Home/'}    
            {include file="2014HomeHead.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="INC_Head.tpl"}
        {else}
            {include file="2014head.tpl"}
            {addcss file="2014Article.css" order="99999999"}
            {addjs file="417pinit.js" position="footer"}
        {/if}

</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
 {if $publication.url=='/417-Home/'}    
            {include file="2014HomeTop.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="biz417Top.tpl"}
        {else}
            {include file="2014Top.tpl"}
        {/if}
<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container">
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span4">
                	{assign var="respond_containers" value="12,8"}
            		{*loadModules position="left"*}
                        <div class="header-box">
			<h6 class="large">{$issue.period} {$issue.year}</h6>
			</div>		
			<div id="column-1">
			<img src="/core/includes/phpThumb/phpThumb.php?src={$issue.url}{$issue.image}&amp;" alt="" border="0" style="border: 1px solid #cccccc; margin-bottom: 15px" />
			<div class="menuitemul2"><a class="boldlink" href="{$publication.url}Store/">Purchase this Issue&nbsp;&raquo;</a></div>
			<div class="menuitemul"><a class="boldlink" href="{$publication.url}Subscribe/">Subscribe&nbsp;&raquo;</a></div>
			<div class="menuitemul"><a class="boldlink" href="{$publication.url}archive-index/">Issue Archive&nbsp;&raquo;</a></div>
			</div>
                        
                </div>
                <div class="column-middle respond-container span8">
                	{assign var="respond_containers" value="12,4"}
            		{*loadModules position="right"*}
                        <table class="articles">
				    <tr>
                                        {if $publication.url=='/Biz417/'}
            <th colspan="2"><h3>Features</h3></th>
                                    {assign var="tagId" value="368"}
        {else}
            <th colspan="2"><h3>Cover Story</h3></th>
                        {assign var="tagId" value="145"}
        {/if}
					    
					</tr>
					{tagged tagid=$tagId what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                <div class="horizontal-rule"><img src="{$images}/blank.gif" width="1" height="1" alt="" border="0" /></div>
				<table class="articles">
				    <tr>
					    {if $publication.url=='/Biz417/'}
            <th colspan="2"><h3>Know</h3></th>
                                    {assign var="tagId" value="370"}
        {else}
            <th colspan="2"><h3>Features</h3></th>
                        {assign var="tagId" value="10"}
        {/if}
					</tr>
					{tagged tagid=$tagId what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
				<div class="horizontal-rule"><img src="{$images}/blank.gif" width="1" height="1" alt="" border="0" /></div>
				<table class="articles">
				    <tr>
					      {if $publication.url=='/Biz417/'}
            <th colspan="2"><h3>Start</h3></th>
                                    {assign var="tagId" value="369"}
        {else}
            <th colspan="2"><h3>Departments</h3></th>
                        {assign var="tagId" value="41"}
        {/if}
					</tr>
					{tagged tagid=$tagId what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                        <table class="articles">
				    <tr>
					     {if $publication.url=='/Biz417/'}
            <th colspan="2"><h3>Link</h3></th>
                                    {assign var="tagId" value="372"}
        {else}
            <th colspan="2"><h3></h3></th>
                        {assign var="tagId" value="346"}
        {/if}
					</tr>
					{tagged tagid=$tagId what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                        <table class="articles">
				    <tr>
					    <!--<th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="333" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                           <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="152" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                           <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="20" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                           <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="344" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                           <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="273" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                          <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="303" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
                                          <table class="articles">
				    <tr>
					   <!-- <th colspan="2"><h3>Cover Story</h3></th>-->
					</tr>
					{tagged tagid="305" what="article" issueid=$issue.id order="ops_article.displayorder desc"}
						{section name="t" loop=$taglist max=1}
						{section name="a" loop=$taglist[t].articles}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
			</div>			
		</div>	
                </div>
            </div>
                
    </div>    
</div>
                
               
                
<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
        </script>
    {/literal}
{/if}    

