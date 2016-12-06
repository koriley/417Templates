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
<p>{$tagSystemName}</p>
<!-- leader board -->

<!-- stop leaderboard -->

	<div id="page-body">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
	 	<div id="columns-1-2" style="width:640px; padding-right:0px;">
		

			<div id="article">	
				{include file="pagetools.tpl"}
					<h1>{$article.title}</h1>
				{if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}	
				<iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=standard&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:30px"></iframe>
				{if $article.body<>''}
					{$article.body}
				{/if}
				
				<p><b><a href="http://417mag.com/store">Subscribe to 417 Magazine</a></b></p>
			</div>

		<!--{if $pagecontent<>''}{eval var=$pagecontent}{/if}-->
		{loadModules position="middle"}
              {usercomments}
		</div>			
	 	<div id="column-3" style="float:right;">
			{if $Page->tags[51]<>'' || $article.tags[51]<>''}
			{include file="people-pics-menu.tpl"}	
			{/if}
			{loadModules position="right"}
</div>
<div style="clear:both;"></div>
{include file="footer-bvm.tpl"}
</div>
</body>
</html>

