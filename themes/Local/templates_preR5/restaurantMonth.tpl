{php}
//DO NOT EDIT THIS TEMPLATE WITH OUT PERMISSION FROM KEVIN ORILEY
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['e-mailx'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];
$tasty_tuesday=$_POST['tasty_tuesday'];

if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "44d4473eb6", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
        if($tasty_tuesday=='on'){$retval = $api->listSubscribe( "de93e6d9fb", $email, $merge_vars );}
echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

}
{/php}
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
{loadModules position="top"}

{assign var="tagSystemName" value="restaurantMonth"}
{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com/images/restaurantMonth/2013/facebook-image.png"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta property="article:publisher" content="https://www.facebook.com/417mag" />
{include file="jqueryLatest.tpl"}
<script type="text/javascript" src="/js/fbCommentsEN.js"></script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/css/restaurant.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/js/popup.js"></script>
{include file="ga.tpl"}
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

                function harem20u30(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=ae7302fc&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=332&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ae7302fc' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     353,
                        width:      825
                    });

                };

                </script>
            {/literal}
            
</head>
{php}
            if($_SESSION['harem2u312']=="1"){echo '<body onLoad="harem20u30()">';}
    
else{echo "<body>";}
    {/php}
      
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div class="page-body">
			
	 	<div id="columns-1-2-3"><br/>
		
                <div class="header"><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/"><img src="/images/restaurantMonth/2013/RM_Web2013_header.png" /></a></div>
                <div class="tabBar"><table cellspacing="0px" cellpadding="0px"><tr><td style="padding-right:10px;"><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/"><img src="http://www.417mag.com/images/restaurantMonth/2013/RM_Web2013_tabhome.jpg" /></a></td><!--<td style="width:106px;"><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/All-Menus/">ALL MENUS<!--<img src="/images/restaurantMonth/2012/all-menu.jpg" style="height:41px;"/></a></td>--><td style="padding-right:10px;"><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/Giftcard/"><img src="http://www.417mag.com/images/restaurantMonth/2013/RM_Web2013_tabgiveaway.jpg" /></a></td><td style="padding-right:10px;"><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/Restaurant-Race/"><img src="http://www.417mag.com/images/restaurantMonth/2013/RM_Web2013_tabRR.jpg" /></a></td><td><a href="http://www.417mag.com/417-Magazine/Restaurant-Month-2013/All-Menus/"><img src="http://www.417mag.com/images/restaurantMonth/2013/RM_Web2013_tabmenus.jpg" /></a></td></tr></table></div>
<div class="left-side">	
    {loadModules position="left"}


</div>
<div class="right-side">
     {if $pagecontent<>''}{eval var=$pagecontent}{/if}
                    <MESSAGES>
		
                    {loadModules position="middle"}
                    
</div>
  
		
</div>		 
             
 <!-- facebook stuff -->               
<div class="fb-outline">
 

 <div id="fb-root"></div>
    {literal}
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId  : '134468316683025',
          status : true, // check login status
          cookie : true, // enable cookies to allow the server to access the session
          xfbml  : true  // parse XFBML
        });

        /* --- Email Notifications begin --- */

        var fromMail = 'fb-comment@417mag.com';
        var toMail = 'fb-comments@417mag.com';
        var sendPath = 'http://www.gonsave.com/email/fbCommentsEN.php';
        fbCommentsEN(fromMail,toMail,sendPath);

        /* --- Email Notifications end --- */

      };

    (function() {
        var e = document.createElement('script'); e.async = true;
        e.src = document.location.protocol +
          '//connect.facebook.net/en_US/all.js#xfbml=1&appId=134468316683025';
        document.getElementById('fb-root').appendChild(e);
      }());
    </script>
    {/literal}
<fb:comments href="{php} echo $mypage; {/php}" class="fbcomments" title="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"></fb:comments>
 <!-- End FACEBOOK -->		
</div>
 			
 

{include file="footer-417.tpl"}

</div>
<script type="text/javascript">
//this is jquery to stop the twitter feed from having rounded edges.
$('.twtr-doc').css("-moz-border-radius","0px");
$('.twtr-doc').css("-webkit-border-radius","0px");
$('.twtr-doc').css("border-radius","0px");

$('.twtr-timeline').css("-moz-border-radius","0px");
$('.twtr-timeline').css("-webkit-border-radius","0px");
$('.twtr-timeline').css("border-radius","0px");

</script>
</body>
</html>

