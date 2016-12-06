{blogdata publicationid=$publication.id}
{assign var="oaspos" value="Top1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/elements/logo.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="571284244,100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>

<div id="page-container">
	{include file="top-dcblog.tpl"}
	<div id="page-body">
		<div id="columns-1-2" style="padding-top:0px!important;border-right:none;"> 
		 
				{loadModules position="top"} 
				<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>
<div class="pagetools-tott">
{include file="pagetools.tpl"}
</div>
			<div id="article">
				<div id="article-body">
				<h1>{$issue.period} {$issue.year}</h1>
					<h2 class="blog-header"><a href="{$blogdata.url}">{if $blogdata.header<>''}<img src="{$blogdata.header}" alt="{$blogdata.title}" />{else}{$blogdata.title}{/if}</a></h2>
					{if $blogdata.tagline<>''}<h6 class="blog-tagline">{$blogdata.tagline}</h6>{/if}
					{if $pagecontent<>''}{$pagecontent}{/if}
					<table class="articles" id="archive">
					{getarticles tagids=$blogdata.tagids what="article" order="ops_article.datepublished desc" max=99999}
						{section name="a" loop=$articles max="10" start=$si}
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
									<p class="blog-footnotes">Posted at {$articles[a].datepublished|date_format:"%I:%M %p"} | <a href="{$articles[a].url}">Permalink</a>{if istrue($articles[a].iscommentenabled)} | <span class="comments"><a href="{$articles[a].url}index.php#comments">Comments{if $articles[a].comments > 0}:&nbsp;{$articles[a].comments}{/if}</a></span>{/if}</p>
									</td>
								</tr>
							{/section}																
						</table>
						{pager data=$articles rowsperpage=$blogdata.params.maxarticlesperpage}	
					{loadModules position="middle"}	
				</div>
			</div>
			
		</div>
		<div id="column-3" style="padding-right:5px">
			{include file="sidebar.tpl"}
		
				{loadModules position="right"}
	
			</div>
		{loadModules position="bottom"}
	</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>