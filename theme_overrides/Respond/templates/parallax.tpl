{addjs file="pageLayout.js" position="footer"}
{addjs file="parallax.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
<link href="/themes/Local/css/bootstrap3.min.css" rel="stylesheet" media="screen">


<link href="/themes/Local/css/whiskey2014.css" rel="stylesheet" type="text/css" />
{*addjs file="bootstrap-overrides.js" order=51 position="footer"*}
{addjs file="localscroll-min.js" position="footer"}

<link href="/themes/Local/css/whiskey2014.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700|Lobster|Homemade+Apple|Special+Elite' rel='stylesheet' type='text/css'>
{addcss file="parallax.css" order="900"}
</head>
<body>
{*include file="2014Top.tpl"*}

<div class="topFix" id="stickyheaderReal1" style="display:block;  width:100%;">
    <div class="dim">
    <div class="center headStyle" style="margin-top:0;margin-bottom:0;">
<div class="row">
<h2 class="span2">OVERVIEW</h2>

<h2 class="span2">SPONSORS</h2>

<h2 class="span2">SEMINARS</h2>

<h2 class="span2">SPIRITS LIST</h2>

<h2 class="span2">GALLERY</h2>

<h2 class="span2">FAQ</h2>
</div>
    </div></div></div>
<div class="navSpace"></div>   
        
                	<div id="mainBody">
                            

                            
                            {eval var=$pagecontent}</div>
		<MESSAGES>
                        
                

        
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
              var screenWidth = jQuery(window).width();
              var screenHeight = jQuery(window).height();
                  
             
            // jQuery('.parallax-window').css({'width': '100%'});       
               jQuery('#header').css({'height':screenHeight+'px'});   
               jQuery('.parallax-window').wrap('<div class="large-container">');
               jQuery('.large-container').css({'width':'100%'});
               
               jQuery('.center').wrap('<div class="container"><div class="row"><div class="span12">');
                      jQuery('.container-custom').css({'width':'1400px', 'margin':'auto'});
            
            
            
               
              
      
    {/literal}    
</script>