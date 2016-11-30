{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417boutiqueweek"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="boutiqueWeek.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}
        <div class="headerBlack" style="">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12" id="">
                        
                            <div style="position: relative">
                                <a href="http://www.417mag.com/Boutique-Week/"><img src="/images/boutiqueWeek/2016/417BoutiqueWeek16_microsite_circle.jpg" /></a>
                            
                            <a href="http://www.417mag.com/Boutique-Week/Shopping-Spree/" ><div style="position: absolute; border:0px solid red; width:210px; height:210px; right:75px; top:40px;">
                            </div></a>
                            </div>
                        {include file='silverWallBoutique.tpl'}
                        {loadModules position="top"}
                    </div>
                </div>
            </div>
        </div>
                    {if $pagecontent<>''}
                    <div class="row">
                        <div class="container">
                            {$pagecontent}
                        </div>
                    </div>{/if}
        {loadModules position="middle"}

 







        <div class="footBar" style="">{loadModules position="footer"}</div>
        {include file="bottom.tpl"}
    </body>
</html>

{literal}
    <script>

var pageURL = window.location.href;

if(pageURL !== 'http://www.417mag.com/Boutique-Week/Boutique-Week-Savings-Pass/'){
    //console.log(pageURL);
    boutiqueCookie();
}

jQuery('.boutiquePopup').on('click', function(){
    koPopUp('gatewayAd');
});
    </script>   
{/literal}    







