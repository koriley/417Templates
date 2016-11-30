{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}

<!DOCTYPE html>
<html lang="en">
    <head>
        {literal}
            <style type="text/css">
                .loginLink a{color:#5a8bb4;}
                .loginLink a:hover{color:#58a0dd; text-decoration: none;}
            </style>
        {/literal}
        {include file="2014head.tpl"}




    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">

        <div class="row-fluid" style="background:#263138; height:60px;">
            <div class="container-fluid">
                <a href="http://www.417tix.com"> <img src="/images/417tix/tix.png" style="width:200px; margin:5px; display: inline-block;"/></a>
                <div class="pull-right loginLink" style="display: inline-block; margin:20px;"><a href="https://417tix.com/login">Login</a></div>
            </div>
        </div>

        <div id="index-container" class="page-container container-fluid">
	
	 <div class="columns-container">
          {if in_array("right", $activeModulePositions)}
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span8">
                	{assign var="respond_containers" value="12,8"}
                        {loadModules position="top"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
                        {loadModules position="middle"}
            		
                        
                </div>
                <div class="column-middle respond-container span4">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                </div>
            </div>
           {else}
                <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12">
                	{assign var="respond_containers" value="12,12"}
                        {loadModules position="top"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
                        {loadModules position="middle"}
            		
                        
                </div>
                {/if}
               
    </div> 
</div>
{include file="bottom.tpl"}
</body>
</html>