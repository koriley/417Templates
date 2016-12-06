{getpagedata id=$Page->pageid}


{assign var="oaspos" value="Top1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417bride.com{$Page->pageobject->url}{if $pagedata.image <> '' }{$pagedata.image}{/if}" />


<meta property="og:url" content="http://417bride.com{$Page->pageobject->url}"/>
<meta property="og:site_name" content="417 Bride"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE>"/>
<meta property="fb:app_id" content="134468316683025"/>

<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/Bride-417.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/Bride-417-index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/theme_overrides/Respond/js/jQueryGatewayAd.js"></script>

{*include file="oas_head.tpl"*}
</head>
<body>
<div id="page-container">

{include file="top-bride.tpl"}
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
	 	<div id="columns-fullwidth" class="clearfix">
        {include file="pagetools.tpl"}
		<h1>{$Page->title}</h1>
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		{loadModules position="middle"}		
		</div>
	</div>
{include file="footer-bride.tpl"}
</div>
</body>
</html>

