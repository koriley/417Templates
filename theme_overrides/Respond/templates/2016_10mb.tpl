{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="41710MB"}
<!DOCTYPE html>
<html lang="en" >
    <head>
        {include file="2014head.tpl"}
        {addcss file="10mb.css" order="900"}
        {literal}
            <!-- Go to www.addthis.com/dashboard to customize your tools -->
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53711e466295c58e" async="async"></script>

        {/literal}    
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
        {include file="micrositeStickyHeader.tpl"}
        <div class="screenWidth"></div>


        <div id="publication-container" class="page-container container-fluid">
            {*include file="breadcrumb.tpl"*}
            {* PAGE CONTENT AND TITLE*}
            {assign var="showpagetools" value=false}
            {pagetools}
            {if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
                {assign var="showpagetools" value=true}
            {/if}
            <div class="sizeMe"></div>
            <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    {loadModules position="top"}
                    {if $pagecontent<>''}<div id="mainBody" >
                            <div style="width:100%; background-color:white; ">



                            </div>
                            {eval var=$pagecontent}</div>{/if}

                        <MESSAGES>
                            {loadModules position="middle"}

                    </div>


                </div>     
            </div>  







            <div style="text-align:center;">{include file="footboard.tpl"}</div> 
            {include file="bottom.tpl"}




        </body>
    </html>

    <script>
        {literal}
            //jQuery('.page-container .respond-container').css('border-right', '2px solid black');
            jQuery('#clickMe').css('border-bottom', '2px solid black');
            jQuery('.row-fluid').css('border-bottom', '2px solid black');

            //these are all the menus on the side bar for mobile
            //var screenWidth = jQuery(window).width();
            jQuery('.mobileButton').toggle(function () {
                jQuery('.mobileNav').show();
            }, function () {
                jQuery('.mobileNav').hide();
            });




            jQuery(document).ready(function () {
                
                /*
                 * This is the silverpop form submit 
                 * 
                 * must have the godnego form to see what field names are
                 * 
                 * @var url -> the silverpop form url supplied from sp
                 * @var fname -> user first name taken from godengo from
                 * @var lname -> user lastname taken from godengo from
                 * @var email -> user email taken from godengo from
                 * @var pSubscribe -> if the user is a print subscriber taken from godengo from
                 * @var shopTalk -> yes/no subscribe to shoptalk taken from godengo from
                 * @var sp_exp -> always = yes
                 */
                
                jQuery('input[name="submit"]').on('click tap', function(){
                    var url ='http://417mag.mkt7054.com/10MB/10MB2016';
                var fname =jQuery('input[name="fName"]').val();
                var lname = jQuery('input[name="lName"]').val();
                var email = jQuery('input[name="email"]').val();
                var pSubscribe = jQuery('select[name="printSubscriber"]').val();
                var shopTalk = jQuery('input[name="shopTalk"]').is('checked');
                var sp_exp ='yes';
                
                if((shopTalk === 'false') || (shopTalk === 'undefined')){
                    shopTalk = 'no';
                }else{
                    shopTalk = 'yes';
                }
                //alert( fname+' '+lname+' '+email+' '+pSubscribe+' '+shopTalk);
                jQuery.post(url, {'First Name':fname, 'Last Name':lname, 'Email':email, 'PrintSubscriber':pSubscribe, '417 Magazine Shop Talk':shopTalk, 'sp_exp':sp_exp});
                });
                 
                
                
                // Optimalisation: Store the references outside the event handler:
                var $window = jQuery(window);
                var $pane = jQuery('#pane1');

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
                jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com' + myUrl + '%23.UTpMJRuqbfc.facebook"><img alt="" src="/images/10 beautiful/2015/10MB-15-MicrositeTemplate_FB.png" /></a>');

                jQuery('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417cutestbaby" class="twitter-hashtag-button"><img alt="" src="/images/10 beautiful/2015/10MB-15-MicrositeTemplate_twitter.png" /></a>');
                jQuery('.popup').click(function (event) {
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



