{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
{/php}

{loadModules position="top"}
{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}

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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://www.facebook.com/2008/fbml">
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
        <script type="text/javascript" src="http://fbcomments-email-notifications.googlecode.com/files/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>

        <meta name="robots" content="all" />
        <meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
        <link href="/css/417-index.css" rel="stylesheet" type="text/css" />

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

                

                

 function city(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a9055945&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=366&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9055945' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     600,
                        width:      600
                    });

                };

function smile(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=ab1459f8&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=184&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ab1459f8' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     600,
                        width:      600
                    });

                };

                

                </script>
            {/literal}
            <script type='text/javascript' src='http://badads.com/openx/www/delivery/ag.php'></script>

            {include file="oas_head.tpl"}
            {include file="ga.tpl"}
    </head>
    {php}
        

        

if($_SESSION['cityindependence']=="1"){echo '<body onLoad="city()">';}
elseif($_SESSION['smile']=="1"){echo '<body onLoad="smile()">';}
    
    
else{echo "<body>";}
    {/php}

    <div id="page-container">


        {include file="top-417-2010.tpl"}
        <!-- leader board -->
        {if $tagSystemName == 'people-pics'}
            <div class="sponsorship" ><!--/* OpenX Javascript Tag v2.6.3 */-->

                <script type='text/javascript'><!--//<![CDATA[
                    var m3_u = (location.protocol=='https:'?'https://badads.com/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
                    var m3_r = Math.floor(Math.random()*99999999999);
                    if (!document.MAX_used) document.MAX_used = ',';
                    document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
                    document.write ("?zoneid=2");
                    document.write ('&amp;cb=' + m3_r);
                    if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
                    document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
                    document.write ("&amp;loc=" + escape(window.location));
                    if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
                    if (document.context) document.write ("&context=" + escape(document.context));
                    if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
                    document.write ("'><\/scr"+"ipt>");
                    //]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a9f27194&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=7&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a9f27194' border='0' alt='' /></a></noscript>
            </div>
        {/if}
        <!-- stop leaderboard -->
        <div id="page-body">

            <div id="columns-1-2">
                <div id="article">
                    <div id="breadcrumb">
        {section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
    </div>
    {include file="pagetools.tpl"}
    <h1>{$Page->title}</h1>
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<MESSAGES>
    {loadModules position="middle"}
    <p><iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=standard&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:px"></iframe><br/></p>
    <div class="clear"></div>

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
            var toMail = 'kevin@417mag.com';
            var sendPath = '/js/fbCommentsEN.php';
            fbCommentsEN(fromMail,toMail,sendPath);

            /* --- Email Notifications end --- */

          };

        (function() {
            var e = document.createElement('script'); e.async = true;
            e.src = document.location.protocol +
              '//connect.facebook.net/en_US/all.js';
            document.getElementById('fb-root').appendChild(e);
          }());
        </script>
    {/literal}

    <div class="fb-comments" data-href="{php} echo $mypage; {/php}" class="fbcomments" data-num-posts="10" data-width="625"></div>

</div>
</div>			
<div id="column-3">
    {include file="child-page-menu.tpl}
    {loadModules position="right"}
    {loadModules position="column3"}
</div>
</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>

