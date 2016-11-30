{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417thinksummit"}
<!DOCTYPE html>
<html lang="en" >
    <head>
        {include file="2014head.tpl"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}

        {addcss file="thinkSummit.css" order="9000"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
        {*include file="micrositeStickyHeader.tpl"*}


        <div class="tsHeader" style="">
            <div class="videoHeader">
            <video   autoplay loop frameborder="0" id="mainVideo1" style=" width:100%;">
                <source src="/images/thinkSummit/ThinkSummitPromoVideo_NEWLOGO.mp4" type="video/mp4; codecs=avc1.42E01E, mp4a.40.2" /> 
                Video not supported.
            </video>
                <a href="https://www.peopleccg.com/" target="_blank"><div class="peopleCentricLogo"></div></a>
            </div>
            <div class="notVideoHeader" style="display:none;">
                <img src="/images/thinkSummit/ThinkSummit17-MobileHeader.png" />
                <a href="https://www.peopleccg.com/" target="_blank"><div class="mobilePeopleCentricLogo"></div></a>
            </div>
           <!-- <div class="tsHeaderLogo" style="">
                <img src="/images/thinkSummit/ThinkSummit-02.png" style="" />
            </div>-->
        </div>

        <div class="row">
            <div class="container">
                <div class="hamburgerNav" style="">
                    <img src="/images/socialIcons/hamburger.png" />
                </div>
            </div>
        </div>  

        <div class="socialShare">
            <div class="socialTwitter popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/socialIcons/twitter-icon-12.png"/> </div>
            <div class="socialFB popup" link="fb" style="cursor: pointer;"><img src="/images/socialIcons/square-facebook-512.png"/> </div>
            <div class="socialInsta"><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/socialIcons/insta.png" /></a>   </div>  
            <div class="socialInsta"><a href="https://www.linkedin.com/company/biz-417/" target="_blank"><img src="/images/socialIcons/linkedin.png" /></a>   </div>   
        </div>

        <div class="navMenu" style="">
            <div class="menuItems">
                <div class="item"><a href="https://417tix.com/events/biz-417-s-think-summit-presented-by-people-centric-consulting-group" target="_blank" class="checkClick">Tickets</a></div>
                <div class="item"><a href="#thinkSpeakers" class="checkClick">Speakers</a></div>
                <div class="item"><a href="#thinkAgenda" class="checkClick">Agenda</a></div>
                <div class="item"><a href="#thinkSponsors" class="checkClick">Sponsors</a></div>
                <div class="item"><a href="#" class="share checkClick">share</a></div>
            </div>
        </div>


        {loadModules position="middle"}

        

 







        <div class="footContainer">
            <div class="row">
                <div class="container">
                    <div class="footer">
                        <img style="max-width: 400px;" src="/images/thinkSummit/ThinkSummit-04.png" />
                        <div class="footText">SEND ME UPDATES!</div>
                       <div class="form">
                        <div class="footInput">
                            
                            <input type="hidden" name="thinkSummit" value="yes" />
                            
                        </div>
                        <div class="footInput">
                            
                            <input placeholder="Email" type="text" name="email" />
                        </div>
                        <div style="margin-bottom: 20px;"class="footInput">  
                            <input id="subButton" type="submit"  value="Submit">
                        </div>
                       </div>
                        
                        <div class="thank" style="display:none; color: white;">
                            Thanks for submitting
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>


    </body>
    {literal}
        <script>
            jQuery(document).ready(function () {
                //  jQuery('.speakerName').each(function () {
                // jQuery(this).contents().eq(0).wrap('<div class="innerText" style=""></div>');
                //  });
                
                var screenWidth = jQuery(window).width();
                //alert(screenWidth);
                if(screenWidth <= 1025){
                    //alert("here");
                    jQuery('.videoHeader').hide();
                    jQuery('.notVideoHeader').show();
                }
            });
            jQuery('.speaker').mouseenter(function () {
                jQuery(this).find('.speakerName').show("slide", {
                    easing: "swing",
                    direction: "right"

                });
            });
            jQuery('.speaker').mouseleave(function () {
                jQuery(this).find('.speakerName').hide("slide", {
                    easing: "swing",
                    direction: "right"

                });
            });
            
            jQuery('.speaker').on('touchstart', function () {
                jQuery(this).find('.speakerName').toggle("slide", {
                    easing: "swing",
                    direction: "right"

                });
            });

            jQuery('.hamburgerNav').click(function () {
                jQuery(".navMenu").toggle("slide", {
                    easing: "swing",
                    direction: "right"

                });
            });

            jQuery('.checkClick').click(function () {
                jQuery('.hamburgerNav').trigger('click');
            });

            jQuery('.share').click(function () {
                koPopUp('socialShare');
                //change the social share x
                jQuery('#socialShare_closeX').css({'color':'#000'});
            });

            //social share stuff
            var myUrl = window.location.pathname;
            myUrl = myUrl.replace(/\//g, '%2f');
            //alert(myUrl);
            /* jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img style="width:60px;" alt="" src="/images/Indulge/2015/blank.png" /></a>');
             
             jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag={/literal}{$hashTag}{literal}" class="twitter-hashtag-button"><img style="width:75px; " alt="" src="/images/Indulge/2015/blank.png" /></a>');
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
                    url = 'https://www.facebook.com/sharer/sharer.php?app_id=113869198637480&sdk=joey&u=http%3A%2F%2Fwww.biz417.com' + myUrl + '&display=popup&ref=plugin';
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
            
            
            jQuery(document).ready(function () {
                
        jQuery('#subButton').on('click touchstart', function (e) {
            //e.preventDefault();

            var url = 'http://417mag.mkt7054.com/thinkSummit/footer';
            var $form = jQuery(this),
                    sp = "Yes",
                    address = jQuery('input[name="email"]').val(),
                    ts= "yes";
                    
                   // subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                    //optin = jQuery('input[name="2016BWAdvertiserOptIn"]').val();

            if (address != '') {
                            jQuery('.thank').show();
    
            jQuery('.form').hide(500);
                //alert('test');
                // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+tt +' - '+fname+' - '+lname);
              jQuery.post(url, {sp_exp: sp, thinkSummit: ts, Email: address });
             
                //jQuery('.gatewayAd_clickRemove').hide();
                //jQuery('#gatewayAd_greyOut').remove();
                //setCookie("boutiqueSub", address, 365);
            }

        });
    });
        </script>
    {/literal}
</html>