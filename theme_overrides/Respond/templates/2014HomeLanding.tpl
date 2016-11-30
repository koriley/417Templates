{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en"> 
<head>
{include file="2014head.tpl"}

</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014HomeTop.tpl"}
<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container">
        <div class="row-fluid">
            <div class="columns span8">
            	{assign var="respond_containers" value="12,8"}
                <div class="column-top respond-container">
            		{loadModules position="top"}
                </div>
                <div class="column-middle respond-container">
                	{loadModules position="middle"}
                         
                </div>
            </div>
            <div class="column-right respond-container span4">
            	{assign var="respond_containers" value="12,6"}
            	{loadModules position="right"}
            </div>
        </div>
            
        <div class="row-fluid">
                <div class="column-top respond-container span12">
                	{assign var="respond_containers" value="12,12"}
            		{loadModules position="bottom"}       
                </div>
            </div>    
       </div>     
</div> 
            
{include file="bottom.tpl"}
</body>
</html>

{literal}
    <script>
        jQuery('.page-container .row-fluid').css('border-bottom','0px');
    </script>
{/literal}    