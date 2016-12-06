{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417fashionation"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="fashionation.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}

    </head>
    <body >
        {*include file="micrositeStickyHeader.tpl"*}
        <div class="container">
            <div class="row">
                <div class="span12" id="">

                    <div class='mainMenu' style=''>
                        <div class='menuBox'></div>
                    </div>
                    {loadModules position="top"}
                    {include file="silverPopEntry.tpl"}
                    {if $pagecontent<>''}
                    {eval var=$pagecontent}{/if}
                    <div class="socialShare">
            <div class="socialTwitter popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/socialIcons/twitter-icon-12.png"/> </div>
            <div class="socialFB popup" link="fb" style="cursor: pointer;"><img src="/images/socialIcons/square-facebook-512.png"/> </div>
            <div class="socialInsta"><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/socialIcons/insta.png" /></a>   </div>  
            <div class="socialInsta"><a href="https://www.linkedin.com/company/biz-417/" target="_blank"><img src="/images/socialIcons/linkedin.png" /></a>   </div>   
        </div>
                    <div class='mainMenu' style=''>
                        <div class='menuBox'>

       
                <div class="item"><a href="https://417tix.com/events/biz-417-s-think-summit-presented-by-people-centric-consulting-group" target="_blank" class="checkClick">Tickets</a></div>
                <div class="item">tickets</div>
                <div class="item">gallery</div>
                <div class="item">social</div>
                <div class="item">417mag.com </div>
           </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="footBar" style="">{loadModules position="footer"}</div>
    </body>
</html>

{literal}
    <script>
        jQuery('.hamburgerMenu').on('touchstart click', function () {
            jQuery('.menuBox').toggle("slide", {
                easing: "swing",
                direction: "up"

            });
        });
        jQuery('.menuItem').click(function () {
            var link = jQuery(this).data('link');
            jQuery('html, body').animate({
                scrollTop: jQuery('#' + link).offset().top
            }, 2000, "easeInOutCubic");
        });
        jQuery(window).resize(function () {

        });
    </script>   
{/literal}    







