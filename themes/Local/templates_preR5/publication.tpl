{assign var="ishome" value="TRUE"}
{assign var="oaspos" value="Top1,x01"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<script src="/js/scroller.js" type="text/javascript"></script>
<link href="/css/417-redesign.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
{include file="ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417.tpl"}
	<div id="page-body">
	 	<div id="columns-1-2">
			<div id="splash">{loadModules position="top"}</div>
	 		{if $pagecontent<>''}{$pagecontent}{/if}		
			<div id="column-1">
			{loadModules position="left"}
			</div>
			<div id="column-2">							  				  				  		
			{loadModules position="middle"}
			</div>
		</div>			
	 	<div id="column-3">				
			{loadModules position="right"}		
		</div>
		
		
</div>
<div id="bottom">				
			{loadModules position="bottom"}		
		</div>
{include file="footer-417.tpl"}
</div>
<script src="http://cdn.wibiya.com/Toolbars/dir_0517/Toolbar_517040/Loader_517040.js" type="text/javascript"></script>
</body>
</html>
