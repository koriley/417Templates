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

if(preg_match('/android.+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)))
{ 
 
$this->assign('mobileFlag', TRUE); 
//echo "mobile<br/>";
//echo $useragent;
$flag=$_GET['flag'];
if($flag == ''){ $this->assign('flag', '1'); }
if($flag =='1'){ $this->assign('flag', '1');}
if($flag == '0'){ $this->assign('flag', '0');}
} else {

 $this->assign('mobileFlag', FALSE); 
//echo "not mobile<br/>";
//echo $useragent;
}

{/php}
{*if $mobileFlag eq TRUE*}
{if $flag == 1}
    <!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com{$article.url}{$article.image}" />

<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>

<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta property="og:site_name" content="417 Magazine"/>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="/css/mobile.css" rel="stylesheet" type="text/css" />
<link href="/js/photoswipe.css" type="text/css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="/js/klass.min.js"></script>
<script type="text/javascript" src="/js//code.photoswipe-3.0.5.min.js"></script>
{literal}
{/literal}
{include file="oas_head.tpl"}
{include file="gaPP.tpl"}
</head>

<body>
<div style="" id="mainFrame">
<div style="" id="header"><div id="menuButton"></div>
     </div>    <div id="dropMenu" style="visibility:hidden;">           
         
                      <a href="/mobile-site/mobile-dining/"><div class="navItem">EAT</div></a>
                      <a href="/mobile-site/mobile-shopping/"><div class="navItem">SHOP</div></a>
                      <a href="/417-Magazine/mobile-calendar/"><div class="navItem">DO</div></a>
                      <a href="http://www.417mag.com/mobile-site/mobile-peoplePics/"><div class="navItem">PEOPLE PICS</div></a>
                      <a href="/mobile-site/mobile-blog/"><div class="navItem">BLOGS</div></a>
                      <div class="navItem"><form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
    <input type="hidden" name="ie" value="UTF-8" />
    <input type="text" name="q" size="20" />
    <input type="submit" name="sa" value="Search 417" />
  </div>
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script></div>
                    </div>
    <div class="middle"><div class="middleContent">
        <a href="http://www.417mag.com/mobile-site/"><img src="http://www.417mag.com/images/mobile/MobileSiteElements_07.png"  class="headerImage"/></a>
<div class="articleBox">				
    <div class="articleTitle">{$article.title}</div>
				{if $article.subtitle<>''}<div class="articleSubTitle">{$article.subtitle}</div>{/if}
					
				{if $article.author<>''}<div class="articleAurthor">{$article.author}</div>{/if}	
				{if $article.body<>''}
					<div class="articleBody">{$article.body}</div>
				{/if}
	{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<MESSAGES>


			{loadModules position="middle"}		
</div>
                                <div class="bannerAd">
{literal}
        
        <script>  
       $(document).ready(function(){
      $("#dropMenu").removeAttr("style");
          $("#dropMenu").hide();
              $('.fullSite').click(function(){
                   $("a").each(function(){
                       $(this).attr('href',$(this).attr('href').replace('?flag=1','?flag=0'));
                        
                       });
                          url =  window.location.href.replace('?flag=1', '?flag=0'); 
                            window.location.href = url;
                        
                  });
          $("#menuButton").click(function(){
              
              $("#dropMenu").toggle("slide", { direction: "up" });
      });
          });
    </script>
    <script type="text/javascript">

		(function(window, PhotoSwipe){
		
			document.addEventListener('DOMContentLoaded', function(){
			
				var
					options = {captionAndToolbarAutoHideDelay:0 },
					instance = PhotoSwipe.attach( window.document.querySelectorAll('.gallery a'), options );
			
			}, false);
			
			
		}(window, window.Code.PhotoSwipe));
		
	</script>
    <!--/* OpenX Javascript Tag v2.8.9 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://secure421.hostgator.com/~gocoupon/openx/www/delivery/ajs.php':'http://gonsave.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=18");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a3860731&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a3860731' border='0' alt='' /></a></noscript>
{/literal}</div>
</div></div></div>
<div class="fullSite"><div class="fullSiteButton">Full Site</div></div>	
{if $Page->params.showdebug === "true"}{debug}{/if}
		
</body>
</html>
{else}    
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
        <script src="http://code.jquery.com/jquery-1.9.0.js"></script>
        <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
        <script type="text/javascript" src="http://fbcomments-email-notifications.googlecode.com/files/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
        <link href="/css/417-2013.css" rel="stylesheet" type="text/css" />
        <link href="/css/417-article-re.css" rel="stylesheet" type="text/css" />
        <link href="/css/wrapper.css" rel="stylesheet" type="text/css" />
        <!--<script type="text/javascript" src="/js/popup.js"></script>-->
        
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

{/if}