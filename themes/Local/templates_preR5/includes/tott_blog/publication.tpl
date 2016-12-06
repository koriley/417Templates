{blogdata publicationid=$publication.id}
{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/css/417-index.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2010.tpl"}
	<div id="page-body">
	
<div style="width:970px;background:white">
				<div style="height:210px">
		<img class="tott-header-logo" alt="Top of the Town logo" src="/images/SpringfieldBest_LOGO.png" />
		<a href="/Springfields-Best"><img alt="Springfield's Best" class="new-header" src="/images/417SpringfieldBest_HEADERnew.png" /></a>
	</div>
<div style="clear:both"></div>
 
<div style="width:970px;background:white">

 <div class="tott_wrapper" id="tott">
  <div class="tott_blog">
	 	<div id="columns-1-2" style="width:600px;border-right:none" class="blog-body">

		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<h2 class="blog-header"><a href="{$publication.url}">{if $blogdata.headerimage<>''}<img src="{$blogdata.headerimage}" alt="{$blogdata.title}" />{else}{$blogdata.title}{/if}</a></h2>
					{if $blogdata.tagline<>''}<h6 class="blog-tagline">{$blogdata.tagline}</h6>{/if}
					<table class="articles" id="archive">
						{getarticles tagids=$blogdata.tagids what="article" order="ops_article.datepublished desc" max=99999}
						{section name="a" loop=$articles max=$blogdata.params.maxarticlesperpage start=$si}
						<tr class="article-item">
							{if $articles[a].image<>''}<td class="article-image"><a href="{$articles[a].url}"><img src="{imagesizer src=$articles[a].url|cat:$articles[a].image w=74 q=100}" border="0" width="74" alt="{$articles[a].title}" /></a></td>
							<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
							<h4>{$articles[a].datepublished|date_format:"%D"}</h4>
							<h3><a href="{$articles[a].url}">{$articles[a].title}</a></h3>
							<p>
								{if $articles[a].summary<>''}
									{$articles[a].summary|strip_tags:false}	
								{else}
									{$articles[a].body|strip_tags:false|truncate:800}
								{/if}		
							</p>
							<p class="blog-footnotes">{* Posted at {$articles[a].datepublished|date_format:"%I:%M %p"} | *} <a href="{$articles[a].url}">Permalink</a>{if istrue($articles[a].iscommentenabled)} | <span class="comments"><a href="{$articles[a].url}index.php#comments">Comments{if $articles[a].comments > 0}:&nbsp;{$articles[a].comments}{/if}</a></span>{/if}</p>
							</td>
						</tr>
						{/section}																
					</table>
		{loadModules position="middle"}
		<div class="clear"></div>
		{usercomments}
		</div>		

	 	<div id="column-3" >
		{include file="sidebar.tpl"}
			{loadModules position="right"}
			
			{loadModules position="column3"}
		</div>
	</div>
		</div>		
</div>
</div>
</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>

