{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
{/php}
{loadModules position="topmenu"}
{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lanme=$_POST['lname'];
$email=$_POST['emailx'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];
$shop_talk=$_POST['shop_talk'];


if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "44d4473eb6", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
        if($shop_talk=='on'){$retval = $api->listSubscribe( "e2bb863679", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
//echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

}


{/php}

{assign var="oaspos" value="Top1,Right1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/css/417-2013.css" rel="stylesheet" type="text/css" />

<link href="/css/wrapper.css" rel="stylesheet" type="text/css" />
<link href='http://cdn-images.mailchimp.com/embedcode/slim-081711.css' rel='stylesheet' type='text/css'>


{include file="oas_head.tpl"}
<!-- Generated by OpenX 2.6.3 -->
<script type='text/javascript' src='http://badads.com/openx/www/delivery/spcjs.php?id=1'></script>
<script type="text/javascript" src="flowplayer-3.0.2.min.js"></script>
<script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="/js/shadowbox.css">
<script type="text/javascript" src="/js/shadowbox.js"></script>
{literal}
<script type="text/javascript">
Shadowbox.init({
    // let's skip the automatic setup because we don't have any
    // properly configured link elements on the page
    skipSetup: true,
    // include the html player because we want to display some html content
    players: ["html"]
});

function dod(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div style='position:relative;'><img src='http://417mag.com/images/gateway/DOTD_Gateway.gif' width='600' height='400' alt='' /><!-- Begin MailChimp Signup Form --><div id='mc_embed_signup' style='position:absolute; left:20px; top:250px; width:417px; background-color:'><form action='http://417mag.us1.list-manage2.com/subscribe/post?u=a8fed06de0b6d5d67d55d2487&amp;id=50e0803d24' method='post' id='mc-embedded-subscribe-form' name='mc-embedded-subscribe-form' class='validate' target='_blank'><input type='email' value='' name='EMAIL' class='email' id='mce-EMAIL' placeholder='email address' required style='width:100%'><div class='clear'><input type='submit' value='Subscribe' name='subscribe' id='mc-embedded-subscribe' class='button'></div></form></div><!--End mc_embed_signup--></div>",
        player:     "html",
        
        height:     400,
        width:      600
    });

};

function oneair(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a218b5c4&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=246&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a218b5c4' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400,
        width:      600
    });
};
function everkitchen(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a9c5da9d&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=311&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9c5da9d' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     590,
        width:      450
    });
};
    
function ash(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a298dcf1&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=375&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a298dcf1' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     600,
        width:      600
    });
};
</script>
{/literal}
<script src="/js/jquery.instagram.js"></script>
{include file="ga.tpl"}
</head>
{php}
//echo $_SESSION['oneair'];        
if($_SESSION['dod']=="1"){echo '<body onLoad="dod()">';}

elseif($_SESSION['oneair']=="1"){echo '<body onLoad="oneair()">';}
elseif($_SESSION['ek']=="1"){echo '<body onLoad="everkitchen()">';}
elseif($_SESSION['ash1']=="1"){echo '<body onLoad="ash()">';}
else{echo "<body>";}
{/php}
 <div id="page-container">
     
    <div id="fullWall">
<!--/* OpenX Javascript Tag v2.8.9 */-->


</div>
<div class="page-container">
    
	{include file="top-417-2013.tpl"}
	<div id="page-body">
	 	<div id="columns-1-2">
			<div >{loadModules position="top"}</div>
	 		{if $pagecontent<>''}{$pagecontent}{/if}		
			<div id="column-1">
			{loadModules position="left"}
			</div>
			<div id="column-2">							  				  				  		
			{loadModules position="middle"}
			</div>
		</div>			
	 	<div id="column-3" style="margin-right:4px;">				
			{loadModules position="right"}		
		</div>		
	</div>
                
	<div id="bottom">				
			{loadModules position="bottom"}		
	</div>
       
	{include file="footer-417.tpl"}
        </div>
</div></div>
{literal}
<script type='text/javascript'>
     $(document).ready(function(){
    if(($('#fullWall').find('a').length)<1){
        $('#fullWall').remove();
        $('#page-container').css({'width':'100%'});
        }
        });
</script>
{/literal}
</body>
</html>
