{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014Top.tpl"}
<div id="index-container" class="page-container container-fluid">
	<div class="row-fluid">
                <div class="column-top respond-container span8">
                	{assign var="respond_containers" value="12,8"}
                        {literal}{scrape417}{/literal}
                 </div>       
                 <div class="column-top respond-container span4">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                 </div>
            </div> 
</div>
{include file="bottom.tpl"}
</body>
</html>


