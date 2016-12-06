
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
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/cache/2e0c27103f1f24a0c04dc38f8944b88c.jpeg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
{include file="jqueryLatest.tpl"}
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script> 
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/boutique.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
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
                        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=ae7302fc&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=332&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ae7302fc' border='0' alt='' /></a></div>",
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
			
	 	<div id="columns-1-2-3">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
                </div>
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><img src="/images/boutiqueWeek/2013/BoutiqeWeek_header.gif" /></div>
                <div class="tabBar"><table><tr><td><a href="/BoutiqueWeek/"><div class="home"></div></a></td><td><a href="/417-Magazine/BoutiqueWeek/Events/"><div class="events"></div></a></td><td><a href="/417-Magazine/BoutiqueWeek/Map/"><div class="map"></div></a></td><td><a href="/417-Magazine/BoutiqueWeek/UltimateShoppingGiveaway/"><div class="giveaway"></div></a></td></tr></table></div>
<div class="left-side">	
    {loadModules position="left"}


</div>
<div class="right-side">
     {if $pagecontent<>''}{eval var=$pagecontent}{/if}
                    <MESSAGES>
		
                    {loadModules position="middle"}
                    
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
                    
</div>
  
		
</div>		 
             
 
 			
 

{include file="footer-417.tpl"}

</div>
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
//DO NOT EDIT THIS TEMPLATE WITH OUT PERMISSION FROM KEVIN ORILEY
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['email'];
$savePass=$_POST['savePass'];
$shopTalk=$_POST['shopTalk'];
$sa = $_POST['streetAddress'];
$csz = $_POST['cityStateZip'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];
$tasty_tuesday=$_POST['tasty_tuesday'];

if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname);	
	$retval = $api->listSubscribe("678de3c3b2", $email, $merge_vars);
    

}
 
	/*if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "44d4473eb6", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
        if($tasty_tuesday=='on'){$retval = $api->listSubscribe( "de93e6d9fb", $email, $merge_vars );}
echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";
*/

{/php}
</body>
</html>