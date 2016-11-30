
<div class="header" style="">
    <div class="container">

        <div class="dropMenuButton " style=" "><img src="https://www.417mag.com/images/biz417/menuIcon.png" /></div>
        <div class="menuSubscribe">
            <ul class="ulInline">
                <li>
                    <span class="searchClick"><img id="searchClick" src="/images/biz417/search.png" /></span>
                </li>
                <li>
                    <a href="https://www.biz417.com/Biz417/Subscribe/">SUBSCRIBE</a>
                </li>
            </ul>
        </div>
        <div class=" bizLogo" style="">
            <a href="{$publication.params.logolinkurl}" alt="{$publication.title}">
                <img src="{$publication.params.logopath}" alt="{$publication.title}" />
            </a>
        </div>
        <div class="bizEyebrow" style="">
            {include file="bizEyebrow.tpl"}

        </div>

    </div>
</div>

<div class="headerMobile" style="">
    <div class="container">
        <div class="row">
            <div class="span12 bizLogoMobile" style="">
                <a class="logo" href="{$publication.params.logolinkurl}" alt="{$publication.title}">
                    <img src="{$publication.params.logopath}" alt="{$publication.title}" />
                </a>

            </div>
        </div>
        <div class="row">
            <div class="span3">
                <div class="dropMenuButton " style=" "><img src="https://www.417mag.com/images/biz417/menuIcon.png" /></div>
            </div>
            <div class="menuSubscribe">
                <ul class="ulInline">

                    <li>
                        <a href="https://www.biz417.com/Biz417/Subscribe/">SUBSCRIBE</a>
                    </li>
                </ul>
            </div>
            <div class="span09">

                <div class="bizEyebrow" style="">
                    {include file="bizEyebrow.tpl"}

                </div>
            </div>
        </div>




    </div>
</div>

<div id="dropMenu" class="dropMenu" style=''>

    {include file="bizMainMenu.tpl"}
    <div style="width:95%; border:.5px solid grey;"></div>
    {*include file="bizEyebrow.tpl"*}
    {include file="bizMenuThirdLevel.tpl"}

</div>
<div class="dropSearch" style="background-color:black;">
    <div>
        <ul class="" style="background-color:black; list-style: none;">
            <li class="" style="background-color:black;">
            <gcse:search style="display:inline;"></gcse:search>
            </li>
        </ul>
    </div>
</div>
<div  class="" id="spacer" style=""></div>

{literal}
    <script>
        jQuery('.dropMenuButton').click(function () {
            jQuery('#dropMenu').toggle('slide', {direction: 'left'}, 500);
        });
        /*if(window.innerHeight > window.innerWidth){
         alert("Please use Landscape!");
         }*/
        jQuery('#searchClick').click(function (e) {
            e.preventDefault();
            jQuery('.dropSearch').toggle('slide', {direction: 'up'}, 500, 'linear');
        });
        jQuery(document).ready(function () {
            var screenWidth = jQuery(window).width();
            var screenHeight = jQuery(window).height();
            //alert("width = "+screenWidth+" height = "+screenHeight);
            //portrait
            if (screenWidth < screenHeight) {
//alert(screenWidth);
                if (screenWidth <= 760) {
                    var headerHeight = jQuery('.headerMobile').height();
                    //alert(headerHeight);
                    // alert("here1");
                    jQuery('.header').hide();
                    jQuery('#dropMenu').css({'top': headerHeight + 'px'});
                    jQuery('.dropSearch').css({'top': headerHeight + 'px'});
                    var spacerLevel = 5;
                    jQuery('#spacer').css({'margin-bottom': spacerLevel + 'px'});
                }
                if (screenWidth >= 761) {
                    // alert("here2");
                    var headerHeight = jQuery('.header').height();

                    jQuery('.headerMobile').hide();
                    jQuery('#dropMenu').css({'top': headerHeight + 'px'});
                    jQuery('.dropSearch').css({'top': headerHeight + 'px'});
                    var spacerLevel = headerHeight + 15;
                    jQuery('#spacer').css({'margin-bottom': spacerLevel + 'px'});
                }
            }
            if (screenWidth > screenHeight) {
//alert(screenWidth);
                if (screenWidth <= 735) {
                    var headerHeight = jQuery('.headerMobile').height();
                    //  alert(headerHeight);
                    //alert("here3");
                    jQuery('.header').hide();
                    jQuery('#dropMenu').css({'top': headerHeight + 'px'});
                    jQuery('.dropSearch').css({'top': headerHeight + 'px'});
                    var spacerLevel = 5;
                    jQuery('#spacer').css({'margin-bottom': spacerLevel + 'px'});
                }
                if (screenWidth >= 736) {
                    // alert("here4");
                    var headerHeight = jQuery('.header').height();
                    jQuery('.header').show();
                    jQuery('.headerMobile').hide();
                    jQuery('#dropMenu').css({'top': headerHeight + 'px'});
                    jQuery('.dropSearch').css({'top': headerHeight + 'px'});

                    var myUrl = window.location.pathname;
                    console.log(myUrl);
                    if ((myUrl === "/B-School/") || (myUrl === "/B-School/index.php") ) {
                        var spacerLevel = headerHeight;
                        
                    } else {
                        var spacerLevel = headerHeight + 15;
                        
                    }
                    jQuery('#spacer').css({'margin-bottom': spacerLevel + 'px'});
                }
            }


            (function () {
                var cx = '005956398759927332793:j1fknd1lj3o';
                var gcse = document.createElement('script');
                gcse.type = 'text/javascript';
                gcse.async = true;
                gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                        '//cse.google.com/cse.js?cx=' + cx;
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(gcse, s);
            })();

        });


        jQuery('.KORdrop').each(function () {
            var KORdata = jQuery('.KORdrop').attr('data');
            //console.log(KORdata);
            jQuery('#menu_' + KORdata + '_child').hide();
            //var checkShow = 1;
            // console.log(checkShow);
            jQuery('#menu_' + KORdata + '_click').click(function () {

                // console.log('click');
                var myText = jQuery('.moreItems').text();
                switch (myText) {
                    case "+":
                        jQuery('.moreItems').text('-');
                        break;
                    case "-":
                        jQuery('.moreItems').text('+');
                        break;
                }
                jQuery('#menu_' + KORdata + '_child').toggle();


            });

        });



    </script>
{/literal}

{* this is the pencile banner *}
<div id='mother'></div>
<div id="basePencil" style="width:100%; position:fixed; bottom:0px; z-index:40000;">
    <div id="smallPencil" style="width:1200px; height:35px;  margin:auto; " >
        <div id='div-gpt-ad-1443025537204-14' style='height:35px; width:1200px;'>
            {literal}
                <script type='text/javascript'>
                    googletag.cmd.push(function () {
                        googletag.display('div-gpt-ad-1443025537204-14');
                    });
                </script>
            {/literal}
        </div>
    </div>

    <div id="bigPencil" style="width:1200px; height:245px; display:none; margin:auto;">
        <div id='div-gpt-ad-1443025537204-13' style='height:245px; width:1200px;'>{literal}
            <script type='text/javascript'>
                googletag.cmd.push(function () {
                    googletag.display('div-gpt-ad-1443025537204-13');
                });
            </script>
            {/literal}
            </div>
        </div>
    </div>




    <div id="greyOut" style="display:none; width:100%; height:100%; background-color:#000; opacity:0.8; position:fixed; top:0; left:0; z-index:39999;"></div> 

    <script>
        {literal}

            var screenHeight = jQuery(window).height();
            var screenWidth = jQuery(window).width();
            // jQuery('#mother').html('myWidth= '+screenWidth);
            if (screenWidth >= 1200) {

                jQuery('#baseTabPencil').remove();
                jQuery("#smallPencil").mouseenter(function () {
                    jQuery('#smallPencil').hide();
                    jQuery('#bigPencil').show();

                });

                jQuery("#bigPencil").mouseleave(function () {
                    jQuery('#bigPencil').hide();
                    jQuery('#smallPencil').show();
                });
            }
            if ((screenWidth >= 760) && (screenWidth < 1200)) {
                jQuery('#basePencil').remove();
                var exist = jQuery('#smallTabPencil iframe').length;
                if (exist > 0) {
                    jQuery('#smallTabPencil').mouseenter(function () {
                        jQuery('#smallTabPencil').hide();
                        jQuery('#bigTabPencil').show();
                        jQuery('#greyOut').show();
                    });

                    jQuery('#greyOut, .closeX').click(function () {
                        jQuery('#smallTabPencil').show();
                        jQuery('#bigTabPencil').hide();
                        jQuery('#greyOut').hide();
                    });
                }
            }
            if (screenWidth < 760) {
                jQuery('#basePencil').remove();
                jQuery('#baseTabPencil').remove();
            }
        {/literal}
    </script>  