{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/css/417-article-re.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/popup.js">
{include file="oas_head.tpl"}
</head>

<body>
<div id="page-container">
{include file="top-417-2010.tpl"}


	<div id="page-body">
		
		<div id="columns-1-2">
			<div id="article" class="clearfix">
			<div id="breadcrumb">{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
			</div>	
				<!--{include file="pagetools.tpl"}-->
				<h1>{$article.title}</h1>
				{if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
				{if $article.author<>''}<div class="article-byline">{$article.author}</div>{/if}	
				{if $article.body<>''}
					{if $article.image}
					<div id="article-image" class="image-container">
						<img src="/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" alt="{$article.title}" border="0" />
						{if $article.photocredit<>''}<div class="photo-credit">{$article.photocredit}</div>{/if}
						{if $article.photodescription<>''}<div class="photo-credit">{$article.photodescription}</div>{/if}
						</div>		
					{/if}
					{$article.body}
				{else}
					{if $article.image}
					<img src="{$article.image}" alt="{$article.title}" border="0" />
					{if $article.photocredit<>''}<div class="photo-credit">{$article.photocredit}</div>{/if}
					{/if}			
				{/if}
			<p><b><a href="http://417mag.com/store">Subscribe to 417 Magazine</a></b></p>
			{loadModules position="middle"}
                     {usercomments}
<div class="ucomments">Comments posted here do not necessarily reflect the views of the author or
417 Magazine. Keep your comments civil, stay on the topic and your posts
will remain online. Comments that use foul language, ethnic slurs or
sexually suggestive language will be deleted. Posters who harass others,
post comments of an overtly personal and negative nature, or disobey the
rules will be banned permanently from commenting on this Web site at the
magazine's sole discretion.</div>
                     <div style="width:100%; text-align:center; padding-top:10px;">
			<iframe id='a9aea732' name='a9aea732' src='http://badads.com/openx/www/delivery/afr.php?n=a9aea732&amp;zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE' framespacing='0' frameborder='no' scrolling='no' width='468' height='60'><a href='http://badads.com/openx/www/delivery/ck.php?n=a74c19d0&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a74c19d0' border='0' alt='' /></a></iframe>
			<script type='text/javascript' src='http://badads.com/openx/www/delivery/ag.php'></script></div>
                     
			</div>
			
			
		</div>
		<div id="column-3">
			{if $Page->tags[76]<>'' ||  $article.tags[76]<>''}		
					{tagged tagid="77" what="article" issueid=$issue.id}
						{section name="t" loop=$taglist max=1}
						<ul class="child-page-menu">						
						{section name="a" loop=$taglist[t].articles}
						<li><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title} &raquo;</a></li>						
						{/section}						
						</ul>					
						{/section}		
			{/if}	
			{if $Page->tags[51]<>'' ||  $article.tags[51]<>''}		
					{tagged tagid="84" what="article" issueid=$issue.id}
						{section name="t" loop=$taglist max=1}
						<ul class="child-page-menu">						
						{section name="a" loop=$taglist[t].articles}
						<li><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title} &raquo;</a></li>						
						{/section}						
						</ul>					
						{/section}		
			{/if}		
		<div class="whitebox" style="text-align:center;">

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://badads.com/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=1");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'></scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a7c2514b&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=1&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a7c2514b' border='0' alt='' /></a></noscript>



</div>
		{loadModules position="right"}
		</div>
		<div><!--{loadModules position="bottom"}--></div>
	</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>
