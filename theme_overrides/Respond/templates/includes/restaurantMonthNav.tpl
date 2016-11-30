
<div class="restLogo">
        <div class="container-fluid hidden-phone">
            <div class="row-fluid">
                <div class="wholeHeader">
                    <div class="topHeader">
                        <a class="" href="http://www.417mag.com/Restaurant-Month-2015/" alt=""><img src="/images/restaurantMonth/2015/RestuarantMonth_HeaderTop.jpg" alt="" /></a>
                    </div>
                    <div class="leftHeader headerInline">
                        <a class="" href="http://www.mobeef.org/" alt=""><img src="/images/restaurantMonth/2015/RestuarantMonth_HeaderLeft.jpg" alt="" /></a>
                    </div>
                    <div class="midHeader headerInline">
                        <a class="" href="http://www.417mag.com/Restaurant-Month-2015/" alt=""><img src="/images/restaurantMonth/2015/RestuarantMonth_HeaderCenter.jpg" alt="" /></a>
                    </div>
                    <div class="rightHeader headerInline">
                        <a href="http://www.rfsdelivers.com/"><img src="/images/restaurantMonth/2015/RestuarantMonth_HeaderRight.jpg" alt="" /></a>
                    </div>
                </div>
            </div>

        </div>

        {*this is the phone only header*}
        <div class="visible-phone"><div class="container-fluid">
                <div class="row-fluid">
                    <div class="wholeHeader">
                        <div class="topHeader">
                            <img src="/images/restaurantMonth/2015/RestuarantMonth_Phone.jpg" alt="" />
                        </div>
                    </div>
                </div>

            </div></div>
    </a></div>
<div class="blackBar" id="mt236" style=""></div>


<div class="" id="stickyheader" style="background-color:white;">
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="navbar">
                <div class="navbar-inner rmNav">
                    <div class="container">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <div class="nav-collapse collapse">
                            <ul class="nav">
                                <li class="liText"><a href="http://www.417mag.com/Restaurant-Month-2015/#par" data-name="#par">Participants</a></li>
                                <li class="liText"><a href="http://www.417mag.com/Restaurant-Month-2015/#about" data-name="#about">About</a></li>
                                <li class="liText"><a href="http://www.417mag.com/Restaurant-Month-2015/Restaurant-Race/" data-name="">Restaurant Race</a></li>
                                <li class="liText"><a href="http://www.417mag.com/Restaurant-Month-2015/Events/" data-name="#">Events</a></li>
                                <li><div class="fbShare popup" link="fb" style="max-width:75px; display:inline;">&nbsp;</div></li>
                                <li><div class="tweet popup" link="http://twitter.com/share" style="max-width:75px; display:inline;">​</div></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div></div>
<div class="blackBar"></div>
<div id="hiddenBar" class="hiddenBar hidden-phone" style=""></div>
{literal}
    <script>



        var myUrl = window.location.pathname;
        myUrl = myUrl.replace(/\//g, '%2f');
        jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img style="max-width:45px;" alt="" src="/images/restaurantMonth/2015/Facebook.png" /></a>');

        jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417RestaurantMonth" class="twitter-hashtag-button"><img style="max-width:45px;" alt="" src="/images/restaurantMonth/2015/Twitter.png" /></a>');
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

//sticky header
        jQuery(window).load(function() {


            /*jQuery(function() {
                // Check the initial Poistion of the Sticky Header
                var stickyHeaderTop = jQuery('#stickyheader').offset().top - 35;

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
            });*/


           

        });

        var toTop = 0;
        var lastClicked = null;
        //console.log(lastClicked);
        jQuery('.nav a').click(function() {
            var myJump = jQuery(this).attr('data-name');
            
            if (myJump !== undefined) {
                if((myJump !== lastClicked) && (lastClicked !== null)){
                    jQuery(lastClicked).css('margin-bottom', '0px');
                }
                //alert(myJump);
                lastClicked = jQuery(this).attr('data-name');
                //console.log(lastClicked);
                toTop = jQuery(myJump).offset().top;
                jQuery(myJump).css('margin-bottom', '50px');
            }

        });
        jQuery(window).scroll(function() {
            if (lastClicked !== null) {
                var newOffset = jQuery(lastClicked).offset().top;
                if (toTop !== newOffset) {
                    jQuery(lastClicked).css('margin-bottom', '0px');
                }
            }
        });


    </script>
{/literal}







