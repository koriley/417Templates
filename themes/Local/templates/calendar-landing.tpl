{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
{/php}
{loadModules position="topmenu"}
 

{assign var="oaspos" value="Top1,x01"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" 
content="{$Page->description|default:$issue.description|default:$publication.description}" 
/>
<meta name="Keywords" 
content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" 
/>
<meta name="google-site-verification" 
content="tHI8Q2s6H-SwQvs9WPDmo8k1onlnh0TPwKqJM0o3Gzs" /> {addjs file="prototype.js"} {addjs file="effects.js"} <script type="text/javascript" src="/themes/Local/js/photoContainerScaler.js"></script>
<script type="text/javascript" language="JavaScript" 
src="/core/media/js/validate.js"></script>
<script type="text/javascript" language="JavaScript" 
src="/core/media/js/rivista.js"></script>
<script type="text/javascript" language="JavaScript" 
src="/themes/Local/js/xml.js"></script>
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/calendar-landing.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css" /> 
    <script type="text/javascript" src="/themes/Local/js/shadowbox.js"></script>
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
 {literal} <script type="text/javascript"> Shadowbox.init({
     // let's skip the automatic setup because we don't have any
     // properly configured link elements on the page
     skipSetup: true,
     // include the html player because we want to display some html content
     players: ["html"]
});

function msu(){

     // open a welcome message as soon as the window loads
     Shadowbox.open({
         content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a9b29b86&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=306&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9b29b86' border='0' alt='' /></a></div>",
         player:     "html",

         height:     600,
         width:      450
     });

};
</script>
{/literal}
{include file="417ga.tpl"}
</head>
{php}
//echo $_SESSION['oneair'];
  if($_SESSION['msu']=="1"){echo '<body onLoad="msu()">';}

else{echo '<body>';}
{/php}

<div id="page-container">
     
         <div id="fullWall">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("wallpaper");
</script>
{/literal}
</div>

     
<div class="page-container">
     {include file="top-417-2013.tpl"}
<div id="page-body">
<div style="clear:both; padding-bottom:5px;" >{loadModules position="top"}</div> 


              {if $pagecontent<>''}{$pagecontent}{/if}
<div id="column-1">
             {loadModules position="left"} </div> 
             <div id="column-2">
             {loadModules position="middle"} </div>  
             <div id="column-3">
             {loadModules position="right"} </div> </div> 
             <div id="bottom">
             {loadModules position="bottom"} </div>
     {include file="footer-417.tpl"}
</div></div>
{literal}
<script type='text/javascript'>
    jQuery(document).ready(function(){
    if((jQuery('#fullWall').find('iframe').length)<1){
        jQuery('#fullWall').remove();
        jQuery('#page-container').css({'width':'100%'});
        }
        }); 
</script>
{/literal}
</body>
</html>
