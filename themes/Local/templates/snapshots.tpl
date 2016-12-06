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
$myDomain = $_SERVER["SERVER_NAME"];
//$Page->assign('togo', '$mypage');
//echo $myDomain;

$useragent=$_SERVER['HTTP_USER_AGENT'];


{/php}

  
{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta property="og:image" content="http://www.417mag.com{$article.url}{$article.image}" />
        
        <meta property="og:type" content="city"/>
        <meta property="og:url" content="{php}echo $mypage; {/php}"/>
        <meta property="og:site_name" content="417 Magazine"/>
        <meta property="fb:admins" content="100000807778635"/>
        <meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
        <meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
        <meta property="fb:app_id" content="134468316683025"/>
        {include file="jqueryLatest.tpl"}
        <script type="text/javascript" src="http://fbcomments-email-notifications.googlecode.com/files/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
        <link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
        <link href="/themes/Local/css/417-article-re.css" rel="stylesheet" type="text/css" />
        <link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
        <!--<script type="text/javascript" src="/themes/Local/js/popup.js"></script>-->
        
        {include file="gaPP.tpl"}
    </head>
    <body>

        <div id="page-container" >

            <div id="fullWall">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("wallpaper");
</script>
{/literal}
</div>
            <div class="page-container">

                {include file="top-417-2013.tpl"} 
                <p>{$tagSystemName}</p>
                <!-- leader board -->

                <!-- stop leaderboard -->

                <div id="page-body">

                    <div id="columns-1-2">
                        <div id="article">
                            <div id="breadcrumb">
                {section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
            </div>	

            <h1>{$article.title}</h1>
        {if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
        <iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=button_count&amp;show_faces=true&amp;width=150&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:75px; height:20px"></iframe>
<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
{if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}	
    {if $article.body<>''}
        {$article.body}
    {/if}
    <!--<h1>{$Page->title}</h1>-->
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<MESSAGES>

    {loadModules position="middle"}
    <p><b><a href="http://417mag.com/store">Subscribe to 417 Magazine</a></b></p>
    <div style="width:100%; text-align:center; padding-top:10px;">
        
    </div>
    {include file="pagetools.tpl"}


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
</div>

<!--{if $pagecontent<>''}{eval var=$pagecontent}{/if}-->





</div>			
<div id="column-3" style="float:right; margin-right:0px;">
    {if $Page->tags[51]<>'' || $article.tags[51]<>''}
        {include file="people-pics-menu.tpl"}	
    {/if}
    {loadModules position="right"}
</div>
<div style="clear:both;"></div>
{include file="footboard.tpl"} 
{include file="footer-417.tpl"}
</div>
</div>
</div>

</body>
</html>

