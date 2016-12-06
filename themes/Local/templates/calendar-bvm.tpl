{assign var="oaspos" value="Top1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq 'wcm'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/bvm.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/calendar.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="/themes/Local/js/calendar.js"></script>
{include file="oas_head.tpl"}
</head>
<body>
<div id="page-container">
{include file="top-bvm4.tpl"}
	<div id="page-body">
		<div id="breadcrumb" style="margin:0px 10px; width:950px;">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>		
	 	{loadModules position="middle"}
	</div>
{include file="footer-$cssname.tpl"}
</div>

</body>
</html>
