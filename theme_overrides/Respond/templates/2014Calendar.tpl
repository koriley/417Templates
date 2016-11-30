{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}

</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014Top.tpl"}
<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container top-left-middle-right">
            <div class="columns span9">
            	<div class="row-fluid">
             		 <div class="column-top respond-container span12">
            			{assign var="respond_containers" value="12,8,12"}
        				{loadModules position="top"}
            		</div>
            	</div>
            	<div class="row-fluid">
             		<div class="column-left respond-container span6">
            			{assign var="respond_containers" value="12,8,6"}
        				{loadModules position="left"}
            		</div>
            		<div class="column-middle respond-container span6">
            			{assign var="respond_containers" value="12,8,6"}
        				{loadModules position="middle"}
            		</div>
            	</div>
            </div>
            <div class="column-right respond-container span4">
            	{assign var="respond_containers" value="12,4"}
            	{loadModules position="right"}
            </div>
        </div>  
</div>     
<div style="text-align:center;" >{include file="footboard.tpl"}</div>
{include file="bottom.tpl"}
</body>
</html>