{php}
session_start();     
 $url=$_GET['url'];
      $uri=$_GET['uri'];
$sessionpass=$SESSION['$uri']=1;
{/php}

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
<link href="/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/css/417-landing.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<!-- Generated by OpenX 2.6.3 -->
<script type='text/javascript' src='http://badads.com/openx/www/delivery/spcjs.php?id=1'></script>
<script type="text/javascript" src="flowplayer-3.0.2.min.js"></script>
</head>
<body style="background-color="fff";">
<div id="page-container">


	
                     <div id="columns-all" style="color:#000000; text-align:center; width:100%;" border="2px">	
		{loadModules position="middle"}
			</div>
           
         
			
	 	


</div>
</body>
</html>