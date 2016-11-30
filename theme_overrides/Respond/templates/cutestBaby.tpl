{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417cutestbaby"}
<!DOCTYPE html>
<html lang="en" >
<head>
{include file="2014head.tpl"}
{addcss file="cutestBaby.css" order="90000000000"}
{literal}
    <!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53711e466295c58e" async="async"></script>

{/literal}    
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
    <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
    {*include file="micrositeStickyHeader.tpl"*}
    <div class="screenWidth"></div>
    

<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
        
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                	{assign var="respond_containers" value="12,12"}
            		{loadModules position="topleft"}
                        
                        
                </div>     
    </div>  
   <div id="stickyalias" class="jumps">
             
        
        </div>
        <div class="row-fluid" id="LeftandRight">
                <div class="column-left respond-container span8" id="">
                	{assign var="respond_containers" value="12,8"}
            		{loadModules position="left"}
                        
                        {if $pagecontent<>''}<div id="mainBody" >
                             <div style="width:100%; background-color:white; ">
                                
                              

                            </div>
                            {eval var=$pagecontent}</div>{/if}
		<MESSAGES>
                    {loadModules position="bottomcenter"}
                        
                </div>
                <div class="column-right respond-container span4" id="">
                    {assign var="respond_containers" value="12,4"}
                    {loadModules position="right"}
                   
                    
                	
            		
                </div>
            
            
    </div> 
                    
                    <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="">
                	{assign var="respond_containers" value="12,12"}
                        <div style="width:100%; height:25px; background-color:#eb7394;"></div>
                        
                        
                </div>     
    </div> 
                  
                        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span12" id="" style='text-align: center;'>
                	{assign var="respond_containers" value="12,12"}
                     {include file="sponsorship.tpl"}
                        
                        
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
            
          //these are all the menus on the side bar for mobile
              //var screenWidth = jQuery(window).width();
             jQuery('.mobileButton').toggle(function(){
               jQuery('.mobileNav').show();
        }, function(){
               jQuery('.mobileNav').hide();
        });     
        
        
           
    
    jQuery(document).ready(function() {
    // Optimalisation: Store the references outside the event handler:
    var $window = jQuery(window);
    var $pane = jQuery('#pane1');

    function checkWidth() {
        var windowsize = $window.width();
        //jQuery('.screenWidth').html(windowsize);
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
        
       
});

//This is the SilverPop form code to send collected information to the database.


/*jQuery('#buttonSubmit').click(function(e){
    
var url = 'http://417mag.mkt7054.com/CutestBaby/CuteBabyNominations';
var sp = 'yes';
var fName = jQuery('input[name="nominatorFirst"]').val();
var lName = jQuery('input[name="nominatorLast"]').val();
var email = jQuery('input[name="email"]').val();
var club = jQuery('input[name="club417"]').prop('checked');
if(club === true){
    club = "yes";
}else{
    club = "no";
}
var printSub = jQuery('select[name="subscribe"]').val();

//alert(url+' - '+sp+' - '+fName+' - '+lName+' - '+email+' - '+club+' - '+printSub);
jQuery.post(url,{sp_exp:sp,'First Name':fName, 'Last Name':lName,'PrintSubscriber':printSub,'Email':email,'417 Magazine Club 417':club});
});*/

    {/literal}    
</script>     



