{php}
require_once 'inc/MCAPI.class.php';
$apikey="843637aeadd6bf4182ce8e79b40a2e81-us1";
$fname=$_POST['fname'];
$lanme=$_POST['lname'];
$email=$_POST['address'];
$promotions=$_POST['promotions'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['417_best_of_the_week'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['417_bride_newsletter'];
$weekend_pass=$_POST['weekend_pass'];
$shop_talk=$_POST['shop_talk'];
$tasty_tuesday=$_POST['tasty_tuesday'];
//echo $apikey;
if($email!=''){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($shop_talk=='on'){$retval = $api->listSubscribe( "e2bb863679", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
if($tasty_tuesday=='on'){$retval = $api->listSubscribe( "de93e6d9fb", $email, $merge_vars );}
                 
echo "<meta http-equiv='refresh' content=\"0;URL='http://www.417mag.com/417-Magazine/Best-Of-2014/Thank-You/'\" />";

}

//echo "this is the new version";
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
{php}
$useragent=$_SERVER['HTTP_USER_AGENT'];

if(preg_match('/android.+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)))
{ 
 
$this->assign('mobileFlag', TRUE); 
//echo "mobile<br/>";
//echo $useragent;

} else {

 $this->assign('mobileFlag', FALSE); 
//echo "not mobile<br/>";
//echo $useragent;
}

{/php}

{if $mobileFlag eq TRUE}
    <meta http-equiv="refresh" content="0;url=/417-Magazine/Best-Of-2014/mobile/"> 
    

{else}
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
<meta property="og:image" content="http://www.417mag.com/images/bestof/2014/Best-Of-Logo-2014.png" />


<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/flipclock.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/2014Bestof.css" rel="stylesheet" type="text/css" />

{include file="oas_head.tpl"}

{include file="417ga.tpl"}
{include file="jqueryLatest.tpl"}
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>
{literal}<script type="text/javascript">stLight.options({publisher: "748dac3f-826a-4195-8fa7-421fabf82ef3"}); </script>{/literal}
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>

<script type="text/javascript" language="JavaScript" src="/themes/Local/js/countdown.js"></script>
<script src="/themes/Local/js/flipclock/libs/prefixfree.min.js"></script>
<script type="text/javascript" language="JavaScript" src="/themes/Local/js/flipclock/flipclock.min.js"></script>
<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css">
            <script type="text/javascript" src="/themes/Local/js/shadowbox.js"></script>
            {literal}
                <script type="text/javascript">
                Shadowbox.init({
                    // let's skip the automatic setup because we don't have any
                    // properly configured link elements on the page
                    skipSetup: true,
                    // include the html player because we want to display some html content
                    players: ["html"]
                });

                function bo2013(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=ae40cc4a&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=416&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ae40cc4a' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     400,
                        width:      600
                    });

                };

                </script>
            {/literal}
</head>
{php}
            if($_SESSION['bo2013']=="1"){echo '<body onLoad="bo2013()">'; $_SESSION['bo2013'] = 2;}
    
else{echo "<body>";}
    {/php}
   
<div id="page-container">

{include file="top-417-2013.tpl"}
	<div class="page-body">
			
	 	<div id="columns-1-2-3">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		{include file="pagetools.tpl"}
                
		</div>
		
                <div><img src="/images/bestof/2014/BestOf417_microsite_header.png"  /></div>
                <div id="centerMe"><div class="clock" id="clock"></div></div>
                
<div class="left-side">	
    <div class="nav"><table cellpadding="0" cellspacing="0" class="nav"><tr><td><a href="http://417mag.com/bestof"><div class="food"></div></a></td><td><a href="http://417mag.com/bestof"><div class="people"></div></a></td><td><a href="http://417mag.com/bestof"><div class="places"></div></a></td><td><a href="http://417mag.com/bestof"><div class="shopping"></div></a></td><td><a href="http://417mag.com/bestof"><div class="services"></div></a></td></tr></table></div>    
    <div class="mainContent">
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
                    {loadModules position="middle"}
</div>
</div>
<div class="right-side">
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
 			
 

{include file="footer-417.tpl"}


{literal}
<script type="text/javascript">
$('#subButton').attr('value', "");
    $('#backBone').attr('value', "");
$(document).ready(function(){
   
    $('#backBone').hover(
     function () { 
       $('#backBone').css("background-image","url('/images/pet/backBone2.png')");
     },
     function () {    
       $('#backBone').css("background-image","url('/images/pet/backBone1.png')");  
    }); 
        
        $('.twtr-doc').css("-moz-border-radius","0px");
$('.twtr-doc').css("-webkit-border-radius","0px");
$('.twtr-doc').css("border-radius","0px");

$('.twtr-timeline').css("-moz-border-radius","0px");
$('.twtr-timeline').css("-webkit-border-radius","0px");
$('.twtr-timeline').css("border-radius","0px");
});     
    
       var event = new Date(2013, 9, 16, 17, 0, 0, 0);
       var now = new Date();
        var timeLeft = Math.round((event - (now)) /1000);
        
	var clock = $('.clock').FlipClock(timeLeft, {
		clockFace: 'DailyCounter',
		countdown: true
	});
            
            $('.clock .flip').each(function() {
            if (!$(this).hasClass('play')) {
                $(this).toggleClass('play');
            }
        });
</script>
    
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=358166740896792";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
{/literal}
</body>
</html>
{/if}