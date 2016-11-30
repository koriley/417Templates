{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="31DAYSOFGIVEAWAYS"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {*addjs file="parallax.js" position="footer"*}
        {addcss file="30dayGiveAway.css" order="9000"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}
        <!-- Facebook Pixel Code -->
        {literal}
            <script>
                !function (f, b, e, v, n, t, s) {
                    if (f.fbq)
                        return;
                    n = f.fbq = function () {
                        n.callMethod ?
                                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                    };
                    if (!f._fbq)
                        f._fbq = n;
                    n.push = n;
                    n.loaded = !0;
                    n.version = '2.0';
                    n.queue = [];
                    t = b.createElement(e);
                    t.async = !0;
                    t.src = v;
                    s = b.getElementsByTagName(e)[0];
                    s.parentNode.insertBefore(t, s)
                }(window,
                        document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');

                fbq('init', '542951725892473');
                fbq('track', "PageView");</script>{/literal}
        <noscript><img height="1" width="1" style="display:none"
                       src="https://www.facebook.com/tr?id=542951725892473&ev=PageView&noscript=1"
                       /></noscript>
        <!-- End Facebook Pixel Code -->
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        <div class="sizeDiv"></div>
        <div class="document">
            <div class="backGround">

                <!--<button id="changer" style="position:fixed; left:0; top:45px;">Change Background</button>-->




                <div id="publication-container" class="page-container container-fluid">
                    {*include file="breadcrumb.tpl"*}
                    {* PAGE CONTENT AND TITLE*}
                    {assign var="showpagetools" value=false}
                    {pagetools}
                    {if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
                        {assign var="showpagetools" value=true}
                    {/if}
                    <div class="columns-container">


                        <div id='Mother' class="headMother">    
                            <div class="row-fluid" id="topLeftandRight">
                                <div class="desktopHead">
                                    <div class="column-left respond-container span12" style="">
                                        {assign var="respond_containers" value="12,12"}
                                        {loadModules position="header"}

                                    </div>
                                </div>
                                <div class="mobileHead">
                                    <div class="column-left respond-container span3" style="">
                                        {assign var="respond_containers" value="12,3"}
                                        {loadModules position="topleft"}

                                    </div>
                                    <div class="column-top respond-container span4" style="">
                                        {assign var="respond_containers" value="12,5"}
                                        {loadModules position="topcenter"}
                                    </div>        
                                    <div class="column-middle respond-container pull-right span5" style="">
                                        {assign var="respond_containers" value="12,4"}
                                        {loadModules position="topright"}
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="column-top respond-container span12">
                                {assign var="respond_containers" value="12,12"}
                                {loadModules position="middle"}

                            </div>
                        </div>  

                        <div class="browserLink visible-desktop" style="background-color:rgba(0, 0, 0, 0.5); width:100%; color:white; text-align:center; margin:auto; margin-bottom:15px;"><a href="http://www.whatbrowser.org/">Disclaimer: If this page is not displaying correctly, please update your Internet browser or try using another browser.</a></div>
                    </div>    
                </div>



                <div style="text-align:center; width:100%; background-color:black; padding-top:5px;" class=" hidden-phone">{include file="footboard.tpl"}</div> 
                {include file="bottom.tpl"}


            </div>
        </div>
    </body>
</html>


<script>{literal}
    /*
     * 
     * This does not build the calendar. This looks at the calendar built in a module and sets up the prizes and 
     * the overlay to act right.
     */
    var screenWidth = jQuery(document).width();
    var myDate = new Date();
    var DoW = myDate.getDay() + 1; //day of week
    var DoM = myDate.getDate(); //day of month
    var MoY = myDate.getMonth() + 1; //month of year
    var NoDM = new Date(2016, 7, 0).getDate(); //number of days in target month (need to change this to 7)
    var i;
    var dayContents; //this is what I will hold the days contents in for mobile
console.log(DoM);
console.log(MoY);

var myWeek = 8; //this sets up an 8 day week
if((MoY == 7) && (DoM <= 3) || (MoY === 6)){
    myWeek = 15;
    
    //needed a 15 day week because of a sponsor, we look to see if it is the 3rd day (which in 2016 was a sunday), if it is < the 
    // 3rd day, give me 15 days, if it is > go back to 8 day week.
}


    /*
     * if it is not the 7th, turn on the first days the prizes will be available
     */
    if (MoY <= 6) { //chage this to the month before the event (6)
        DoM = 1;
        DoW = 6; //this is the day of the week the first of the month starts on
        //DoW = 1;
    }

    /*
     * if it is past the 7th month, black out all the prizes
     */
    if (MoY >= 8) { //change this to the month after the event (8)
        for (i = 1; i <= 31; i++) {
            jQuery('.day' + i + ' #dayContainer').css('background-color', '#000');
        }
    }
//DoW = 1; //this is for testing needs to be removed
//DoM = 3;
    for (i = 1; i <= NoDM; i++) {

        if (i < DoM) {
            jQuery('.day' + i + ' #dayContainer').css('background-color', '#000');
        }

        if (i === DoM) {


            if (DoW <= 7) {
                // var LiW = 7 - DoW;
                // var GfW = DoW - 1;


                for (k = DoW; k <= myWeek; k++) {
                    jQuery('.day' + i + ' img').removeClass('dayOff');
                    jQuery('.day' + i + ' img').addClass('dayOn');
                    if (screenWidth <= 800) {
                        dayContents = jQuery('.day' + i + ' #dayContainer').html();
                        jQuery('.mobileCal').append("<div class='span12 day" + i + " prize'>" + dayContents + "</div>");

                    }
                    i++;
                }

            }
        }
        if (screenWidth <= 800) {
            dayContents = jQuery('.day' + i + ' #dayContainer').html();
            jQuery('.mobileCal').append("<div class='span12 day" + i + " prize '" + dayContents + "</div>");
            jQuery('#myMother').hide();
        }
        jQuery('.day' + i + ' img').addClass('dayOff');
        jQuery('.day' + i).addClass('hidden-phone');
        jQuery('.day' + i).addClass('hidden-tablet');
        //jQuery('#today').after('<div style="width:15px; height:15px; background-color:black; float:left; margin:2px; color:white;">' + i + '</div>');
    }

    /*
     * We are going to set the css for each text area so the height is only as tall as the text on the slide up
     * 
     */
    for (var x = 1; x <= NoDM; x++) {
        var textHeight = jQuery('.day' + x + ' div').find('#descText').height();
        textHeight = textHeight + 5;
        jQuery('.day' + x + ' div').find('#desc').css({'height': textHeight, 'cursor': 'pointer', 'margin-top': '5px'});
        jQuery('.day' + x + ' div').find('#descText').css({'margin-top': '5px'});
    }
    jQuery(document).ready(function () {
//alert(screenWidth);
        //jQuery(".sizeDiv").text(screenWidth);
        if (screenWidth <= 1024) {

        }

        else {



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

        jQuery('#inner div').mouseenter(function () {
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


                jQuery(this).find('#desc').click(function () {
                    window.location = url;
                    return false;
                });
            }
        });
        jQuery('#inner div').mouseleave(function () {
            jQuery(this).find("#desc").hide("slide", {
                easing: "swing",
                direction: "down"
            });
            jQuery(this).find("#descText").hide("slide", {
                easing: "swing",
                direction: "down"
            });

        });


        var my = 1;
        jQuery('#changer').click(function () {
            my = my + 1;
            if (my > 4) {
                my = 1;
            }
            jQuery('.backGround').css({'background': 'url(http://www.417mag.com/images/30Days/2016/31Days_Background' + my + '.png) no-repeat center center fixed',
                '-webkit-background-size': 'cover',
                '-moz-background-size': 'cover',
                '-o-background-size': 'cover',
                'background-size': 'cover'});
        });

        jQuery('.ssButton').click(function(e){
                    e.preventDefault();
            var email = jQuery('#ember807').val;
            alert(email);
            
        });
    });


{/literal}</script>