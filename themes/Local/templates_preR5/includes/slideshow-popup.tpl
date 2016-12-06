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

<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="article:publisher" content="https://www.facebook.com/417mag" />
<title><PAGETITLE></title>
<meta name="robots" content="all">
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}">
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}">
<script type="text/javascript" src="/core/media/js/slideshow.js"></script>
{include file="oas_head.tpl"}
{include file="gaPP.tpl"}
</head>
<body class="gallery-pop-up">

<div id="logo"><h1>{$gallery.title}</h1></div>
<div id="slideshow">
	<table cellpadding="0" cellspacing="0" border="0">
	 <tr>
		 <td id="image"><img src="{imagesizer src=$gallery.url|cat:$imagelist[0].image w=600 h=382 q=100}" alt="{$imagelist[0].title}" /></td>
		 <td><div id="description">
			{if $imagelist[0].title <>''}<h2>{$imagelist[0].title}</h2>{/if}
			{if $imagelist[0].description <>''}<p>{$imagelist[0].description}</p>{/if}
			{if $imagelist[0].photocredits <>''}<p class="photo-credit">{$imagelist[0].photocredits}</p>{/if}
<p><img src="{imagesizer src=$gallery.url|cat:$imagelist[0++].image w=600 h=382 q=100}"</p>
			</div>
                        <div class="social" style="width:75px; height:75px; "><a data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com&media=http%3A%2F%2Fwww.417mag.com{$gallery.url}{$imagelist[0].image}&description=Next%20stop%3A%20Pinterest" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a>
                        <iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=button_count&amp;show_faces=false&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:30px"></iframe>
                        <a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
                        
                        </div>
		 </td>
	 </tr>
	</table>
</div>
<table id="controls" cellpadding="0" cellspacing="0" border="0"><tr><td>{pager formname="gallery" style="button" recordcount=$imgcount rowsperpage=1 maxpages=7}</td><td class="start-stop"><a href="#" onclick="play(); return false;" class="{if $play==1}on{elseif $play==0}off{/if}" id="playButton">Play</a>&nbsp;<a href="#" onclick="pause(); return false;" class="{if $play==1}off{elseif $play==0}on{/if}" id="pauseButton">Pause</a></td></tr></table>
<div id="ad">
{if $publication.id == 90}
{literal}
<script type='text/javascript'>
GA_googleFillSlot("peoplePics_leaderboard");
</script>
{/literal}
{/if}
{if $publication.id == 96}
{literal}
<script type='text/javascript'>
GA_googleFillSlot("peoplePics_leaderboard");
</script>
{/literal}
{/if}
<script type='text/javascript' src='http://gonsave.com/openx/www/delivery/ag.php'></script> 

</div>
{*** uncomment this before going live ***}
{***{include file="tracking.tpl"}***}
{literal}    
<script>
        $(document).ready(function(){
           $(".uilconText").hide();  
                 
          });
        
  </script>
  {/literal}
</body>
<script type="text/javascript">
<!--
pageModuleId = {$gallery.pagemoduleid};
{if $Page->params.cp < $imgcount}
       cp = {math equation='x + 1' x=$Page->params.cp};
{else}
       cp = 1;
{/if}
{if $play == 1}
addLoadEvent(play);
{/if}
-->
</script>
</html>
