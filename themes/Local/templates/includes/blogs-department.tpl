{blog_init}
{tagged tagid=$Page->params.tagID what="article"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-redesign.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/aspen-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/blogs.css" rel="stylesheet" type="text/css" />
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
				<h2>{$taglist[0].title} </h2>
				{section name="t" loop=$taglist max=1}
					<table class="articles" id="archive">
						{section name="a" loop=$taglist[t].articles start=$si max="10"}
							<tr class="article-item">
								{if $taglist[t].articles[a].image<>''}<td class="article-image"><a href="{$taglist[t].articles[a].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&amp;w=74&amp;q=100" border="0" width="74" alt="{$taglist[t].articles[a].title}" /></a></td>
								<td class="article-content">{else}<td class="article-content" colspan="2">{/if}
								<h4>{$taglist[t].articles[a].datepublished|date_format:"%D"}</h4>
								<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
								<p>
									{if $taglist[t].articles[a].summary<>''}
										{$taglist[t].articles[a].summary}	
									{else}
										{$taglist[t].articles[a].body|truncate:800}
									{/if}		
								</p>
								<p class="blog-footnotes">Posted at {$taglist[t].articles[a].datepublished|date_format:"%I:%M %p"} in <a href="index.php?tagID={$Page->params.tagID}">{$taglist[0].title}</a> | <a href="{$taglist[t].articles[a].url}">Permalink</a> | <a href="{$taglist[t].articles[a].url}#comments">Comments ({$taglist[t].articles[a].comments})</a></p>
								</td>
							</tr>				
						{/section}											
					</table>
					{pager data=$taglist[t].articles rowsperpage="10"}
				{/section}	
			{loadModules position="middle"}	
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
