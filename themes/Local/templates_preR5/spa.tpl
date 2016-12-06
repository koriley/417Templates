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
<meta property="og:image" content="http://417mag.com/images/spa/Spa&SalonWeek_Web13_island.jpg"/>

<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
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
<link href="/css/spa.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body">
			
	 	<div id="columns-1-2-3" style="z-index:1; float:left; background-image:url('/images/spa/background_repeat.png'); background-repeat:repeat-y; width:970px;">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
		</div>
<div >		
		<div class="header"><a href="/spa-and-salon-week"><img src="http://www.417mag.com/images/spa/Spa&SalonWeek_Web13_header.jpg" width="100%" /></a> </div>
<div style="z-index:2; float:left; background-image:url('/images/spa/background_repeat.png'); background-repeat:repeat-y; ">
<table class="logoTable" style="height:100%">
 <tr>
     <td>
         <a href="http://www.417mag.com/spa-and-salon-week/Acacia-Spa/"> <img src="http://www.417mag.com/AcaciaSpaLogoNEWWEB.png" style="width:125px;" /></a>
    </td>
     </tr>
 <tr>
    <td>
         <a href="/spa-and-salon-week/Ashley-Lauren/"> <img src="/images/spa/ashleylauren.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/esthetiques/"><img src="/images/spa/esthetiques.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
          <a href="/spa-and-salon-week/frost/"> <img src="/images/spa/FrostSalon_LogoWEB.jpg" /></a>
    </td>
 </tr>
 <tr>
    <td>
          <a href="/spa-and-salon-week/grovespa/"> <img src="/images/spa/grovespa.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/karma/"><img src="/images/spa/karma.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
          <a href="/spa-and-salon-week/lavare/"> <img src="/images/spa/lavare.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/nuessence/"><img src="/images/spa/nuessence.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/Serenity-Day-Spa/"><img src="/images/spa/Serenity_LogoWEB.jpg" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/spachateau/"><img src="/images/spa/spachateau.png" /></a>
    </td>
 </tr>
 <tr>
    <td>
           <a href="/spa-and-salon-week/Studio-417/"><img src="/images/spa/Studio417_WEB.jpg" /></a>
    </td>
 </tr>   
 
 <tr>
    <td>
           <a href="/spa-and-salon-week/The-Cutting-Edge/"><img src="/images/spa/CuttingEdge_LogoWEB.jpg" /></a>
    </td>
 </tr>   
 
<tr>
<td>
<a href="/spa-and-salon-week/all/"> <img src="/images/spa/seeall.png" /></a>
</td>
</tr>
</table>
</div>
	

		<!-- <h1>{$Page->title}</h1> -->
<div style="width:700px; float:left; margin-left:45px;">		
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		{loadModules position="middle"}
</div>
		



<div ><img src="/images/spa/bottom.png" width="970px" style="margin-left:0px;" /></div>
		
</div>
</div>			
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
</div>
</body>
</html>