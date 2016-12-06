
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
<meta property="og:image" content="http://www.417mag.com/images/wellness%20warrior/2014/WellnessWarrior_VOTE14_button.jpg" />
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script> 
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />


<link href="/themes/Local/css/wellnessWarrior.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
{include file="417ga.tpl"}
</head>
<body>
    <div id="page-container">
     <div id="fullWall">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("liveWell");
</script>
{/literal}
</div>
       
<div class="page-container"> 

{include file="top-417-2013.tpl"}
	<div class="page-body">
			
	 	<div id="columns-1-2-3">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
                </div>
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><a href="http://www.417mag.com/417-Magazine/Wellness-Warrior-2014/"><img src="http://www.417mag.com/images/wellness%20warrior/2014/WellnessWarrior_VOTE14_micro.jpg" /></a></div>
                
<div class="leftSide">	
    
<div class="wellnessCenter">{if $pagecontent<>''}{eval var=$pagecontent}{/if}
                    <MESSAGES>
		
                    {loadModules position="middle"}</div>

</div>

  <!--<div class="rightSide">
     {*loadModules position="right"*}
                    
</div>-->
		
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

</div></div><div>
{literal}
<script type="text/javascript">
//this is jquery to stop the twitter feed from having rounded edges.
$('.twtr-doc').css("-moz-border-radius","0px");
$('.twtr-doc').css("-webkit-border-radius","0px");
$('.twtr-doc').css("border-radius","0px");

$('.twtr-timeline').css("-moz-border-radius","0px");
$('.twtr-timeline').css("-webkit-border-radius","0px");
$('.twtr-timeline').css("border-radius","0px");
    
var savePass = 1;
$(document).ready(function(){
   $('.signHeader2').click(function(){
      $('.signHeader2').hide();
      $('.signHeader1').show(); 
      $('#savePass').attr('value', "0");    
        });
   $('.signHeader1').click(function(){
      $('.signHeader1').hide();
      $('.signHeader2').show();
      $('#savePass').attr('value', "1");     
        });
            
   $('.shopTalk1').click(function(){
      $('.shopTalk1').hide();
      $('.shopTalk2').show(); 
      $('#shopTalk').attr('value', "0");    
        });
   $('.shopTalk2').click(function(){
      $('.shopTalk2').hide();
      $('.shopTalk1').show();
      $('#shopTalk').attr('value', "1");     
        });         

});
    
    
</script>
{/literal}
{php}
require_once 'inc/MCAPI.class.php';
$apikey="843637aeadd6bf4182ce8e79b40a2e81-us1";
$fname=$_POST['fname'];
$lanme=$_POST['lname'];
$email=$_POST['address'];
$promotions=$_POST['promotions'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['417_best_of_the_week'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['417_bride_newsletter'];
$weekend_pass=$_POST['weekend_pass'];
$shop_talk=$_POST['shop_talk'];
$tasty_tuesday=$_POST['tasty_tuesday'];
$right_at_home=$_POST['right_at_home'];
//echo $apikey;
if($email!=''){
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
if($right_at_home=='on'){$retval = $api->listSubscribe( "c03b15e529", $email, $merge_vars );}
                 
echo "<meta http-equiv='refresh' content=\"0;URL='http://www.417mag.com/417-Magazine/Newsletter/'\" />";

}

//echo "this is the new version";
{/php}
</body>
</html>
