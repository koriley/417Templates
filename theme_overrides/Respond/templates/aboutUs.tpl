{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417culture"}
<!DOCTYPE html>
<html lang="en" >
    <head>
        {include file="2014head.tpl"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}
        {addjs file="https://cdn.rawgit.com/nnattawat/flip/v1.0.20/dist/jquery.flip.min.js" position="footer" order="9000"}
        {addcss file="aboutUs.css" order="9000"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
        {*include file="micrositeStickyHeader.tpl"*}

        <div class="container-fluid hamburgerBlock" >
            <div class="row-fluid">
                <div class="span12" style="">
                    <div class="menu c-hamburger c-hamburger--htx pull-right" style="position:fixed; right:0px; z-index:1001;"><span>toggle menu</span></div>
                </div>
            </div>
        </div>
        <!--<div class="heroSpace"></div>-->
        {*loadModules position="topcenter"*}







        {loadModules position="middle"}


        <!-- <div class="heroImage photoPhade" style="overflow:hidden;">
        <!--<div><img src="/images/aboutUs/Home/Home_Splash_text.png" style="width:100%" /></div>

        <div class="show"><img src="/images/aboutUs/Home/slideTemp/delicious.jpg" /></div>
        <div><img src="/images/aboutUs/Home/slideTemp/fun3.jpg" /></div>
        <div><img src="/images/aboutUs/Home/slideTemp/growth2.jpg" /></div>
        <div><img src="/images/aboutUs/Home/slideTemp/lifeimprovement1.jpg"  /></div>
        <div><img src="/images/aboutUs/Home/slideTemp/recognition.jpg" /></div>

        {literal}
            <script>

            </script>
        {/literal}

    </div>-->


        <div id="box1" class="menuBox" style="">
            <div class="menuItemBox" style="">
                <ul>
                    <li><a href="#home" class="checkClick">Home</a></li>
                    <li><a href="#jobs" class="checkClick">Jobs</a></li>
                    <li><a href="#staff" class="checkClick">Staff</a></li>
                    <li><a href="#what" class="checkClick">What We Do</a></li>
                    <li>
                        <div class="popContact" style="color:white; cursor:pointer;">Contact</div>
                        <div class="contactInfo" style="color:white; line-height:35px; font-size:25px; display:none;" >
                            Whitaker Publishing<br/>
                            <a href="https://www.google.com/maps/place/417+Magazine/@37.1737183,-93.2234129,15z/data=!4m2!3m1!1s0x0:0x8335c468a3f0422d?sa=X&ved=0ahUKEwibsKnPsorPAhVFKiYKHVs7AG4Q_BIIbjAN"> 2111 S. Eastgate Ave.<br/>
                                Springfield, MO 65809<br/></a>
                            417-883-7417<br/>
                        </div>

                    </li>
                    <li><a href="http://417mag.com" class="checkClick">417mag.com</a></li>

                </ul>
            </div>
        </div>



    </body>
    {literal}
        <script>
            var screenWidth = jQuery(window).width();
            // alert(screenWidth);
            var screenHeight = jQuery(window).height();
            var stickyHeaderHeight = jQuery(".blackBar").height("0");
            //jQuery('.heroImage').css('top', stickyHeaderHeight + "px");
            //jQuery('.heroImage').css('height', screenHeight+"px");

            jQuery(window).load(function () {
                // var heroSize = jQuery(".heroImage").height();
                var hamburgerSize = jQuery(".hamburgerBlock").height();
                var absolutSize = heroSize - hamburgerSize;
                //jQuery(".heroSpace").height(absolutSize);
                //jQuery('.deckOfCards').show();
            });

jQuery('.popContact').on('click', function(){
    jQuery('.contactInfo').toggle(500);
});


            if (screenWidth >= 750) {
                jQuery(".cardShow").addClass("span3"); //for some reason the cards don't show up on desktop without a span 3 :/
            }


            jQuery('.card').flip();
            //initiate the menu
            jQuery(".menuBox").animate({
                width: '-=' + screenWidth + 'px',
                height: '-=' + screenHeight + 'px'
                        //  top: "="+screenHeight+'px'
            }, 1000, function () {
                jQuery(this).children().hide();
            }).removeClass("up").addClass("down");
            //listen for menu clicks
            jQuery(".menu").click(function () {
                if (jQuery("#box1").hasClass("down")) {
                    jQuery("#box1").animate({
                        width: '+=' + screenWidth + 'px',
                        height: '+=' + screenHeight + 'px',
                        top: '+= 25px'

                    }, 1000, "easeInOutCirc", function () {
                        jQuery(this).children().fadeIn(500);
                    }).removeClass("down").addClass("up").show();
                    stopScroll = 1;
                } else {
                    jQuery("#box1").animate({
                        width: '-=' + screenWidth + 'px',
                        height: '-=' + screenHeight + 'px'
                                //  top: "="+screenHeight+'px'
                    }, 1000, "easeInOutCirc").removeClass("up").addClass("down").children().fadeOut(200);
                    stopScroll = 0;
                }
            });

            //when sombody clicks on a menu item we need to close the menu.
            jQuery('.checkClick').click(function () {
                jQuery('.menu').trigger('click');
            });
//this animates the menu button
            (function () {

                "use strict";

                var toggles = document.querySelectorAll(".c-hamburger");

                for (var i = toggles.length - 1; i >= 0; i--) {
                    var toggle = toggles[i];
                    toggleHandler(toggle);
                }
                ;

                function toggleHandler(toggle) {
                    toggle.addEventListener("click", function (e) {
                        e.preventDefault();
                        (this.classList.contains("is-active") === true) ? this.classList.remove("is-active") : this.classList.add("is-active");
                    });
                }

            })();
//check for resizing the window, we will then correct the absolute positoning of the hero image
            function checkWidth() {
                screenWidth = jQuery(window).width();
                screenHeight = jQuery(window).height();
                //jQuery('.sizeMe').html(windowsize);
                var stickyHeaderHeight = jQuery(".blackBar").height();
                jQuery('.heroImage').css('top', stickyHeaderHeight + "px");
                var heroSize = jQuery(".heroImage").height();
                hamburgerSize = jQuery(".hamburgerBlock").height();
                absolutSize = heroSize - hamburgerSize;

                jQuery(".heroSpace").height(absolutSize);

            }

            // Bind event listener
            //jQuery(window).resize(checkWidth);

            /*
             * This is the photoPhader javascript
             *
             */

            var imgNum = jQuery(".photoPhade").find('div').length;
            //alert(imgNum);
            var i = 1;
            var e = 1;
            var x = 0;

            jQuery('.photoPhade div').each(function () {
                jQuery(this).addClass("slide_" + i);
                if (i == 1) {
                    jQuery(this).addClass('show');
                }
                i = i + 1;
            });
            function timerRotate() {
                if (e >= imgNum) {
                    e = 1;
                } else {
                    e = e + 1;
                }
                if (x >= imgNum) {
                    x = 1;
                } else {
                    x = x + 1;
                }
                //alert(e);
                //jQuery('.slide_'+x).hide("slide", { direction: "left"},1000);
                // jQuery('.slide_' + e).show("slide", { direction: "right" },1000);
                jQuery('.slide_' + x).removeClass('show');
                jQuery('.slide_' + e).addClass('show');
                /*jQuery('.black').addClass('grey');
                 jQuery('.black').removeClass('black');
                 jQuery('.menu_' + e).addClass('black');*/

                //console.log("e="+e+" x="+x);
            }

            var timer = setInterval(timerRotate, 5000);


            //this is the culture car
            jQuery("#culture").touchCarousel({
                /* carousel options go here see Javascript Options section for more info */

                scrollbar: false,
                loopItems: true,
                directionNavAutoHide: true,
                autoplay: false,
                autoplayDelay: 3000,
                autoplayStopAtAction: true

            });
            var parentWidth = jQuery("#culture").parent().width();
            jQuery("#culture").width(parentWidth);
            jQuery("#culture").show();





        </script>{/literal}
    </html>