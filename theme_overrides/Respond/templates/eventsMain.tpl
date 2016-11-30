
{addjs file="pageLayout.js" position="footer"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="eventsHead.tpl"}
    </head>
    <body>
        <div class="myWidth"></div>
        {include file="eventsNav.tpl"}

        {loadModules position="top"}
        <div id="mainBody">
            {eval var=$pagecontent}
        </div>
    <MESSAGES>


        {loadModules position="middle"}




        <div class="footer">{include file="eventsFooter.tpl"}</div>
    </body>
</html>


<script>
    {literal}
        jQuery('.page-container .respond-container').css('border-right', '0px');
        jQuery('#clickMe').css('border-bottom', '0px');
        jQuery('.row-fluid').css('border-bottom', '0px');
        jQuery('#needsCheck').wrap('<div class="checkbox">');
        //these are all the menus on the side bar for mobile
        var screenWidth = jQuery(window).width();
        var screenHeight = jQuery(window).height();
//jQuery('.myWidth').html(screenWidth);

        if (screenWidth <= 768) {
            jQuery('#hiddenBar').remove();
            jQuery('#footer-main-menu').css({'text-align': 'center'});
        }

        if (screenWidth >= 1024) {
            jQuery('#mobileMenu').remove();
        }


jQuery('#startLink').wrap('<a style="display:block" href="http://www.417events.com/Start-Planning/">');
jQuery('#startLink').css({'margin-top':'-10px'});
        jQuery(document).ready(function() {


        });
        //sticky header
        jQuery(window).load(function() {
            jQuery('.center').wrap('<div class="container"><div class="row"><div class="span12">');
            jQuery('.center').css({'visibility': 'visible'});

            jQuery(function() {
                // Check the initial Poistion of the Sticky Header
                var stickyHeaderTop = jQuery('#stickyheader').offset().top;

                jQuery(window).scroll(function() {
                    if (jQuery(window).scrollTop() > stickyHeaderTop) {

                        //jQuery('#stickyheader').css({position: 'fixed', top: '0px', height: '60px'});
                        jQuery('#stickyheader').addClass('sticky');
                        jQuery('#hiddenBar').css({'display': 'block'});


                    } else {
                        //jQuery('#stickyheader').css({position: 'static', top: '0px', height: '60px'});
                        jQuery('#stickyheader').removeClass('sticky');
                        jQuery('#hiddenBar').css({'display': 'none'});
                    }
                });
            });


            jQuery(function() {

                var $container = jQuery('#container');


                $container.masonry({
                    gutter: 0,
                    itemSelector: '.item',
                    columnWidth: function(containerWidth) {
                        return containerWidth / 3;
                    }
                });
            });

        });




        //This is the mobile menu
        /* jQuery('#mobileButton').click(function() {
         jQuery('#mobileMenu').toggle();
         jQuery('#mobileMenu').css({'width': screenWidth + 'px'});
         });*/

        jQuery('.dim').css({'background-color': 'transparent'});


        jQuery(function() {
            jQuery("#datepicker").datepicker();
        });
        var ua = navigator.userAgent.toLowerCase();
        console.log(ua);
        var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");
        if (isAndroid) {
            jQuery('head').append('<link rel="stylesheet" href="/theme_overrides/Respond/css/eventsAndroid.css">');
            jQuery('body').css({'display': 'block'});
        } else {
            jQuery('head').append('<link rel="stylesheet" href="/theme_overrides/Respond/css/events.css">');
            jQuery('body').css({'display': 'block'});
        }

    {/literal}    
</script>
{if $Page->tags[359]<>'' || $article.tags[359]<>''}
    {literal}
        <script>
            jQuery("#mainVideo").click(function() {
                var muteState = this.muted;
                //console.log(muteState);
                if (muteState === true) {
                    this.muted = false;
                }
                if (muteState === false) {
                    this.muted = true;
                }
                //console.log(muteState);
            });

            var video = document.getElementsByTagName('video')[0];

            video.onended = function(e) {
                /*Do things here!*/
                jQuery('#vidBrown').fadeOut('slow');
                jQuery('#vidBlue').fadeIn('slow');
            };

            video.onplay = function() {
                jQuery('#vidBrown').fadeIn();
                jQuery('#vidBlue').hide();
                ;
            };
            if (screenWidth <= 1024) {

                jQuery('#vidBlue').remove();
                jQuery('#vidContainer').removeClass('container');
                jQuery('#vidSpan').removeClass('span12');
            }
            //parallex links on home page.. 
            jQuery('#corpLink').wrap('<a href="http://www.417events.com/Corporate/">');
            jQuery('#charLink').wrap('<a href="http://www.417events.com/Charitable/">');
            jQuery('#comLink').wrap('<a href="http://www.417events.com/Community/">');
        </script>    
    {/literal}
{/if}