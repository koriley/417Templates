{assign var="oaspos" value="Top1,x01,Right1"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="{$Page->mediapath}/css/sdm.css" rel="stylesheet" type="text/css" />
<link href="{$Page->mediapath}/css/sdm-body.css" rel="stylesheet" type="text/css" />
<link href="{$Page->mediapath}/css/charitable.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-sdm.tpl"}
	<div id="page-body">
		
		<div id="columns-1-2">	
	 		{if $pagecontent}<div id="splash">{$pagecontent}</div>{/if}
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
{include file="footer-sdm.tpl"}
</div>
</body>
</html>
