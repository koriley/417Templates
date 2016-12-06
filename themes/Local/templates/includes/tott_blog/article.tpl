{blogdata publicationid=$publication.id}
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
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/tott.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2010.tpl"}
	<div id="page-body">
	<div style="width:970px;background:white">
				<div style="height:210px;margin-bottom:18px;">
		<img class="tott-header-logo" alt="Top of the Town logo" src="/images/SpringfieldBest_LOGO.png" />
		<a href="/Springfields-Best"><img alt="Springfield's Best" class="new-header" src="/images/417SpringfieldBest_HEADERnew.png" /></a>
	</div>
<div style="clear:both"></div>

<div style="width:970px;background:white">
 <div class="tott_wrapper" id="tott">
  <div class="tott_blog">
	 	<div id="columns-1-2" style="width:600px;border-right:none" class="blog-body">

		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<h2 class="blog-header"><a href="{$publication.url}">{if $blogdata.headerimage<>''}<img src="{$blogdata.headerimage}" alt="{$blogdata.title}" />{else}{$blogdata.title}{/if}</a></h2>
					{if $blogdata.tagline<>''}<h6 class="blog-tagline">{$blogdata.tagline}</h6>{/if}
					 <h1>{$article.title}</h1>
            <div class="posted">Posted on {$article.datepublished|date_format:"%A, %B %e, %Y"}</div>
            {if $article.author<>''}
            <div class="by-line">By {$article.author}</div>
            {/if}
            {if $article.image}{if $Page->params.cparticle < 2}
            <div id="article-image" class="image-container"> <a href="{$article.url}{$article.image}" target="_blank"><img src="{imagesizer src=$article.url|cat:$article.image w=520 q=85}" alt="{$article.title}" border="0" /></a> {if $article.photocredit<>''}
              <p class="photo-credit">{$article.photocredit}</p>
              {/if}
              {if $article.photodescription<>''}
              <p class="photo-description">{$article.photodescription}</p>
              {/if} </div>
            {/if}
            {/if}
            {$article.body}
            {loadModules position="middle"}
            {usercomments}
		<div class="clear"></div>
		{usercomments}
		</div>			
	 	<div id="column-3">
		{include file="sidebar.tpl"}
			{loadModules position="right"}
			{include file="child-page-menu.tpl}
			{loadModules position="column3"}
		</div>
		</div>
		</div>
	</div>
	</div>
</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>

