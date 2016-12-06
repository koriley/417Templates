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
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/whisky/WhiskeyFest_WebAd13_button.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="571284244,100000807778635"/>
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
<link href="/themes/Local/css/whiskey.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body" style="background-color:#060708; color:#ffffff;">
			
	 	<div id="columns-1-2-3" style="background-color:#060708; color:#ffffff;">
		
		<div style="margin-top:-6px;"><img src="/images/whisky/WhiskeyFest_landing.jpg" width="100%" /> </div>
	<div style="margin-left:10px;">
<br/>
	<a href="http://www.417mag.com/whiskeyfest/"><img src="/images/whisky/WhiskeyFest_tabs1.jpg" /></a><a href="/whiskeyfest/tickets"><img src="/images/whisky/WhiskeyFest_tabs2.jpg" /></a><a href="/whiskeyfest/spirits/"><img src="/images/whisky/WhiskeyFest_tabs3.jpg" /></a><a href="/whiskeyfest/Private-Tastings/"><img src="/images/whisky/WhiskeyFest_tabs4.jpg" /></a><a href="/whiskeyfest/FAQ/"><img src="/images/whisky/WhiskeyFest_tabs5.jpg" /></a></div>
		<!-- <h1>{$Page->title}</h1> -->
<div style="width:900px; margin:0px 5px 10px 5px; height:100%">		
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		{loadModules position="middle"}
</div>
		<div class="clear"></div>
		 <div id="fb-root"></div>


<!--<table><tr>
        <td><a href="http://wealthmanagement.ml.com/wm/system/ViewFAPage.aspx?pageurl=thecalhoungroup/"><img src="/images/whisky/WhiskeyFest_Footer4.jpg"></a></td>
        <td><a href="http://www.brownderby.com/"><img src="/images/whisky/WhiskeyFest_Footer1.jpg" width="145px"></a></td>
        <td><a href="http://www.upspringfield.com/"><img src="/images/whisky/WhiskeyFest_Footer2.jpg"></a></td>
        <td><a href="http://www.417mag.com/"><img src="/images/whisky/4-Wil-Fischer.jpg"></a></td>
        <td><a href="http://www.417mag.com/"><img src="/images/whisky/5-SBC.jpg"></a></td>
        <td><a href="http://www.417mag.com/"><img src="/images/whisky/WhiskeyFest_Footer3.jpg"></a></td>
    
    </tr></table>--><div style="width:670px; margin:auto;">
<a href="http://wealthmanagement.ml.com/wm/system/ViewFAPage.aspx?pageurl=thecalhoungroup/"><img alt="" src="/whiskeyfest/ML.jpg" style="width: 116px; height: 105px;" /></a><a href="http://www.brownderby.com/" target="_blank"><img alt="" src="/whiskeyfest/BD.jpg" style="width: 260px; height: 101px;" /></a><a href="http://www.wilfischer.com/" target="_blank"><img alt="" src="/whiskeyfest/4-Wil-Fischer.jpg" style="width: 112px; height: 106px;" /></a><a href="http://www.springfieldbrewingco.com/brews.html" target="_blank"><img alt="" src="/whiskeyfest/5-SBC.jpg" style="width: 104px; height: 104px;" /></a><br />
	<a href="http://www.upspringfield.com/" target="_blank"><img alt="" src="/whiskeyfest/UP.jpg" style="width: 164px; height: 94px;" /></a><a href="http://gigbureau.com/" target="_blank"><img alt="" src="/whiskeyfest/GigBureau.jpg" style="width: 169px; height: 94px;" /></a> <a href="http://reliabletoyotamo.com/" target="_blank"><img alt="" src="/whiskeyfest/Reliable-Toyota.jpg" style="width: 175px; height: 97px;" /></a><a href="http://www.417mag.com/" target="_blank"> <img alt="" src="/whiskeyfest/417.jpg" style="width: 136px; height: 95px;" /></a></address>
</div>
<h6 style="text-align: center;">
	<i style=""><span style="">417 MAGAZINE</span></i><span style="">, <em>UNIVERSITY PLAZA HOTEL & BROWN DERBY REMIND YOU TO TASTE RESPONSIBLY. PLEASE DON&#39;T DRINK &amp; DRIVE. MAKE A NIGHT OF IT. SEE THE &#39;TICKETS&#39; TAB FOR LODGING PACKAGE INFORMATION.</em></span></h6>
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
<fb:comments href="{php} echo $mypage; {/php}" class="fbcomments" title="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>" data-colorscheme="dark"></fb:comments>
 <!-- End FACEBOOK -->		

</div>			
	 	
</div>
{include file="footer-417.tpl"}



</div>
</body>
</html>

