{blogdata publicationid=$publication.id}
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description|escape}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords|escape}" />
{addcss file="psl.css"}
{addcss file="psl-index.css"}
{addcss file="blogs.css"}
{include file="oas_head.tpl"}
</head>
<body>
<div id="page">
{include file="eyebrow.tpl"}
<div id="page-body">
{include file="top.tpl"}
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
