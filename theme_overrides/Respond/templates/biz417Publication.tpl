{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="INC_Head.tpl"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {loadModules position="top"}
        {include file="INC_Header.tpl"}
        
        <div id="publication-container" class="page-container container-fluid">

            <div class="columns-container">
                <div class="row-fluid" id="topLeftandRight">
                    <div class="column-left respond-container span12">
                        {loadModules position="header"}
                        {assign var="respond_containers" value="12,12"}
                        {if $pagecontent<>''}
                        {eval var=$pagecontent}{/if}
                        {loadModules position="middle"}
                        

                    </div>
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="INC_About"}

                    </div>
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="INC_TheTeam"}

                    </div>
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="INC_Contact"}

                    </div>


                </div>

            </div>    
        </div>
        <footer style="">
            <div >
                {assign var="respond_containers" value="12,12"}
                {loadModules position="footer"}

            </div>   
        </footer>
    </body>
</html>







