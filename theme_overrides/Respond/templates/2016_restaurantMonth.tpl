{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417RestaurantMonth"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="2016_restaurantMonth.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        
        {include file="micrositeStickyHeader.tpl"}
        <div class="headerBlack" style="">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12" id="">

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


       


{loadModules position="bottom"}
        <div class="footBar" style="">{loadModules position="footer"}</div>
        {include file="bottom.tpl"}
    </body>

{literal}
    <script>
        //console.log(jQuery(".gatewayAd").length);
       // console.log(jQuery("#spShopTalk").length);
        if((jQuery(".gatewayAd").length > 0) || (jQuery("#spShopTalk").length > 0)){
restaurantCookie(); //this is the cookie
        }
    </script>   
{/literal} 
   
</html>






