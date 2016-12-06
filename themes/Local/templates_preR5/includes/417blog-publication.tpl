{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/css/417-article.css" rel="stylesheet" type="text/css" />
<link href="/css/blog.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>

<body>
<div id="page-container">
{include file="top-417-redesign2.tpl"}
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>
		<div id="columns-1-2">
		<div id="article">		
		{include file="pagetools.tpl"}
			<table>
			<img src="/images/blank.gif" width="400" height="1" border="0"><br>
			{getarticles tagids="165,171,172, 173, 176, 177, 178, 179, 180, 181, 182, 183" what="article" order="ops_article.displayorder asc,ops_article.datepublished desc" max=9999}
				{section name="a" loop=$articles  start=$si max=10}
						<tr>
							{if $articles[a].image<>''}<td class="article-image" valign="top"><a href="{$articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=74&q=100" border="0" width="74" alt="{$articles[a].title}" style="margin-right:10px"/></a></td>
							<td width="100%">{else}<td colspan="2">{/if}
							<h4>{$articles[a].datepublished|dateformat:"%B %e, %Y"}</h4>
							<h4><a href="{$articles[a].url}" style="font-size: 18px">{$articles[a].title}</a></h4>
							<p>
								{if $articles[a].summary<>''}
									{$articles[a].summary}	
								{else}
									{$articles[a].body|truncate:800}
								{/if}		<a href="{$articles[a].url}">Read more &raquo;</a>
							</p>
							<p class="blog-footnotes">Posted on {$articles[a].datepublished|dateformat:"%A, %B %e, %Y"} 
							| <a href="{$articles[a].url}">Permalink</a> | <a href="{$articles[a].url}#comments">Comments ({$articles[a].comments})</a></p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><hr size=1 color=silver></td>
						</tr>
					{/section}																
				</table>	

{pager formname="a" style="link" data=$articles rowsperpage=10}
				<div class="clear"></div>
			
			


			<div id="bottom-ad">{oasad position='Bottom'}</div>
		</div>
		</div>
		<div id="column-3">

		{loadModules position="right"}
		</div>
	</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>
