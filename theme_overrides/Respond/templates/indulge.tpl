
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
	<div class="row-fluid" style="border-bottom:0px;">
              <div class="column-top respond-container span12" id="removeBorder" style="border-right:0px; padding-right:0px; border-bottom:0px;">
                  {assign var="respond_containers" value="12,12"}
	
		{include file="pagetools.tpl"}
	
        </div></div>
    <div class="columns-container">
        <div class="row-fluid" style="background-color:#B5D448">
           
                <div class="column-top respond-container span4" id="removeBorder" style="border-right:0px; padding-right:0px;">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="topleft"}
                </div>
                <div class="column-top respond-container span8">
                	{assign var="respond_containers" value="12,8"}
            		{loadModules position="topright"}
                
            </div>    
        </div> 
                        <div class="row-fluid ">
                            <div class="span12">
                                {assign var="respond_containers" value="12,12"}
            		         {loadModules position="topcenter"}
                            </div>
                        </div>              
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span8">
                	{assign var="respond_containers" value="12,8"}
            		{if $pagecontent<>''}{$pagecontent}{/if}
                        {loadModules position="middle"}
                        
                </div>
                <div class="column-middle respond-container span4 hidden-phone">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                </div>
            </div>
               
    </div>    
</div>
                
               
                
<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
              
        </script>
    {/literal}
{/if} 
