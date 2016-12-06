{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];

{/php}
{loadModules position="pagetop"}

{php}

function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}
$mypage=curPageURL();
//$Page->assign('togo', '$mypage');
//echo $mypage;
{/php}
{assign var="oaspos" value="Top1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/Bride-417.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="jqueryLatest.tpl"}
<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css" />
<script type="text/javascript" src="/themes/Local/js/shadowbox.js"></script>
<link href="/themes/Local/css/wrapperBride.css" rel="stylesheet" type="text/css" />
{literal}
<script type="text/javascript">
    
Shadowbox.init({
    // let's skip the automatic setup because we don't have any
    // properly configured link elements on the page
    skipSetup: true,
    // include the html player because we want to display some html content
    players: ["html"]
});

function enchant(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a9dff847&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=827&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9dff847' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};


</script>
{/literal}
</head>
{php}
 if($_SESSION['enchant']=="1"){echo '<body onLoad="enchant()">';}
else{echo "<body>";}
    {/php}
    
<!--<div id="page-container">
    
    <div id="fullWall">
        {*literal*}
<script type='text/javascript'>
//GA_googleFillSlot("brideWallpaper");
</script>
{*/literal*}
</div>-->
<div class="page-container"> 

{include file="top-bride.tpl"}
{*}<div style="width:728px; height:90px; margin:auto; margin-top:40px; margin-bottom:40px;"><script>{literal}GA_googleFillSlot("bride_Leaderboard");{/literal}</script></div>{*}
	<div id="page-body">
              <div id="column-1">				
			{loadModules position="left"}		
		</div>
	 	<div id="columns-2-3">
                     <div id="home-splash">{loadModules position="top"}</div>
	 		<div id="column-2">
			{loadModules position="middle"}
                      
			</div>
			<div id="column-3">							  				  				  		
			{loadModules position="right"}
			</div>
		</div>			
	 	
       </div>
{include file="footer-bride.tpl"}
</div>


<!--wrapper close-->
</body>
</html>
