<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>{$article.publication} | {$article.title}</title>
<meta name="robots" content="all" />
<meta name="description" content="{$article.description|default:$issue.description|default:$publication.description|default:$Page->description}" />
<meta name="keywords" content="{$article.keywords|default:$issue.keywords|default:$publication.keywords|default:$Page->keywords}" />
<link href="/media/css/printthispage.css" rel="stylesheet" type="text/css" />
</head>
<body>
{tracker item="pagetools_print" extra="article" itemid=$article.pageid}
<div id="pagetools">
<a href="#" onclick="window.print();" title="Print this page"><img src="/media/images/pagetools-print.gif" alt="Send to printer" />&nbsp;&nbsp;Send to printer</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" onclick="window.close();">Close window</a>
</div>
{if $Page->tags[51]<>'' || $article.tags[51]<>''}
		<h1>{$article.title}</h1>
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
{else}
		
		<h3>{$issue.period} {$issue.year}</h3>
		{section name=articles loop=$issue.articles}
		<a href="{$issue.articles[articles].url}">{$issue.articles[articles].title}</a>
		{/section}
		<h1>{$article.title}</h1>
		{if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
        {if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}
		<div id="article-body">
		{if $article.image<>''}<div id="article-image"><img src="/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&w=476&q=85" alt="{$article.title}" border="0" /></div>
		<div id="photo-credit">{$article.photocredit}</div>{/if}
		{$article.body}
		</div>
		
{/if}		
</body>
</html>
