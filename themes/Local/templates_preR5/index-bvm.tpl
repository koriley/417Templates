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
<link href="/css/bvm.css" rel="stylesheet" type="text/css" />
<link href="/css/bvm-index.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-bvm4.tpl"}
<!-- leader board -->
{if $tagSystemName == 'people-pics'}
<div class="sponsorship" ><!--/* OpenX Javascript Tag v2.6.3 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://badads.com/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=2");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a9f27194&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=7&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9f27194' border='0' alt='' /></a></noscript>
</div>
{/if}
<!-- stop leaderboard -->
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
	 	<div id="columns-1-2">
		<div id="article">
		{include file="pagetools.tpl"}
		<h1>{$Page->title}</h1>
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<table><tr><td><div><MESSAGES></div></td></tr>
		
                <tr><td><div>{loadModules position="middle"}</div></td></tr></table>
		<div class="clear"></div>
		{usercomments}
		</div>
		</div>			
	 	<div id="column-3">
			{include file="child-page-menu.tpl}
			{loadModules position="right"}
			{loadModules position="column3"}
		</div>
</div>
{include file="footer-bvm.tpl"}
</div>

</body>
</html>

