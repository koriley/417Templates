{php}
//DO NOT EDIT THIS TEMPLATE WITH OUT PERMISSION FROM KEVIN ORILEY
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
$tasty_tuesday=$_POST['tasty_tuesday'];

if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($shop_talk=='on'){$retval = $api->listSubscribe( "e2bb863679", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
if($tasty_tuesday=='on'){$retval = $api->listSubscribe( "de93e6d9fb", $email, $merge_vars );}
//echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

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
{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
        <meta property="og:image" content="http://www.417mag.com/images/elements/logo.jpg"/>
        <meta property="og:type" content="city"/>
        <meta property="og:url" content="{php}echo $mypage; {/php}"/>
        <meta property="og:site_name" content="417 Magazine"/>
        <meta property="fb:admins" content="571284244,100000807778635"/>
        <meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
        <meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
        <meta property="fb:app_id" content="134468316683025"/>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="/js/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
        <link href="/css/417-2013.css" rel="stylesheet" type="text/css" />
        <link href="/css/417-index.css" rel="stylesheet" type="text/css" />
        <link href="/css/livingwell.css" rel="stylesheet" type="text/css" />
        {include file="oas_head.tpl"}
        <script type="text/javascript" src="/js/popup.js"></script>
        <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
        {include file="ga.tpl"}
        <link rel="stylesheet" type="text/css" href="/js/shadowbox.css">
            <script type="text/javascript" src="/js/shadowbox.js"></script>
           
    </head>
    <body>
    <div id="page-container">

        {include file="top-417-2013.tpl"}
        

            <div id="columns-1-2-3">
                <div id="breadcrumb">
                    {include file="pagetools.tpl"}

                </div>
                <!-- <h1>{$Page->title}</h1> -->
                
                   <div class="marketRight-side">
                {loadModules position="right"}
                <div style="height:25px; width:300px;"><!-- this is a spacer div --></div>
            </div> 
                
            <div class="marketLeft-side">
                <div class="header"><a href="http://www.417mag.com/livewell/"><img src="http://www.417mag.com/images/livewell/2013/header.jpg" /></a>
                   
                </div>
                <div class="topNav"><div class="topNavCenter" style=""><a href="http://www.417mag.com/livewell/"><div class="topNavOverview">Event Overview</div></a><a href="http://www.417mag.com/live-well-2014/schedule-of-sessions/"><div class="topNavSessions">Schedule of Sessions</div></a><a href="http://www.417mag.com/live-well-2014/Marketplace/"><div class="topNavMarket">Marketplace</div></a><a href="http://www.417mag.com/live-well-2014/buy-tickets/"><div class="topNavTickets">Tickets</div></a><a href="http://www.417mag.com/live-well-2014/parking/"><div class="topNavFAQ">FAQ & Parking Info</div></a></div></div>
                
                <div class="marketLeftContent">    
            {if $pagecontent<>''}{eval var=$pagecontent}{/if}
                
                <MESSAGES>
                    </div>
                    {loadModules position="middle"}
                    <!-- facebook stuff -->               
<div class="fb-outline" style="background-color:#fff;">
 

 <div id="fb-root" style="background-color:#fff;"></div>
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
        var sendPath = 'http://www.badads.com/email/fbCommentsEN.php';
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
<fb:comments  style="background-color:#fff; margin-left:20px;" href="{php} echo $mypage; {/php}" class="fbcomments" title="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"></fb:comments>
 <!-- End FACEBOOK -->		
</div>
            </div>
            
             
            

        		 

       


           
              
        {include file="footer-417.tpl"}
        
       </div> </div>
    </body>
</html>
        
        
        
        
        
	
	
	


