{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
{/php}

{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}

{php}

function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}
$mypage=curPageURL();
//$Page->assign('togo', '$mypage');
//echo $mypage;
{/php}
 
{php}
     if($sessionVAR<1){echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/sponsor-ad/index.php?url=".$mypage."&uri=".$pageURI."\" />";}
{/php}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>


<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-article-re.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>

<body>

<div id="page-container">
{include file="top-417.tpl"}
	<div id="page-body">

		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>
		<div id="columns-1-2">
			<div id="article" class="clearfix">	
				{include file="pagetools.tpl"}
				<h1>{$article.title}</h1>
				{if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
				{if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}	
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
			{usercomments}
			<div style="width:100%; align:center;">
<iframe id='a9aea732' name='a9aea732' src='http://badads.com/openx/www/delivery/afr.php?n=a9aea732&amp;zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE' framespacing='0' frameborder='no' scrolling='no' width='468' height='60'><a href='http://badads.com/openx/www/delivery/ck.php?n=a74c19d0&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a74c19d0' border='0' alt='' /></a></iframe>
<script type='text/javascript' src='http://badads.com/openx/www/delivery/ag.php'></script></div>
                     </div>
			
			<div>{loadModules position="bottom"}</div>
			<div id="bottom-ad">{oasad position='Bottom'}</div>
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
		<div id="right1-ad">{oasad position='x01'}</div>
		{loadModules position="right"}
		</div>
	</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>
