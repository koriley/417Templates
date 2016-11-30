{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417WHISKEYFEST"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
        {addcss file="whiskey.css" order="999999999999999999999"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}
        
        <div id="publication-container" class="page-container container-fluid">
            <div class="row headerBody hidden-phone" id="wfHeader" style="">
                <a href="/whiskeyfest/"><img src="/images/whisky/2016/WF16_HeaderLogo3clear.png"  style="margin:10px; margin-left:20px;"/></a>
                <div class="headerNavDeskTop" style=''>
                    <a href="http://www.417mag.com/whiskeyfest/Whiskey-Fest--About/"><img src="/images/whisky/2016/WFheader_about.png"  style="margin:10px; margin-left:20px;"/></a>
                    <a href="http://www.417mag.com/whiskeyfest/Whiskey-Fest--Spirits/"><img src="/images/whisky/2016/WFHeader_spirits.png"  style="margin:10px; margin-left:20px;"/></a>
                    <a href="http://www.417mag.com/whiskeyfest/Whiskey-Fest--Seminars/"><img src="/images/whisky/2016/WFHeader_seminars.png"  style="margin:10px; margin-left:20px;"/></a>
                    <a href="http://www.417mag.com/whiskeyfest/Whiskey-Fest--Photos/"><img src="/images/whisky/2016/WFHeader_photos.png"  style="margin:10px; margin-left:20px;"/></a>
                    <a href="https://www.eventbrite.com/e/417-magazine-whiskey-fest-2016-tickets-18215371667" target="_blank"  onclick="{literal}return ewt.trackLink({name:'tickets',type:'wfclick',link:this});{/literal}"><img src="/images/whisky/2016/WFheader_tickets.png"  style="margin:10px; margin-left:20px;"/></a>
                </div>


                <div class="mobileTickets" style="">
                   <a href="https://www.eventbrite.com/e/417-magazine-whiskey-fest-2016-tickets-18215371667" target="_blank"><img src="/images/whisky/2016/WFheader_tickets.png" /></a>
                </div>

            </div>

            <div id="headSpace"></div>
            <div class="headerImage" style=" display:none;" >
                <a href="http://417mag.com/whiskeyfest/"><img class="visible-phone"  src="/images/whisky/2016/WF16_MobileHeaderDapper3.png" /></a>
            </div>
            <div  class="socialShare " style=""><img class="socialShareImage hidden-phone" style="display:none;" src="/images/whisky/2016/greyHeaderSocial.png" />
                <div style="position:relative;">
                    <div class="fbShare popup" link="fb" style="">&nbsp;</div>

                    <div class="tweet popup" link="http://twitter.com/share" style="">​</div>

                    <div class="instagram"><a href="https://instagram.com/explore/tags/417whiskeyfest/" target="_blank"><img src="/images/Indulge/2015/blank.png" /></a></div>
                </div>
            </div>
            <div class="hidden-phone" id="headSpace2" style="height:460px;"></div>
            <div class="columns-container" style="background-color:white; margin-left:-10px; ">

                <div class="row-fluid" id="topLeftandRight" style="padding-bottom:0px;">
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {if $pagecontent<>''}
                        {eval var=$pagecontent}{/if}
                        {loadModules position="middle"}

                        <div class="footImage">
                            <img src="/images/whisky/2016/WF_footer.png" />
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
        var screenWidth = jQuery(document).width();
        //alert(screenWidth);
        if (screenWidth >= 800) {
            var headHeight = jQuery('#wfHeader').height();
            jQuery('#headSpace').css({'height': headHeight + 'px'});
            //find the height of the wf header and push everything below it, since it is fixed.

        }
        if (screenWidth <= 800) {
            jQuery('#sponsorImages').insertAfter('#childLinks');
            jQuery('#lowerTickets').insertAfter('#sponsorImages');
            jQuery('.headerImage').show();
            jQuery('#sponsorImg').attr('src', '/images/whisky/2016/WF_SponsorsMobile.png');
        }
       
        
        var theUrl = window.location.pathname;
        myUrl = theUrl.replace(/\//g, '%2f');
        jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img alt="" src="/images/Indulge/2015/blank.png" /></a>');

        jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417whiskeyfest" class="twitter-hashtag-button"><img alt="" src="/images/Indulge/2015/blank.png" /></a>');
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
        //console.log(theUrl);
        switch (theUrl) {
            case '/whiskeyfest/Whiskey-Fest--About/index.php':
            case '/whiskeyfest/Whiskey-Fest--About/':
                jQuery('.headerImage').css({'background-image': 'url("/images/whisky/2016/child pages/about_pageheader.jpg")', 'margin-top':'0px'});
                jQuery('.headerImage').show();
                jQuery('.socialShareImage').attr('src','/images/whisky/2016/about_pageheader2.jpg').show();
                break;
            case '/whiskeyfest/index.php':
            case '/whiskeyfest/':
                jQuery('.headerImage').show();
                jQuery('.socialShareImage').show();
                break;
            case '/whiskeyfest/Whiskey-Fest--Spirits/index.php':
            case '/whiskeyfest/Whiskey-Fest--Spirits/':
                jQuery('.headerImage').css({'background-image': 'url("/images/whisky/2016/child pages/spirits_pageheader.jpg")', 'margin-top':'0px'});
                jQuery('.headerImage').show();
                 jQuery('.socialShareImage').attr('src','/images/whisky/2016/spirits_pageheader2.jpg').show();
                break;
            case '/whiskeyfest/Whiskey-Fest--Seminars/index.php':
            case '/whiskeyfest/Whiskey-Fest--Seminars/':
                jQuery('.headerImage').css({'background-image': 'url("/images/whisky/2016/child pages/seminars_pageheader.jpg")', 'margin-top':'0px'});
                jQuery('.headerImage').show();
                jQuery('.socialShareImage').attr('src','/images/whisky/2016/seminars_pageheader2.jpg').show();
                break;
            case '/whiskeyfest/Whiskey-Fest--Photos/index.php':
            case '/whiskeyfest/Whiskey-Fest--Photos/':
                jQuery('#headSpace2').hide();
                jQuery('.socialShareImage').hide();
                // jQuery('.headerImage').css({'background-image':'url("/images/whisky/2016/child pages/photos_pageheader.jpg")'});
                //jQuery('.headerImage').show();  
                break
            case '/whiskeyfest/Whiskey-Fest--T-Shirts/index.php':
            case '/whiskeyfest/Whiskey-Fest--T-Shirts/':
                jQuery('#headSpace2').hide();
                jQuery('.socialShareImage').hide();
                // jQuery('.headerImage').css({'background-image':'url("/images/whisky/2016/child pages/photos_pageheader.jpg")'});
                //jQuery('.headerImage').show();  
                break    
        }
    </script>   
{/literal}    







