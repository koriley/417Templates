{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
        {include file="2014head.tpl"}

        {addcss file="2015restaurantMonth.css" order="999999999999999999999"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        {include file="restaurantMonthNav.tpl"}
<div id="publication-container" class="page-container container-fluid">
	
    <div class="columns-container">
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span9">
                	{assign var="respond_containers" value="12,9"}
            		{loadModules position="left"}
                        {if $pagecontent<>''}
                            {eval var=$pagecontent}{/if}
                            
                        
                </div>
                <div class="column-middle respond-container span3">
                	{assign var="respond_containers" value="12,3"}
            		{loadModules position="right"}
                </div>
            </div>
        <div class="row-fluid">
                <div class="column-top respond-container span12">
                     
                	{assign var="respond_containers" value="12,12"}
            		{loadModules position="middle"}
                </div>
            </div>        
    </div>    
</div>
                
      
                                
<div style="text-align:center;" >{include file="footboard.tpl"}</div>  
{include file="bottom.tpl"}




</body>
</html>

<script>{literal}
   
    {/literal}</script>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
            
        </script>
    {/literal}
{/if}    
