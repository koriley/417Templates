{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{tagged tagid=$Page->params.tagID what="article"}
{section name="t" loop=$taglist max=1}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE> - {$taglist[t].title}</title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/css/department-archive.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="ga.tpl"}
</head>
<body>
<div id="page-container">
{include file="top-417.tpl"}
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} - {$taglist[t].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
	 	<div id="columns-1-2">
		<div class="header-silver"><h6 class="large">Archive - {$taglist[t].title}</h6></div>
		<div id="column-1">
			<form method="post" name="departmentList" action="">
			<table class="articles" id="archive">
			{section name="a" loop=$taglist[t].articles start=$si max="10"}
					<tr class="article-item">
						{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
						<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						</td>
					</tr>
					{/section}						
					</table>
			</form>
			{pager style="link" formname="departmentList" data=$taglist[t].articles rowsperpage="10"}
		</div>
		</div>
	 	<div id="column-3">{loadModules position="right"}</div>
	</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>
{/section}
