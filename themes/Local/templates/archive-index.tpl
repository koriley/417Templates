{assign var="isarchive" value="true"}
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
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body">test
		<!-- <div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	-->
	 	<div id="columns-1-2">
		<h1>{$publication.title} Issues</h1>
		<form method="post" name="issuelist" action="">
		<table class="issuelist">
			<tbody>
				<tr>
				{section name=issue loop=$issuelist start=$si}{strip}
					<td valign="top">
					<a href="{$issuelist[issue].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$issuelist[issue].url}/{$issuelist[issue].image}&w=120" width="120" border="0"></a>
					<div><a href="{$issuelist[issue].url}">{$issuelist[issue].period} {$issuelist[issue].year}</a></div>
					</td>
				{if $smarty.section.issue.iteration % 4 == 0 && !$smarty.section.issue.last}</tr>
				<tr> {/if} {/strip} {/section} </tr>
			</tbody>
		</table>
		<div>{pager formname="issuelist" style="button" data=$imagelist rowsperpage=8}</div>
		</form>
		</div>			
	 	<div id="column-3">
			<div id="right1-ad">{oasad position='Right1'}</div>
			{loadModules position="right"}				
		</div>
</div>
{include file="footer-417.tpl"}
</div>

</body>
</html>
