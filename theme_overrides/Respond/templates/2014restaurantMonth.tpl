{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
{addcss file="restaurant.css" order="99999999999"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014Top.tpl"}

<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container">
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span3">
                	{assign var="respond_containers" value="12,3"}
            		{loadModules position="left"}
                        
                </div>
                <div class="column-middle respond-container span9 hidden-phone">
                    {assign var="respond_containers" value="12,9"}
                    {loadModules position="right"}
                    {if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
                	
            		
                </div>
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
            
            
          //these are all the menus on the side bar for mobile
              var screenWidth = jQuery(window).width();
                  
             if(screenWidth <=720){
                  
                  jQuery('.list a').each(function(){
                      jQuery(this).contents().unwrap(); //removes all the links, leaving their text
                  });
                  
                  jQuery('.restList div').each(function(){
                      var classes = jQuery(this).attr('class').split(' ')[1]; //looks at each div under the restLis, and gets their second class
                      jQuery('#'+classes).css({'background-color':'white', 'color':'black', 'height':'400px'}); //looks for ids that match the class name and sets some css
        
                      jQuery('#'+classes).appendTo('.'+classes); //moves the matching divs into the correct class
                      jQuery('.'+classes).click(function(){ //checks for a click or touch on mobile device
                         var $this = jQuery(this).parent().find('#'+classes);//loads $this with where we are exactly in the DOM
                         //console.log($this);
                          jQuery('.listText').children().not($this).hide(); //hides any element meeing the criteria that is not $this
                      $this.toggle(); // shows $this
                      
                           
                        });
                       
                  });
                  
                  
                 
              }          
            
    {/literal}    
</script>     
