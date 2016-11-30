{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417spaandsalonweek"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addcss file="spaAndSalonWeek.css" order="900"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        <div id="publication-container" class="page-container container-fluid">


            {include file='testsilverWallSpa.tpl'}
            <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    {loadModules position="topleft"}

                </div>     
            </div>  

            <div class="row-fluid" id="LeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    {loadModules position="left"}
                    <div id="pagetools">{*include file="pagetools.tpl"*}</div>
                    {if $pagecontent<>''}<div id="mainBody">{eval var=$pagecontent}</div>{/if}
                    <MESSAGES>
                </div>
            </div>
                    
            <div class="row-fluid">
                <div class="column-top respond-container span12">

                    {assign var="respond_containers" value="12,12"}
                    {loadModules position="middle"}
                </div>
            </div>  

            <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    <div style="width:100%; height:2px; background-color:#E8B257;"></div>


                </div>     
            </div>  
        

</div>

        <div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
        {include file="bottom.tpl"}




    </body>
</html>

<script>
    {literal}
        jQuery('.page-container .respond-container').css('border-right', '0px');
        jQuery('#clickMe').css('border-bottom', '0px');
        jQuery('.row-fluid').css('border-bottom', '0px');
 //jQuery.ajaxSetup({ cache: false }); //this is used to stop browsers from caching load functions.
        //these are all the menus on the side bar for mobile
        var screenWidth = jQuery(window).width();

        if (screenWidth <= 720) {
            jQuery(".fb-like").remove();
            jQuery('.list a').each(function() {
                jQuery(this).contents().unwrap(); //removes all the links, leaving their text
            });

            jQuery('.restList div').each(function() {
                var classes = jQuery(this).attr('class').split(' ')[1]; //looks at each div under the restLis, and gets their second class
                //console.log(classes);
                jQuery('#' + classes).css({'background-color': 'white', 'color': 'black', 'height': '400px'}); //looks for ids that match the class name and sets some css

                jQuery('#' + classes).appendTo('.' + classes); //moves the matching divs into the correct class
                jQuery('.' + classes).click(function() { //checks for a click or touch on mobile device
                    var $this = jQuery(this).parent().find('#' + classes);//loads $this with where we are exactly in the DOM
                    console.log($this);
                    jQuery('.listText div').not($this).hide(); //hides any element meeing the criteria that is not $this
                    $this.toggle(); // shows $this


                });

            });



        }


        jQuery(document).ready(function() {
            // Optimalisation: Store the references outside the event handler:
            var $window = jQuery(window);
            var $pane = jQuery('#pane1');
            testshopTalkCookie(); //this is the cookie
            function checkWidth() {
                var windowsize = $window.width();
                //jQuery('.sizeMe').html(windowsize);
                if (windowsize <= 750) {
                    //if the window is greater than 440px wide then turn on jScrollPane..
                    jQuery('#desktopHeader').hide();
                    jQuery('#phoneHeader').show();

                }
                if (windowsize > 750) {
                    //if the window is greater than 440px wide then turn on jScrollPane..
                    jQuery('#desktopHeader').show();
                    jQuery('#phoneHeader').hide();

                }
            }
            // Execute on load
            checkWidth();
            // Bind event listener
            jQuery(window).resize(checkWidth);


            /*jQuery(function(){
             // Check the initial Poistion of the Sticky Header
             var stickyHeaderTop = jQuery('#stickyheader').offset().top;
             
             jQuery(window).scroll(function(){
             if( jQuery(window).scrollTop() > stickyHeaderTop ) {
             
             //jQuery('#stickyheader').css({position: 'fixed', top: '0px', height: '60px'});
             //jQuery('#stickyheader').addClass('sticky');
             
             jQuery('#desktopHeader').addClass('topFix');
             jQuery('#stickyalias').css({display: 'block'});
             
             } else {
             //jQuery('#stickyheader').css({position: 'static', top: '0px', height: '60px'});
             //jQuery('#stickyheader').removeClass('sticky');
             jQuery('#stickyalias').css('display', 'none');
             jQuery('#desktopHeader').removeClass('topFix');    
             }
             });
             }); */

            var myUrl = window.location.pathname;
            myUrl = myUrl.replace(/\//g, '%2f');
            jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img alt="" src="/images/spa/2015/Spa&SalonWeek_FacebookIcon_2015.png" /></a>');

            jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417cutestbaby" class="twitter-hashtag-button"><img alt="" src="/images/spa/2015/Spa&SalonWeek_TwitterIcon_2015.png" /></a>');
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
        });

    {/literal}    
</script>     



