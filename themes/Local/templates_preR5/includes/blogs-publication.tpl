{blog_init}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/aspen.css" rel="stylesheet" type="text/css" />
<link href="/css/aspen-index.css" rel="stylesheet" type="text/css" />
<link href="/css/blogs.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
{include file="top-417-redesign.tpl"}
	<div id="page-body">
	{include file="sponsorship.tpl"}
		<div id="columns">
		{include file="breadcrumb.tpl"}
			<div id="article">
				<div id="article-body">
					<div class="blog-header"><h6>{$blogtags[$publication.id].tagline}</h6><a href="{$publication.url}">{$publication.title}</a></div>
					{if $pagecontent<>''}{$pagecontent}{/if}
					<table class="articles" id="archive">
					{getarticles tagids=$blogtags[$publication.id].tagids what="article" order="ops_article.datepublished desc" max=99999}
						{section name="a" loop=$articles max="10" start=$si}
								<tr class="article-item">
									{if $articles[a].image<>''}<td class="article-image"><a href="{$articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$articles[a].title}" /></a></td>
									<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
									<h4>{$articles[a].datepublished|date_format:"%D"}</h4>
									<h3><a href="{$articles[a].url}">{$articles[a].title}</a></h3>
									<p>
										{if $articles[a].summary<>''}
											{$articles[a].summary}	
										{else}
											{$articles[a].body|truncate:800}
										{/if}		
									</p>
									<p class="blog-footnotes">Posted at {$articles[a].datepublished|date_format:"%I:%M %p"} | <a href="{$articles[a].url}">Permalink</a> | <span class="comments"><a href="{$articles[a].url}index.php#comments">Comments:&nbsp;{$articles[a].comments}</a></span></p>
									</td>
								</tr>
							{/section}																
						</table>
						{pager data=$articles rowsperpage="10"}	
					{loadModules position="middle"}	
				</div>
			</div>
			<div id="column-3">
				{loadModules position="right"}
			</div>
		{loadModules position="bottom"}
		</div>
	</div>
{include file="footer.tpl"}
</body>
</html>
