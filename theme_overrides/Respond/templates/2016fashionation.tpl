{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417fashionation"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        
        {addcss file="2016fashionation.css" order="999999999999999999999"}
{addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}
        
    </head>
    <body >
        {include file="micrositeStickyHeader.tpl"}
        <div class="container-fluid">
            <div class="row-fluid">
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

        function galleryToPics() {
            var screenWidth = jQuery(window).width();
            if (screenWidth <= 450) {
                jQuery('.toPics').html('<a href="http://www.417mag.com/417-Magazine/417-Fashionation/Gallery/">pics</a>');
                jQuery('.menuItem').css('font-size', '12px');
            } else {
                jQuery('.toPics').html('<a href="http://www.417mag.com/417-Magazine/417-Fashionation/Gallery/">GALLERY</a>');
                jQuery('.menuItem').css('font-size', '20px');
            }
            //This is to compensate for the black bar size and the page jumps
            var headHeight = jQuery('.blackBar').height();
            jQuery('.anchor').css({'height': headHeight});
        }
        jQuery(document).ready(function() {
            //silverPop1();

        });



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







