<!--<div class="microHeader" style="">
   <a href="http://www.417mag.com"><img src="/images/417Corp/417Sticky.png"></a>
</div>

<div class="microHeaderSpaceFix"></div>-->


{*}{addcss file="StickyHeader.css" order="900"}
<div class="blackBar">
    <div class="container hidden-phone" id="stickyHeader" style="height:auto">

        <div class="bizMicroHeader pull-left"><a href="http://www.417mag.com" alt="{$publication.title}"><img src="/images/417Corp/417Sticky.png" /></a></div>
        <div class="pull-right socialShareBar" style="color:white">
            <div class="socialShareBarChild">#{$hashTag}</div>
            <div class="socialShareBarChild  popup" link="fb" style="cursor: pointer;"><img src="/images/biz417/Social_facebook.png" /></div>
            <div class="socialShareBarChild  "><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/whisky/2016/WFSocial_Instagram.png" /></a></div>
            <div class="socialShareBarChild popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/biz417/Social_Twitter.png" /></div>
        </div>
    </div>

    <div class="container visible-phone" id="stickyHeader" style="height:auto">

        <div class="bizMicroHeader "><a href="http://417mag.com" alt="{$publication.title}"><img src="/images/417Corp/417Sticky.png" /></a></div>
        <div style="text-align: center;">
            <div class="socialShareBar" style="color:white">
                <div class="socialShareBarChild">#{$hashTag}</div>
                <div class="socialShareBarChild  popup" link="fb" style="cursor: pointer;"><img src="/images/biz417/Social_facebook.png" /></div>
                <div class="socialShareBarChild  "><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/whisky/2016/WFSocial_Instagram.png" /></a></div>
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
            var headerHeight = jQuery('.blackBar').height()+5;
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

{/literal}{*}

{addcss file="stickyHeader2.css" order="900"}
<div class="blackBar">

    <div class="container-fluid" id="stickyHeader" style="height:auto; ">
        <div class="row-fluid" style="">
            <div class="span12">
                <div class="bizMicroHeader" style="display:inline-block; text-align:left;"><a href="http://www.417mag.com" alt="{$publication.title}"><img src="/images/417Corp/417Sticky.png" /></a></div>
                <div class="socialShareBar pull-right" style="color:white;  height:30px;">
                    <div class="socialShareBarChild hashTag">#{$hashTag}</div>
                    <div class="socialShareBarChild  popup" link="fb" style="cursor: pointer;"><img src="/images/biz417/Social_facebook.png" /></div>
                    <div class="socialShareBarChild  "><a href="https://instagram.com/explore/tags/{$hashTag}/" target="_blank"><img src="/images/whisky/2016/WFSocial_Instagram.png" /></a></div>
                    <div class="socialShareBarChild popup" link="http://twitter.com/share" style="cursor: pointer;"><img src="/images/biz417/Social_Twitter.png" /></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="microSpacer"></div>
{literal}
    <script>
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
        
        function headSpace(){
        var screenWidth = jQuery(document).width();
         if (screenWidth >= 800) {
            //always have the right amount of space behind the black bar to push the content below.   
            var headerHeight = jQuery('.blackBar').height();
            jQuery('#microSpacer').height(headerHeight);
            var innerHeight = headerHeight - 40;
            jQuery(document).ready(function() {
                //jQuery('.socialShareBar').css({'margin-top': innerHeight + 'px'});
                //alert(innerHeight);
                ////
               // jQuery('.socialShareBar').fadeIn();
            });
        }
        if (screenWidth < 800) {
            //always have the right amount of space behind the black bar to push the content below.   
            jQuery('.bizMicroHeader img').attr('src', '/images/417Corp/417mag_logo_WHITE.png');
            jQuery('.bizMicroHeader img').css({'width':'100px', 'margin':'5px'});
            var headerHeight = jQuery('.blackBar').height()+5;
            jQuery('#microSpacer').height(headerHeight);
            //var innerHeight = headerHeight;
            // jQuery('.socialShareBar').css({'margin-top': innerHeight + 'px'});
            ////
            //alert(headerHeight);
        }
        if (screenWidth <= 400) {
            var headerHeight = 53;
            jQuery('#microSpacer').height(headerHeight);
            //alert(headerHeight);
        }
    }
    
    headSpace();
    jQuery(window).resize(function(){
        headSpace();
    });
    
    </script>
{/literal}