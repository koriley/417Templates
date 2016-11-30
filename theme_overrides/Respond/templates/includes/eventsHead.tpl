{getpagedata id=$Page->pageid}

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
<meta charset="utf-8">

<meta property="og:image" content="http://417events.com/images/417events/logo.png" />
<meta property="og:image:width" content="400">
<meta property="og:image:height" content="250">
<meta property="og:type" content="city"/>
<meta property="og:url" content="http://417events.com{$smarty.server.REQUEST_URI}"/>
<meta property="og:site_name" content="417 Events"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />

<title><PAGETITLE></title>
<meta name="com.silverpop.brandeddomains" content="www.pages03.net,417mag.com,417mag.mkt7054.com,www.417events.com,www.417homemag.com,www.417inc.com,www.417mag.com" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}">
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}">
<link rel="shortcut icon" href="{$publication.params.faviconpath}">
{* disabling these for now - we need to look into how we want to deal with these in the future *}
{*
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="/ico/apple-touch-icon-57-precomposed.png">
*}
{* styles.less should always be the first less file since it defines bootstrap *}
{addless file="style.less" order="1" localoverride=false}
{addcss file="moz.css" order="100"}
{addcss file="ie9.css" order="100" IE="IE 9"}
{addcss file="ie8.css" order="100" IE="lt IE 9"}
{*addcss file="2014top.css" order="500"*} {* this is a css workaround, since less doesnt seem to work correctly *}
{* custom_styles.less should be the final less so that it can override styles defined earlier *}
{*addcss file="events.css" order="9999999"*}
{addcss file='eventsHidden.css' order="9999999"}
{addless file="custom_styles.less" order="9999996" localoverride=true}
{addcss file="/theme_overrides/Respond/touchcarousel/touchcarousel.css" order="501"}
{addcss file="/theme_overrides/Respond/touchcarousel/black-and-white-skin/black-and-white-skin.css" order="501"}
{addcss file="tableDivStyle.css"}
{addcss file="custCarousel.css" order="99999999"}
{addcss file="fonts.css" order="900"}
{addcss file="footer.css" order="900"}

{include file="417ga.tpl"}


{* javascript files *}
{addjs file="html5_shiv.js" IE="lt IE 9" order=0 position="header"}  {* this MUST be loaded in the header *}
{addjs file="respond.js"  IE="lt IE 9" order=0 position="footer"}
{addjs file="windowResizeResponder.js" order=0 position="header"}  {* load in header to ensure that it loads before other javascript *}
{addjs file="moduleEventExchange.js" order=0 position="header"}  {* load in header to ensure that it loads before other javascript *}
{addjs file="base.js" position="footer"}
{addjs file="photoContainerScaler.js" position="footer"}
{addjs file="validate.js" position="footer"}
{addjs file="rivista.js" position="footer"}
{addjs file="xml.js" position="footer"}
{addjs file="photoCaption.class.js" position="footer"}
{addjs file="bootstrap.min.js" order=50 position="footer"}
{addjs file="bootstrap-overrides.js" order=51 position="footer"}
{addjs file="matchmedia.js" position="footer"}
{addjs file="picturefill.js" position="footer"}
{addjs file="debugConsole.js" position="footer"}
{addjs file="jquery.touchcarousel-1.2.min.js" position="footer"}
{addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}
{addjs file="koPopUp.js" position="footer"}
{addjs file="jQueryGatewayAd.js" position="footer"}
{addjs file="fbHtml5.js" position="footer"}
{addjs file="parallax.js" position="footer"}
{addjs file="localscroll-min.js" position="footer"}

{addjs file="main.js" position="footer"}

{addjs file="mason.js" position="footer"}
{addjs file="packery.js" position="footer"}
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">{literal}stLight.options({publisher: "748dac3f-826a-4195-8fa7-421fabf82ef3", doNotHash: false, doNotCopy: false, shorten:false, hashAddressBar: false});{/literal}</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link href='http://fonts.googleapis.com/css?family=Istok+Web:700|Oswald:400,700|Dancing+Script:700|Amatic+SC:700|Allura|Playball|Great+Vibes|Open+Sans:400,300,700'' rel='stylesheet' type='text/css'>
{literal}<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-60874217-1', 'auto');
  ga('send', 'pageview');

</script>{/literal}
<script src="http://contentz.mkt932.com/lp/static/js/iMAWebCookie.js?3f636987-14ad0c0616c-2d617ac8ac4460b9f143347708bf4d50&h=www.pages03.net" type="text/javascript"></script>
