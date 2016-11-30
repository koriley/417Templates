{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417coverdog"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addcss file="coverdog.css" order="900"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}
        <div class="headerColor" style="width:100%; position:absolute; background-color:#2C8C7D;"></div>
        <div id="publication-container" class="page-container container-fluid">


            {*include file='silverWallSpa.tpl'*}
            <div class="header row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    {loadModules position="topleft"}

                </div>     
            </div>  

            <div class="row-fluid" id="LeftandRight">
                <div class="column-left respond-container span8" id="">
                    {assign var="respond_containers" value="12,8"}
                    {loadModules position="left"}
                    <div id="pagetools">{*include file="pagetools.tpl"*}</div>
                    {if $pagecontent<>''}<div id="mainBody">{eval var=$pagecontent}</div>{/if}
                    <MESSAGES>
                </div>
            
                <div class="column-top respond-container span4">

                    {assign var="respond_containers" value="12,4"}
                    {loadModules position="right"}
                </div>
            </div>  

            <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                    {assign var="respond_containers" value="12,12"}
                    <div style="width:100%; height:2px; background-color:#5FA89C;"></div>


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
        
        var headImageSize = jQuery('.header img').height();
        
        jQuery('.headerColor').css({'height':headImageSize+'px'});
 //jQuery.ajaxSetup({ cache: false }); //this is used to stop browsers from caching load functions.
        //these are all the menus on the side bar for mobile
     jQuery(document).ready(function() {
            // Optimalisation: Store the references outside the event handler:
            var $window = jQuery(window);
            var $pane = jQuery('#pane1');
            
            function checkWidth() {
                var windowsize = $window.width();
                //jQuery('.sizeMe').html(windowsize);
                if (windowsize <= 750) {
                    //if the window is greater than 440px wide then turn on jScrollPane..
                   // jQuery('#desktopHeader').hide();
                  //  jQuery('#phoneHeader').show();

                }
                if (windowsize > 750) {
                    //if the window is greater than 440px wide then turn on jScrollPane..
                  //  jQuery('#desktopHeader').show();
                  //  jQuery('#phoneHeader').hide();

                }
            }
            // Execute on load
            checkWidth();
            // Bind event listener
            jQuery(window).resize(checkWidth);


           //this next block of code is the css to change the look of the submit button.
           jQuery('input[type="submit').addClass('formSubmit');
    jQuery('.formSubmit').css({'background-image':'url("https://www.417mag.com/images/coverDog/2016/417CoverDog_SubmitVoteButton.png")','cursor':'pointer', 'width':'303px', 'height':'136px', 'background-color':'transparent', 'border':'0px'});
    jQuery('.formSubmit').attr('value','');
    

          
        });  
jQuery('input[type="submit"]').hover().css({'background-position':'0px'});

      
    var bbname;
    var myBbName;
    jQuery('input[name="dog"]').each(function() {
        //jQuery(this).css({'background-image':'images/hearts/unlike.png'});
        jQuery(this).hide();
        //jQuery(this).attr('checked', false);
        bbname = jQuery(this).attr('value');
        jQuery(this).attr('name', bbname);
        jQuery(this).attr('id', bbname);
        jQuery(this).after('<img src="/images/coverDog/2016/417CoverDog_Vote_Before.png" class="unlike ' + bbname + '_unlike" data-baby="' + bbname + '" />');
        jQuery(this).after('<img src="/images/coverDog/2016/417CoverDog_Vote_After.png" class="like ' + bbname + '_like" data-baby="' + bbname + '" style="display:none" />');
    });

    jQuery('#mySubmit').css({'background-image': 'url("https://www.417mag.com/Cutest-Baby/BBvote.png")', 'cursor': 'pointer', 'width': '300px', 'height': '47px'});
    jQuery('#mySubmit').attr('value', '');
    jQuery('input[type="submit"]:hover').css({'background-position': '0'});
    jQuery('.unlike').on("click tap",function() {
        myBbName = jQuery(this).attr('data-baby');
        jQuery(this).toggle();
        jQuery('.' + myBbName + '_like').toggle();

       // jQuery('input[value="' + myBbName + '"').attr('checked', true);
       // jQuery('input[value="' + myBbName + '"').prop("checked",true).change();
        
        document.getElementById(myBbName).checked = true;
    });

    jQuery('.like').on("click tap",function() {
        myBbName = jQuery(this).attr('data-baby');
        jQuery(this).toggle();
        jQuery('.' + myBbName + '_unlike').toggle();

        //jQuery('input[value="' + myBbName + '"').attr('checked', false);
        //jQuery('input[value="' + myBbName + '"').prop("checked", false).change();
        document.getElementById(myBbName).checked = false;
    });

    

    jQuery('#mySubmit').on("click touchend",function(e) {
//e.preventDefault();


        var url = 'http://417mag.mkt7054.com/CutestBaby/CutestBabyVoting';
        var fn = jQuery('input[name="firstName"]').val();
        var ln = jQuery('input[name="lastName"]').val();
        var em = jQuery('input[name="email"').val();
        var subscribe = jQuery('input[name="subscribe"]:checked').val();
        var nl = jQuery('input[name="club417"]:checked').val();
        var sp = 'yes';
        jQuery.post(url, {sp_exp: sp, '417 Magazine Club 417': nl, PrintSubscriber: subscribe, Email: em, 'First Name': fn, 'Last Name': ln});

    });
      
    
    
    
    {/literal}    
</script>     



