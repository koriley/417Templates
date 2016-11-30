{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="https://use.typekit.net/fzx8bqg.js"></script>
    <script>{literal}try{Typekit.load({ async: true });}catch(e){}{/literal}</script>
        {include file="INC_Head.tpl"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="biz417Top.tpl"}
        <div id="publication-container" class="page-container container-fluid">
<div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span8">
                	{assign var="respond_containers" value="12,8"}
            		{loadModules position="left"}
                        
                </div>
                <div class="column-middle respond-container span4">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                </div>
            </div>
            <div class="columns-container">
                <div class="row-fluid" id="topLeftandRight">
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {if $pagecontent<>''}
                        {eval var=$pagecontent}{/if}
                        {loadModules position="middle"}
                        

                    </div>
                   


                </div>

            </div>    
        </div>
        <footer style="">
            <div >
                {assign var="respond_containers" value="12,12"}
                {*loadModules position="footer"*}
{include file="bottom.tpl"}
            </div>   
        </footer>
    </body>
</html>







