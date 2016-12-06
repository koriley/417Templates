<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description|escape}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords|escape}" />
<link href="/themes/Local/css/style.css" rel="stylesheet" type="text/css" />
{include file="head.tpl"}
</head>
<body>
{loadModules position="middle"}
</body>
</html>
