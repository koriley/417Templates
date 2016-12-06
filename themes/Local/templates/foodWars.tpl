
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
{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['e-mailx'];
     $fname=$_POST['fname'];
     $lname=$_POST['lname'];
     $groups = array();
     $club417 = $_POST['rules'];
     $bestOfTheWeek = $_POST['BOTW'];
     $tableTalk = $_POST['TT'];
     $rightAtHome = $_POST['right_at_home'];
     $shopTalk = $_POST['ST'];
     $brideBuzz = $_POST['bridal_buzz'];
     $weekendPass = $_POST['WP'];



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

   } 
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
<meta property="og:image" content="http://www.417mag.com/images/foodWars/FoodWars_FBimage.jpg"/>
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

<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/foodWars.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
{include file="417ga.tpl"}
</head>
<body>
    
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div class="page-body">
			
	 	<div id="columns-1-2-3"> 
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
                </div>
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><a href="http://www.417mag.com/foodwars"><img src="http://www.417mag.com/images/foodWars/nachos/FoodWars_Nachos_header.jpg" /></a></div>
                
<div class="leftSide">	
    
<div class="foodWarClient">{if $pagecontent<>''}{eval var=$pagecontent}{/if}
                    <MESSAGES></div>
		
                    {loadModules position="middle"}

</div>
<div class="rightSide">
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
 			
 
{loadModules position="bottom"}
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
    $('.custAdSize').css('background-color', 'transparent');
    
</script>
{/literal}
{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['eAddress'];
     $fname=$_POST['fname'];
     $lname=$_POST['lname'];
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
}
{/php}
</body>
</html>
