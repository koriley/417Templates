{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['NominatorEmail'];
$deal_on=$_POST['Subscribe'];
echo $deal_on;
if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	
	if($deal_on=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	

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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/medicalSpa/MedicalSpaMonth_Web2012_island.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="571284244"/>
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

<link href="/themes/Local/css/medicalSpa.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body">
			
	 	<div id="columns-1-2-3">
		
<div class="header">		
		<div style="background-color:white"><a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/"><img src="http://www.417mag.com/images/medicalSpa/2014/MedicalSpaMonth_Web2014_header.gif" width="100%" /></a> </div></div>
<div class="background">
                <div class="tableLogo">
<table style="height:100%">
    <tr>
    <td>
           <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/Acacia-Spa/"><div style="width:225px; margin-left:20px;"><img src="http://www.417mag.com/images/medicalSpa/2014/acacia.jpg" style="width:200px;" /></div></a>
    </td>
 </tr>
    <tr>
    <td>
          <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/The-Center-For-Plastic-Surgery-Spa/"><div style="width:225px; margin-left:20px;"> <img src="/images/medicalSpa/2014/Center-for-plastic-surgery-logo.jpg" style="width:200px;" /></div></a>
    </td>
 </tr>
    <tr>
    <td>
          <a href="http://417mag.com/417-Magazine/Medical-Spa-Month/Crighton-Aesthetic-Studio/"><div style="width:225px; margin-left:20px;"> <img src="/images/medicalSpa/2014/Crighton.jpg" style="width:200px;"/></div></a>
    </td>
 </tr>
    <tr>
    <td>
           <a href=" http://www.417mag.com//417-Magazine/Medical-Spa-Month/DermaHealth/"><div style="width:225px; margin-left:5px;"><img src="http://www.417mag.com/images/medicalSpa/2014/DermaHealth_Color.jpg" style=width:230px;" /></div></a>
    </td>
 </tr>
    <tr>
    <td>
           <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/Garrison-Plastic-Surgery"><div style="width:225px; margin-left:5px;"><img src="http://www.417mag.com/images/medicalSpa/2014/GarrisonLogo.jpg" style=width:230px;" /></div></a>
    </td>
 </tr>
    <tr>
    <td>
           <a href="http://417mag.com/417-Magazine/Medical-Spa-Month/Grove-Spa/"><div style="width:225px; margin-left:5px;"><img src="http://www.417mag.com/images/medicalSpa/2014/GroveSpa_logoWEB.jpg" style=width:230px;" /></div></a>
    </td>
 </tr>
    <tr>
    <td>
           <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/Mercy-Clinic-Medical-Spa/"><div style="width:225px; margin-left:5px;"><img src="http://www.417mag.com/images/medicalSpa/2014/MercyDrShah.jpg" style=width:230px;" /></div></a>
    </td>
 </tr>
 <tr>
    <td>
         <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/Spring-Derm"><div style="width:225px; margin-left:20px;"> <img src="/images/medicalSpa/2014/SpringDermLOGO(1).jpg" style="width:200px;" /></div></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/Swann-Dermatology-Surgery/"><div style="width:225px; margin-left:20px;"><img src="/images/medicalSpa/2014/SwannDermatologySurgery.jpg" style="width:175px;"/></div></a>
    </td>
 </tr>
 
 
 
 
 
<tr>
<td>
<a href=" http://www.417mag.com/417-Magazine/Medical-Spa-Month/All-Menus/" style="color:#7e9fb0"> <div id="allMenu" style="margin-left:10px;"><img src="/images/medicalSpa/2014/allMenus.jpg" /></div></a>
</td>
</tr>
</table>
</div>
	

		<!-- <h1>{$Page->title}</h1> -->
<div class="mainCont" style="">		
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		
</div></div>
		



<div class="bottom"><a href="http://www.417mag.com/417-Magazine/Medical-Spa-Month/All-Menus/"><img src="http://www.417mag.com/images/medicalSpa/MedicalSpaMonth_Web2012_footerNEW.jpg" width="970px" style="margin-left:0px;" /></a>
		

		
	 	<!-- facebook stuff -->
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
</div></div></div>
</body>
</html>