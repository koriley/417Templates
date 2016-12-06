{getpagedata id=$Page->pageid}
{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['eAddress'];
     $fname=$_POST['fName'];
     $lname=$_POST['lName'];
     $groups = array();
     $club417 = $_POST['promotions'];
     $bestOfTheWeek = $_POST['417_best_of_the_week'];
     $tableTalk = $_POST['table_talk'];
     $rightAtHome = $_POST['right_at_home'];
     $shopTalk = $_POST['shop_talk'];
     $brideBuzz = $_POST['417_bride_newsletter'];
     $weekendPass = $_POST['weekend_pass'];


   if($email != ''){
     if($club417 == 'on'){ array_push($groups, array('name'=>'417 Magazine Club 417', 'groups'=>'Club 417'));}
     if($bestOfTheWeek == 'on'){ array_push($groups, array('name'=>'417 Magazine Best of the Week', 'groups'=>'Best of the Week'));}
     if($tableTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Table Talk', 'groups'=>'Table Talk'));}
     if($rightAtHome == 'on'){ array_push($groups, array('name'=>'417 Magazine Right at Home', 'groups'=>'Right at Home'));}
     if($shopTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Shop Talk', 'groups'=>'Shop Talk'));}
     if($brideBuzz == 'on'){ array_push($groups, array('name'=>'417 Magazine Bridal Buzz', 'groups'=>'Bridal Buzz'));}
     if($weekendPass == 'on'){ array_push($groups, array('name'=>'417 Magazine Weekend Pass', 'groups'=>'Weekend Pass '));}
     
     
     $merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'GROUPINGS'=>$groups);
    

     $retval = $api->listSubscribe("e24d246ce5", $email, $merge_vars );
/*if ($api->errorCode){
echo "Unable to load listSubscribe()!\n";
echo "\tCode=".$api->errorCode."\n";
echo "\tMsg=".$api->errorMessage."\n";
} else {
echo "Subscribed - look for the confirmation email!\n";
   }*/ }
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
<meta property="og:image" content="{php} echo $mypage; {/php}{if $pagedata.image <> '' }{$pagedata.image}{/if}" />

<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/10mb.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">{literal}stLight.options({publisher: "748dac3f-826a-4195-8fa7-421fabf82ef3", doNotHash: false, doNotCopy: false, hashAddressBar: false});{/literal}</script>
{include file="417ga.tpl"}
<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css">
            <script type="text/javascript" src="/themes/Local/js/shadowbox.js"></script>
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
        
                        height:     400,
                        width:      600
                    });

                };
                    
                function shopTalk(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    '<div style="overflow:hidden"><iframe src="http://www.417mag.com/shopTalkPopUp/" style="width:600px; height:400px; overflow:hidden;"></iframe></div> ',
                        player:     "html",
        
                        height:     400,
                        width:      600
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
			
	 	<div id="columns-1-2-3">
		<div id="breadcrumb">
		{include file="pagetools.tpl"}
                
		</div>
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><a href="https://www.417mag.com/417-Magazine/Store/Subscribe/"><img src="http://www.417mag.com/images/10%20beautiful/2013/10MB_vote_Web2013_landing.jpg" /></a></div>
<div class="left-side">	
    <!--<div class="nav"><table cellpadding="0" cellspacing="0" class="nav"><tr><td><a href="http://www.417mag.com/10-Most-Beautiful-2012/"><img src="#" /></a></td><td><a href="/10-Most-Beautiful-2012/Official-Rules/"><img src="/images/10 beautiful/2012/nav/02_rules.png" /></a></td><td><a href="/10-Most-Beautiful-2012/Details/"><img src="/images/10 beautiful/2012/nav/03_details.png" /></a></td><td><a href="/10-Most-Beautiful-2012/Timeline/"><img src="/images/10 beautiful/2012/nav/04_timeline.png" /></a></td></tr></table></div>-->    
	<div class="nav"><table cellpadding="0" cellspacing="0" class="nav"><tr><td><a href="http://www.417mag.com/10-Most-Beautiful-2014/"><div class="navNominate">FINALISTS</div></a></td><td><a href="/10-Most-Beautiful-2014/Official-Rules/"><div class="navRules">RULES & REGULATIONS</div></a></td><td><a href="/10-Most-Beautiful-2014/Details/"><div class="navDetails">DETAILS</div></a></td><td><a href="/10-Most-Beautiful-2014/Timeline/"><div class="navTimeline">TIMELINE</div></a></td></tr></table></div>	
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
                    {loadModules position="middle"}
</div>
<div class="right-side">
     {loadModules position="right"}
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
</body>
</html>

