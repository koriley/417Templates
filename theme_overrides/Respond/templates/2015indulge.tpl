{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417Indulge"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addjs file="parallax.js" position="footer"}
        {addcss file="2015indulge.css" order="9000"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}
        <div class="sizeDiv"></div>






        <div class="mother">

            {loadModules position="middle"}</div>








        <div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
        {include file="bottom.tpl"}



    </body>
</html>


<script>{literal}
    jQuery(document).ready(function() {
        var screenWidth = jQuery(document).width();
        //jQuery(".sizeDiv").text(screenWidth);
        if (screenWidth <= 1024) {
            jQuery("#myBackground").addClass("backgroundDiv");
        }

        else {
            jQuery("#myBackground").addClass("parallax-container");
            jQuery("#isParallax").addClass("childParallax");
            jQuery("#myBackground").attr({
                "data-image-src": "http://www.417mag.com/images/30Days/2015/SummerDays15_Microsite_1500px_Background.jpg",
                "data-parallax": "scroll",
                "data-speed": "0.2",
                "data-position": "1100px 0"
            });
        }

        //center data on smaller than ipad devices
        /* if(screenWidth<=780){
         
         jQuery('#topLeftandRight').css({
         width:'300px',
         margin:'auto'
         });
         
         var innerWidth = jQuery('#dayContainer').css('width');
         
         jQuery('#myMother').css({
         width:innerWidth,
         margin:'0 auto'
         });
         jQuery('.winSweet').css({
         float:'none'
         });
         }*/
        /////////////////////

        jQuery('#inner div').mouseenter(function() {
            jQuery(this).find("#desc").show("slide", {
                easing: "swing",
                direction: "down"
            });
            jQuery(this).find("#descText").show("slide", {
                easing: "swing",
                direction: "down"

            });
            var url = jQuery(this).find('#descText a').attr('href');
            //console.log(url);
            if (url != undefined) {
                jQuery(this).find('#desc').css('cursor', 'pointer');
                jQuery(this).find('#desc').click(function() {
                    window.location = url;
                    return false;
                });
            }
        });
        jQuery('#inner div').mouseleave(function() {
            jQuery(this).find("#desc").hide("slide", {
                easing: "swing",
                direction: "down"
            });
            jQuery(this).find("#descText").hide("slide", {
                easing: "swing",
                direction: "down"
            });
        });
        jQuery('#shah').mouseenter(function() {
            jQuery('#shah1').hide();
            jQuery('#shah2').show();
        });
        jQuery('#shah').mouseleave(function() {
            jQuery('#shah1').show();
            jQuery('#shah2').hide();
        });
        jQuery('#harem').mouseenter(function() {
            jQuery('#harem1').hide();
            jQuery('#harem2').show();
        });
        jQuery('#harem').mouseleave(function() {
            jQuery('#harem1').show();
            jQuery('#harem2').hide();
        });
        jQuery('#ramada').mouseenter(function() {
            jQuery('#ramada1').hide();
            jQuery('#ramada2').show();
        });
        jQuery('#ramada').mouseleave(function() {
            jQuery('#ramada1').show();
            jQuery('#ramada2').hide();
        });
        jQuery('#acacia').mouseenter(function() {
            jQuery('#acacia1').hide();
            jQuery('#acacia2').show();
        });
        jQuery('#acacia').mouseleave(function() {
            jQuery('#acacia1').show();
            jQuery('#acacia2').hide();
        });

        jQuery('#justice').mouseenter(function() {
            jQuery('#justice1').hide();
            jQuery('#justice2').show();
        });
        jQuery('#justice').mouseleave(function() {
            jQuery('#justice1').show();
            jQuery('#justice2').hide();
        });

        jQuery('#oneMoreSong').mouseenter(function() {
            jQuery('#oneMoreSong1').hide();
            jQuery('#oneMoreSong2').show();
        });
        jQuery('#oneMoreSong').mouseleave(function() {
            jQuery('#oneMoreSong1').show();
            jQuery('#oneMoreSong2').hide();
        });
        jQuery('#stella').mouseenter(function() {
            jQuery('#stella1').hide();
            jQuery('#stella2').show();
        });
        jQuery('#stella').mouseleave(function() {
            jQuery('#stella1').show();
            jQuery('#stella2').hide();
        });
        jQuery('#kgbx').mouseenter(function() {
            jQuery('#kgbx1').hide();
            jQuery('#kgbx2').show();
        });
        jQuery('#kgbx').mouseleave(function() {
            jQuery('#kgbx1').show();
            jQuery('#kgbx2').hide();
        });
         jQuery('#elite').mouseenter(function() {
            jQuery('#elite1').hide();
            jQuery('#elite2').show();
        });
        jQuery('#elite').mouseleave(function() {
            jQuery('#elite1').show();
            jQuery('#elite2').hide();
        });
         jQuery('#emerald').mouseenter(function() {
            jQuery('#emerald1').hide();
            jQuery('#emerald2').show();
        });
        jQuery('#emerald').mouseleave(function() {
            jQuery('#emerald1').show();
            jQuery('#emerald2').hide();
        });
        
        
    });


    var myUrl = window.location.pathname;
    myUrl = myUrl.replace(/\//g, '%2f');
    jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img style="width:60px;" alt="" src="/images/Indulge/2015/blank.png" /></a>');

    jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417indulge" class="twitter-hashtag-button"><img style="width:75px; " alt="" src="/images/Indulge/2015/blank.png" /></a>');
    jQuery('.popup').click(function(event) {
        var width = 575,
                myService = 'twitter',
                height = 400,
                left = (jQuery(window).width() - width) / 2,
                top = (jQuery(window).height() - height) / 2,
                url = (jQuery(this).attr('link')),
                opts = 'status=1' +
                ',width=' + width +
                ',height=' + height +
                ',top=' + top +
                ',left=' + left;

        if (url === "fb") {
            url = 'https://www.facebook.com/sharer/sharer.php?app_id=113869198637480&sdk=joey&u=http%3A%2F%2Fwww.417mag.com' + myUrl + '&display=popup&ref=plugin';
            myService = 'facebook-share-dialog';
        }
        ;
        window.open(url, myService, opts);

        return false;
    });

    {/literal}</script>