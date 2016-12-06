{assign var="oaspos" value="Top1,Right1"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-issue.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417.tpl"}
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
	 	<div id="columns-1-2">
			<div class="header-box">
			<div class="header-silver"><h6 class="large">{$issue.period} {$issue.year}</h6></div>
			</div>		
			<div id="column-1">
			<img src="/core/includes/phpThumb/phpThumb.php?src={$issue.url}{$issue.image}&amp;w=194" alt="" border="0" style="border: 1px solid #cccccc; margin-bottom: 15px" />
			<div class="menuitemul2"><a class="boldlink" href="/417-Magazine/Store/">Purchase this Issue&nbsp;&raquo;</a></div>
			<div class="menuitemul"><a class="boldlink" href="/417-Magazine/Store/">Subscribe&nbsp;&raquo;</a></div>
			<div class="menuitemul"><a class="boldlink" href="{$publication.url}archive-index/">Issue Archive&nbsp;&raquo;</a></div>
			</div>
			<div id="column-2">
				<table class="articles">
				    <tr>
					    <th colspan="2"><h3>Features</h3></th>
					</tr>
					{tagged tagid="73" what="article" issueid=$issue.id}
						{section name="t" loop=$taglist}
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
					    <th colspan="2"><h3>Departments</h3></th>
					</tr>
					{tagged tagid=74 what="article" issueid=$issue.id}
						{section name="t" loop=$taglist}
						{if $taglist[t].id=='47'}{assign var="showmaxdep" value="1"}{else}{assign var="showmaxdep" value="100"}{/if}
						{section name="a" loop=$taglist[t].articles max=$showmaxdep}
					<tr class="department-header">
						<td class="header-left">
						{if $taglist[t].title==$taglist[t].articles[a].title}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}</a>{else}<a href="{$taglist[t].articles[a].url}">{$taglist[t].title}:&nbsp;{$taglist[t].articles[a].title}</a>{/if}
						</td>
						<td class="archive-link">
						<a href="/417-Magazine/Department-Archive/index.php?tagID={$taglist[t].id}">Archive &raquo;</a>
						</td>		
					</tr>
					<tr class="article-item">
						<td class="department-content" colspan="2">
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					{/section}	
				</table>
			</div>			
		</div>			
	 	<div id="column-3">
			<div id="right1-ad">{oasad position='Right1'}</div>
			{loadModules position="right"}						
		</div>
</div>
{include file="footer-bride.tpl"}
</div>
</body>
</html>
