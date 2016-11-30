{* Use this template to make a mobile friendly iframe-able page. Modules load in TOP*}

{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{*include file="2014Top.tpl"*}
<div id="index-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	
	<div class="row-fluid">
	{assign var="respond_containers" value="12"}
		<div class="respond-container span12" style="text-align: center;">
			{loadModules position="top"}
		</div>
	</div>
	
	
</div>
{*include file="bottom.tpl"*}
</body>
</html>