{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />

{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2010.tpl"}
	<div id="page-body">
				
	 	<div id="columns-1-2">	
	 		{if $pagecontent}<div id="splash">{$pagecontent}</div>{/if}
			<div id="column-1">
			{loadModules position="left"}
			<div class="clear"></div>
			</div>
			<div id="column-2">			
			{loadModules position="middle"}
			<div class="clear"></div>
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
