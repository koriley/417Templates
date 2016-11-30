{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014HomeHead.tpl"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014HomeTop.tpl"}
<div id="index-container" class="page-container container-fluid">
	{include file="breadcrumb.tpl"}
	 <div class="columns-container">
           
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12">
                	{assign var="respond_containers" value="12,12"}
                        {loadModules position="top"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
                        {loadModules position="middle"}
            		
                        
                </div>
                <!--<div class="column-middle respond-container span4">
                	{*assign var="respond_containers" value="12,4"}
            		{loadModules position="right"*}
                </div>-->
            </div>
                
    </div> 
</div>
{include file="bottom.tpl"}
</body>
</html>


