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

{assign var="oaspos" value="Top1,Right1"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/elements/logo.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="571284244,100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-issue-2010.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>

<body>
<div id="page-container">
{include file="top-417-2013.tpl"}
	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>
		<div id="columns-1-2">
		<div id="article">		
		{include file="pagetools.tpl"}
			<table>
			<img src="/images/blank.gif" width="400" height="1" border="0"><br>
			{getarticles tagids="165" what="article" order="ops_article.datepublished desc" issueid=$issue.id max=9999}
				{section name="a" loop=$articles  start=$si max=10}
						<tr>
							{if $articles[a].image<>''}<td class="article-image" valign="top"><a href="{$articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=74&q=100" border="0" width="74" alt="{$articles[a].title}" style="margin-right:10px"/></a></td>
							<td width="100%">{else}<td colspan="2">{/if}
							<h4>{$articles[a].datepublished|dateformat:"%B %e, %Y"}</h4>
							<h4><a href="{$articles[a].url}" style="font-size: 18px">{$articles[a].title}</a></h4>
							<p>
								{if $articles[a].summary<>''}
									{$articles[a].summary}	
								{else}
									{$articles[a].body|truncate:800}
								{/if}		<a href="{$articles[a].url}">Read more &raquo;</a>
							</p>
							<p class="blog-footnotes">Posted on {$articles[a].datepublished|dateformat:"%A, %B %e, %Y"} 
							| <a href="{$articles[a].url}">Permalink</a> | <a href="{$articles[a].url}#comments">Comments ({$articles[a].comments})</a></p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><hr size=1 color=silver></td>
						</tr>
					{/section}																
				</table>	

{pager formname="a" style="link" data=$articles rowsperpage=10}
				<div class="clear"></div>
			
			


			<div id="bottom-ad">{oasad position='Bottom'}</div>
		</div>
		</div>
		<div id="column-3">

		{loadModules position="right"}
		</div>
	</div>
{include file="footer-417.tpl"}
</div>
<script src="http://cdn.wibiya.com/Toolbars/dir_0517/Toolbar_517040/Loader_517040.js" type="text/javascript"></script>
</body>
</html>
