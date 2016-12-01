{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417fashionation"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        
        {addcss file="fashionation.css" order="999999999999999999999"}
{addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}
        
    </head>
    <body >
        {*include file="micrositeStickyHeader.tpl"*}
        <div class="container">
            <div class="row">
                <div class="span12" id="">


                    {loadModules position="top"}
                    {include file="silverPopEntry.tpl"}
                </div>
            </div>
        </div>


        <div class="footBar" style="">{loadModules position="footer"}</div>
    </body>
</html>

{literal}
    <script>

        


        jQuery('.menuItem').click(function() {
            var link = jQuery(this).data('link');
            jQuery('html, body').animate({
                scrollTop: jQuery('#' + link).offset().top
            }, 2000, "easeInOutCubic");
        });



        galleryToPics();
        jQuery(window).resize(function() {
            galleryToPics();
        });
    </script>   
{/literal}    







