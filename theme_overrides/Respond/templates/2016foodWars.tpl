{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417foodwars"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addcss file="2016foodWars.css" order="900"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        <div id="publication-container" class="page-container container-fluid">


            {*include file='silverWallSpa.tpl'*}
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
                    <div style="width:100%; height:2px; background-color:#EF4F23;"></div>


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
//julis js for placement testing
jQuery('.juliTest1').css({ 'margin-top':'-10%'});
                }
            }
            // Execute on load
            checkWidth();
            // Bind event listener
            jQuery(window).resize(checkWidth);


          
            


        });
        
        var contestName; //this var captures the winning name
         function reset(){
             //When you select a new winner this will clear out your past choices.
        jQuery('.like').each(function(){
             contestName = '';
            jQuery(this).hide();
            jQuery('.unlike').each(function(){
                jQuery(this).show();
            });
            jQuery('input[name="resturant"]').each(function(){
                jQuery(this).prop('checked', false);
            });
            
        });
    }
        jQuery('.image-container img').css({'width':'400px;'}); //trying to manually set the image width to 400px
        
            jQuery('input[name="resturant"]').each(function(){
                //This function is getting rid of the input radio button and replacing it with the vote image.
                jQuery(this).hide();
                contestName = jQuery(this).attr('data-company');
                jQuery(this).attr('value',contestName);
                jQuery(this).after('<img src="/images/foodWars/2016/May_16/FoodWars_May16_Uncheck.png" class="unlike '+contestName+'_unlike" data-company="'+contestName+'" />');
                jQuery(this).after('<img src="/images/foodWars/2016/May_16/FoodWars_May16_Check.png" class="like '+contestName+'_like" data-company="'+contestName+'" style="display:none" />');
            });
            
             jQuery('.unlike').click(function(){
                 //this is triggered if you click an unliked button
                 reset();//reset all the 'likes'
             contestName = jQuery(this).attr('data-company');
            jQuery(this).toggle();
            jQuery('.'+contestName+'_like').toggle();
          //console.log(contestName);
            jQuery('input[value="'+contestName+'"').prop('checked', true); //set the check button for the godengo form
        });
        
        jQuery('.like').click(function(){
            //triggered if the like (your vote) is clicked, we want to unlike it.
            reset(); //sets everything to unliked.
             
        });
        
      
    
    //this next block of code is the css to change the look of the submit button.
    jQuery('#formSubmit').css({'background-image':'url("https://www.417mag.com/images/foodWars/2016/May_16/FoodWars_May16_SubmitVote.png")','cursor':'pointer', 'width':'300px', 'height':'300px', 'background-color':'transparent', 'border':'0px'});
    jQuery('#formSubmit').attr('value','');
    jQuery('input[type="submit"]:hover').css({'background-position':'0'});
       
    
    jQuery('#formSubmit').click(function(e){
        //this is where any silverpop info can go
        //triggered when the submit button is hit.
//e.preventDefault();
        var url = 'http://417mag.mkt7054.com/CutestBaby/CutestBabyVoting';
        var fn = jQuery('input[name="firstName"]').val();
        var ln = jQuery('input[name="lastName"]').val();
        var em = jQuery('input[name="email"]').val();
        var subscribe = jQuery('input[name="subscribe"]:checked').val();
        var nl = jQuery('input[name="club417"]:checked').val();
        var sp = 'yes';
        jQuery.post(url, {sp_exp: sp, '417 Magazine Club 417': nl, PrintSubscriber: subscribe, Email: em, 'First Name': fn, 'Last Name': ln});
        
    });
   

    {/literal}    
</script>     



