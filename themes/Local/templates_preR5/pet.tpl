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
<meta property="og:image" content="http://417mag.com/images/pet/NextTopDog_VOTE_button.jpg"/>
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
<link href="/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/css/pet.css" rel="stylesheet" type="text/css" />
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

                function petWare(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a7c9ccda&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=364&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a7c9ccda' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     600,
                        width:      600
                    });

                };

                </script>
            {/literal}
</head>
{php}
            if($_SESSION['petware']=="1"){echo '<body onLoad="petWare()">';}
    
else{echo "<body>";}
    {/php}
   
<div id="page-container">

{include file="top-417-2010.tpl"}
	<div class="page-body">
			
	 	<div id="columns-1-2-3">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
                
		</div>
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><img src="/images/pet/NextTopDog_Header.png" /></div>
                
<div class="left-side">	
    <div class="nav"><table cellpadding="0" cellspacing="0" class="nav"><tr><td><a href="http://www.417mag.com/417-Magazine/top-dog-2012/"><img src="/images/pet/enter.png" /></a></td><td><a href="/417-Magazine/top-dog-2012/donations/"><img src="/images/pet/donation.png" /></a></td><td><a href="/417-Magazine/top-dog-2012/details/"><img src="/images/pet/details.png" /></a></td><td><a href="/417-Magazine/top-dog-2012/rules/"><img src="/images/pet/rules.png" /></a></td></tr></table></div>    
		
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
                    {loadModules position="middle"}
</div>
<div class="right-side">
     {loadModules position="right"}
     
 </div> 
		
</div>		 
        <div class="rightwallpaperwrap"><div id="rightwallpaper">        
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
<fb:comments href="{php} echo $mypage; {/php}" class="fbcomments" title="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"></fb:comments>
 <!-- End FACEBOOK -->		
</div>
 			
 

{include file="footer-417.tpl"}

</div>
{literal}
<script type="text/javascript">
$('#subButton').attr('value', "");
    $('#backBone').attr('value', "");
$(document).ready(function(){
   $('#subButton').hover(
     function () { 
       $('#subButton').css("background-image","url('/images/pet/submit2.png')");
     },
     function () {    
       $('#subButton').css("background-image","url('/417-Magazine/Top-Dog/submit.png')");  
    });
    $('#backBone').hover(
     function () { 
       $('#backBone').css("background-image","url('/images/pet/backBone2.png')");
     },
     function () {    
       $('#backBone').css("background-image","url('/images/pet/backBone1.png')");  
    });    
});     
</script>
{/literal}
</body>
</html>

