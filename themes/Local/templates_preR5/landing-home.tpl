{assign var="oaspos" value="Top1,Right1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/css/417-contests.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="ga.tpl"}
<!-- Generated by OpenX 2.6.3 -->
<script type='text/javascript' src='http://badads.com/openx/www/delivery/spcjs.php?id=1'></script>
<script type="text/javascript" src="flowplayer-3.0.2.min.js"></script>

</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body">
				
	 	<div id="column-1">				
			{loadModules position="left"}		
		</div>
	 	<div id="columns-1-2">
                     <div id="home-splash" >{loadModules position="top"}</div>
	 		<div class="clearfix">{if $pagecontent<>''}{$pagecontent}{/if}</div>
			<div id="column-2">
			{loadModules position="middle"}
			</div>
			<div id="column-3">							  				  				  		
			{loadModules position="right"}
			</div>
		</div>		
</div>

{include file="footer-417.tpl"}
</div>
</body>
</html>
