<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
{include file="oas_head.tpl"}
</head>
<body style="padding:0px; margin:0px;">
<div width="480px">
	<div style="font-family:tahoma,verdana,arial,sans-serif; font-size: 11px; color: #333333;">
		{if $pagecontent<>''}{$pagecontent}{/if}
		{loadModules position="middle"}

	</div>

</body>
</html>
