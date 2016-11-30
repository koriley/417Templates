{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="MedicalSpaMonth"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addcss file="2016medSpaMonth.css" order="900"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">

        {loadModules position="header"}
        <div class="row">
            <div class="container">

  {if $pagecontent<>''}
                    <div class="row">
                        <div class="container">
                            {$pagecontent}
                        </div>
                    </div>{/if}
                    {include file='silverWallMedSpa.tpl'}
        {loadModules position="middle"}


            </div>
        </div>
        <div class="row-fluid footBar">

        </div>
        {include file="bottom.tpl"}
    </body>
</html>
{literal}
    <script>
        var pageURL = window.location.href;
        console.log(pageURL);
        if((pageURL === 'http://www.417mag.com/Medical-Spa-Month/') || (pageURL === 'http://www.417mag.com/Medical-Spa-Month/?previewmode=on')){
   // console.log(pageURL);
    
    medSpaCookie();
    
}
        </script>
    {/literal}