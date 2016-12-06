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
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page">

<div id="page-body">
{include file="top-417-2010.tpl"}
		<div id="columns">
				{include file="breadcrumb.tpl"}
                <div class="tott_wrapper" id="tott">
                <div class="tott_blog">
                <a href="{$publication.url}"><img class="tott-header-logo" alt="Top of the Town logo" src="/templates/includes/gbtheme_tott/tott_header_logo.png" /></a><img class="tott-header" src="/templates/includes/gbtheme_tott/tott_header.png" alt="Top of the Town - Your local source for the best of Palm Springs" />
                <div class="blog-header">Blog</div>
					<div id="column-1">
                   <h1>{$Page->title}</h1>
                  	{if $pagecontent<>''}{$pagecontent}{/if}
					{loadModules position="middle"}
					{usercomments}
					{loadModules position="bottom"}
				</div>
			<div id="column-2">
             	{include file="pagetools.tpl"}
				{include file="sidebar.tpl"}
                {loadModules position="right"}
			</div>
		</div>
		</div>
        </div>
        </div>
{include file="footer.tpl"}
</div>
</body>
</html>
