{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="JLSTourOfKitchens"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="tourOfKitchens.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        <div class="row">
            <div class="container">
                {loadModules position="top"}
                
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

        <script>
            {literal}

                //<div style="width:250px; height:250px; background:url('http://417mag.com/{$article.url|cat:$article.image}') center center;" alt="{$article.title}"  ></div>
                jQuery(document).ready(function () {
                    var myID = {/literal} {$tagID}{literal}

                    jQuery("#tourOfKitchensCarousel").touchCarousel({
                        /* carousel options go here see Javascript Options section for more info */

                        scrollbar: false,
                        loopItems: true,
                        directionNavAutoHide: true,
                        autoplay: false,
                        autoplayDelay: 3000,
                        autoplayStopAtAction: true

                    });
                    var parentWidth = jQuery("#tourOfKitchensCarousel").parent().width();
                    jQuery("#tourOfKitchensCarousel").width(parentWidth);
                    jQuery("#tourOfKitchensCarousel").show();
                });
                var $window = jQuery(window);
                function checkWidth() {

                    var windowsize = $window.width();
                    //jQuery('.mySize').html(windowsize);


                }
                checkWidth();
                // Bind event listener
                jQuery(window).resize(checkWidth);
            {/literal}

        </script>  
    </html>









