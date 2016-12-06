{blog_init}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/css/aspen-index.css" rel="stylesheet" type="text/css" />
<link href="/css/blogs.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
{include file="top-417-redesign.tpl"}
	<div id="page-body">
	{include file="sponsorship.tpl"}
		<div id="columns">
		{include file="breadcrumb.tpl"}
			<div id="article">
				<div id="article-body">
				<div class="blog-header"><h6>{$blogtags[$publication.id].tagline}</h6><a href="{$publication.url}">{$publication.title}</a></div>
				<h1>{$Page->title}</h1>
					{if $pagecontent<>''}{$pagecontent}{/if}
					{loadModules position="middle"}
					{usercomments}
					{include file="pagetools.tpl"}
					<div id="bottom-ad">{contentitem id="428"}</div>
				</div>
			</div>
			<div id="column-3">
				{loadModules position="right"}
			</div>
		{loadModules position="bottom"}
		</div>
	</div>
{include file="footer.tpl"}
</body>
</html>
