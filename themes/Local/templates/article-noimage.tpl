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
{/php}
{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417mag.com/images/elements/logo.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>

<meta property="fb:admins" content="571284244,100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="article:publisher" content="https://www.facebook.com/417mag" />
{include file="jqueryLatest.tpl"}
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-article-re.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
{include file="417ga.tpl"}
</head>

<body>
    {include file="fbScripts.tpl"}
<div id="page-container">
     
    <div id="fullWall"><!--/* OpenX Javascript Tag v2.8.9 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://gonsave.com/openx/www/delivery/ajs.php':'http://gonsave.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=71");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a206a4c8&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?zoneid=71&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a206a4c8' border='0' alt='' /></a></noscript>
</div>
<div class="page-container">
{include file="top-417-2013.tpl"}
	<div id="page-body">
		<div id="columns-1-2">
			<div id="article">	
				<div id="breadcrumb">{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>
				<h1>{$article.title}</h1>
				{if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
					<div class="sShare"><div class="fb-like" data-href="{php} echo $mypage;{/php}" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a><div class="fbShare"></div></div>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
				{if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}	
				{if $article.body<>''}
					{$article.body}
				{/if}
<p>
<div class="sShare"><div class="fb-like" data-href="{php} echo $mypage;{/php}" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a><div class="fbShare"></div></div>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
				<br/></p>	


				{include file="pagetools.tpl"}
				<!-- comments here -->
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
	
	
		</div>
		<div id="column-3">
			
		
		{loadModules position="right"}
		</div>
	</div>
              <div style="clear:both;"></div> 
              <div style = "width:728px; margin:auto; padding-bottom:5px;">
                  {include file="footboard.tpl"}
              </div>
{include file="footer-417.tpl"}
</div></div>

{literal}    
<script>
        $(document).ready(function(){
           $("#article img").each( function(index){ 
                 var imgSrc = $(this).attr('src'); 
                 var thisWidth = $(this).width();
                 var thisHeight = $(this).height();
                 var thisAlign = $(this).attr('align');
                 var thisHspace = $(this).attr('hspace');    
                 var imgStyle = $(this).attr('style');
                 var thisFloat;
                 var myMargin;    
             
                 
                 if(typeof thisAlign === 'undefined'){
                     thisFloat = 'float:none;';
                 }
                 if (thisAlign === 'right'){
                     thisFloat = 'float:right;';
                 }
                 if (thisAlign === 'left'){
                     thisFloat = 'float:left;';
                 }     
                 if(typeof thisHspace === 'undefined'){
                     myMargin = '';
                 }
                 else{
                     myMargin = 'margin:'+thisHspace+'px;';
                 }    
                if((thisWidth >= '100')&&(thisHeight>='100')){
                if(typeof imgStyle === 'undefined'){
                    $(this).replaceWith('<div class="imgContainer" style="'+myMargin+'width:'+thisWidth+'px; height:'+thisHeight+'px; '+thisFloat+'"><div class="pinhover" id="my_'+index+'_pinhover"><a data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com&media=http%3A%2F%2Fwww.417mag.com'+imgSrc+'&description=Next%20stop%3A%20Pinterest" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img src="'+imgSrc+'" style="width:'+thisWidth+'px; height:'+thisHeight+'px;" /></div>');
                                      
                 }else{
                    $(this).replaceWith('<div class="imgContainer" style="'+imgStyle+'"><div class="pinhover" id="my_'+index+'_pinhover"><a data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com&media=http%3A%2F%2Fwww.417mag.com'+imgSrc+'&description=Next%20stop%3A%20Pinterest" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img src="'+imgSrc+'" style="'+imgStyle+'" /></div>');
                   }
                }       
             $('#my_'+index+'_pinhover').hide(); 
                
                
                });
               
              $('.imgContainer img').each(function(){
                  var myStyle = $(this).attr('style');
                  $(this).css({'margin':'0','margin-left':'0px','margin-right':'0px','margin-top':'0px','margin-bottomt':'0px'},myStyle);
                  
               });   
          
              $('.imgContainer').hover(function(){
                 $(this).children().each(function(){
                     var myId = this.id;
                 $('#'+myId).show("slide", {easing:"swing", direction: "left" });
                   });
                 },function(){                     
                    $(this).children().each(function(){
                     var myId = this.id;
                    
                 $('#'+myId).hide("slide", {easing:"swing", direction:"left"});
                    });
                  }); 
                   
                 
          });
        
  </script>
  {/literal}
</body>
</html>
