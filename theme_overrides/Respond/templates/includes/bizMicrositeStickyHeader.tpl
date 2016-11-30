{addcss file="bizStickyHeader.css" order="900"}
<div class="blackBar">
    <div class="container hidden-phone" id="stickyHeader" style="height:auto">

        <div class="bizMicroHeader pull-right"><a href="http://www.biz417.com" alt="{$publication.title}"><img src="/images/biz417/BiZ417_White&RedWebLogo.png" /></a></div>
        <div class="pull-right socialShareBar" style="color:white">
            <div class="socialShareBarChild">#{$hashTag}</div>
            <div class="socialShareBarChild  popup" link="fb" style="cursor: pointer;"><img src="/images/biz417/Social_facebook.png" /></div>
            <div class="socialShareBarChild  "><a href="https://www.linkedin.com/company/10017533?trk=tyah&trkInfo=clickedVertical%3Ashowcase%2CclickedEntityId%3A10017533%2Cidx%3A1-1-1%2CtarId%3A1442249365501%2Ctas%3Abiz%20417" target="_blank"><img src="/images/biz417/BSchool15_LinkedIn.png" /></a></div>
            <div class="socialShareBarChild popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/biz417/Social_Twitter.png" /></div>
        </div>
    </div>

    <div class="container visible-phone" id="stickyHeader" style="height:auto">

        <div class="bizMicroHeader "><a href="http://biz417.com" alt="{$publication.title}"><img src="/images/biz417/BiZ417_White&RedWebLogo.png" /></a></div>
        <div style="text-align: center;">
            <div class="socialShareBar" style="color:white">
                <div class="socialShareBarChild">#{$hashTag}</div>
                <div class="socialShareBarChild  popup" link="fb" style="cursor: pointer;"><img src="/images/biz417/Social_facebook.png" /></div>
                <div class="socialShareBarChild  "><a href="https://www.linkedin.com/company/10017533?trk=tyah&trkInfo=clickedVertical%3Ashowcase%2CclickedEntityId%3A10017533%2Cidx%3A1-1-1%2CtarId%3A1442249365501%2Ctas%3Abiz%20417" target="_blank"><img src="/images/biz417/BSchool15_LinkedIn.png" /></a></div>
                <div class="socialShareBarChild popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/biz417/Social_Twitter.png" /></div>
            </div>
        </div> 
    </div>      
</div>
<div id="microSpacer"></div>
{literal}
    <script>
        var screenWidth = jQuery(document).width();
        var hashtag = "{/literal}{$hashTag}{literal}";
        //keep the header content in the middle at 1200 or screen size.
        if (screenWidth >= 1200) {
            jQuery('#stickyHeader').css({'width': '1200px'});
        }

        if (screenWidth < 1200) {
            jQuery('#stickyHeader').css({'width': screenWidth + 'px'});
        }
        ///    


        if (screenWidth >= 800) {
            //always have the right amount of space behind the black bar to push the content below.   
            var headerHeight = jQuery('.blackBar').height();
            jQuery('#microSpacer').height(headerHeight);
            var innerHeight = headerHeight - 40;
            jQuery(document).ready(function() {
                jQuery('.socialShareBar').css({'margin-top': innerHeight + 'px'});
                //alert(innerHeight);
                ////
                jQuery('.socialShareBar').fadeIn();
            });
        }
        if (screenWidth < 800) {
            //always have the right amount of space behind the black bar to push the content below.   
            var headerHeight = jQuery('.blackBar').height();
            jQuery('#microSpacer').height(headerHeight);
            //var innerHeight = headerHeight;
            // jQuery('.socialShareBar').css({'margin-top': innerHeight + 'px'});
            ////
        }
        //do the social info
        var myUrl = window.location.pathname;
        myUrl = myUrl.replace(/\//g, '%2f');
        /* jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img style="width:60px;" alt="" src="/images/Indulge/2015/blank.png" /></a>');
         
         jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417indulge" class="twitter-hashtag-button"><img style="width:75px; " alt="" src="/images/Indulge/2015/blank.png" /></a>');
         */jQuery('.popup').click(function(event) {
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

        ///
    </script>

{/literal}