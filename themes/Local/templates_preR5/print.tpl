<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$publication.title} | {$page->title}</title>
<meta name="robots" content="noindex" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/media/css/printthispage.css" rel="stylesheet" type="text/css" />
</head>
<body>
{tracker item="pagetools_print" extra="content" itemid=$page->id}
<div id="pagetools">
<a href="#" onclick="window.print();" title="Print this page"><img src="/media/images/pagetools-print.gif" alt="Send to printer" />&nbsp;&nbsp;Send to printer</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" onclick="window.close();">Close window</a>
</div>
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
</body>
</html>