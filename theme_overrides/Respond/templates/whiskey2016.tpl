{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417whiskeyfest"}
<!DOCTYPE html>
<html lang="en" >
    <head>
        {include file="2014head.tpl"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}

        {addcss file="2016whiskey.css" order="9000"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
        {*include file="micrositeStickyHeader.tpl"*}

        <!-- header bar -->
        <div class="row-fluid">

            <div class="whiskeyHeader">
                <div class="whiskeyHeaderLogo left">
                    <img src="/images/whisky/2017/WF17_microsite_header_topL.png" />
                    <a href="https://www.facebook.com/DowntownDapper/?fref=ts" ><div class="dapperLink"></div></a>
                </div>
                <div class="whiskeyHeaderMenu right">
                    <div class="whiskeyHeaderTickets inline">
                        <a href="https://417tix.com/events/417-magazine-s-whiskey-fest" target="_blank"><img src="/images/whisky/2017/WF17_microsite_header_tix.png" /></a>
                    </div>
                    <div class="whiskeyHeaderHamburger inline">
                        <img src="/images/whisky/2017/WF17_microsite_header_hamburgermenu.png" />
                    </div>
                </div>
            </div>
            <div class="whiskeyHeaderMobile">
                <div class="whiskeyHeaderHamburger inline">
                    <img src="/images/whisky/2017/WF17_microsite_header_hamburgermenu.png" />
                </div>
            </div>
            <div class="spacer"></div>
            <div class="menuItems">
                <div class="item"><a href="https://417tix.com/events/417-magazine-s-whiskey-fest" class="checkClick">tickets</a></div>
                <div class="item"><a href="#spirits" class="checkClick">spirits</a></div>
                <div class="item"><a href="#privateTasting" class="checkClick">private tastings</a></div>
                <div class="item share checkClick">share</div>
            </div>
        </div>

        <div class="socialShare">
            <div class="socialTwitter popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/socialIcons/twitter-icon-12.png"/> </div>
            <div class="socialFB popup" link="fb" style="cursor: pointer;"><img src="/images/socialIcons/square-facebook-512.png"/> </div>
            <div class="socialInsta"><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/socialIcons/insta.png" /></a>   </div>     
        </div>

        {loadModules position="middle"}

        <div class="row-fluid footer">
            <div class="container">
                <img src="/images/whisky/2017/WF17_microsite_footer.png" />
                <div style="max-width: 320px; margin: auto; ">
                    <iframe src="" width="100%" height="600" style="border:0px; height:300px;" onload="javascript: if(typeof ewt != 'undefined' && ewt && ewt.setIFrameSrc) ewt.setIFrameSrc(this, 'http://417mag.mkt7054.com/WhiskeyFestSignUp/whiskeyFest2015'); else if(this.src != 'http://417mag.mkt7054.com/WhiskeyFestSignUp/whiskeyFest2015') this.src = 'http://417mag.mkt7054.com/WhiskeyFestSignUp/whiskeyFest2015';" ></iframe></div>
            </div>
        </div>
    </div>


</body>
{literal}
    <script>
        
        var screenWidth = jQuery(window).width();
                //alert(screenWidth);
                if(screenWidth <= 1025){
                    //alert("here");
                    jQuery('.whiskeyHeader').hide();
                    jQuery('.whiskeyHeaderMobile').show();
                }
        
        
        jQuery('.whiskeyHeaderHamburger').click(function () {
            jQuery(".menuItems").toggle("slide", {
                easing: "swing",
                direction: "right"

            });
        });
        jQuery('.checkClick').click(function () {
            jQuery('.whiskeyHeaderHamburger').trigger('click');
        });

        jQuery('.share').click(function () {
            koPopUp('socialShare');
            jQuery('#socialShare_closeX').css({'color': '#000'});
        });

        //social share stuff
        var myUrl = window.location.pathname;
        myUrl = myUrl.replace(/\//g, '%2f');
        /* jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img style="width:60px;" alt="" src="/images/Indulge/2015/blank.png" /></a>');
             
         jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417indulge" class="twitter-hashtag-button"><img style="width:75px; " alt="" src="/images/Indulge/2015/blank.png" /></a>');
         */jQuery('.popup').click(function (event) {
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
            jQuery('#socialShare_closeX').trigger('click');
            return false;
        });
        jQuery('.socialInsta').click(function () {
            jQuery('#socialShare_closeX').trigger('click');
        });
    </script>
{/literal}
</html>