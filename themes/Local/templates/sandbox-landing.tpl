{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['email'];
     $fname=$_POST['fname'];
     $lname=$_POST['lname'];
     $groups = array();
     $club417 = $_POST['promotions'];
     $bestOfTheWeek = $_POST['417_best_of_the_week'];
     $tableTalk = $_POST['table_talk'];
     $rightAtHome = $_POST['right_at_home'];
     $shopTalk = $_POST['shop_talk'];
     $brideBuzz = $_POST['417_bride_newsletter'];
     $weekendPass = $_POST['weekend_pass'];
   if($email != ''){
     if($club417 == 'on'){ array_push($groups, array('name'=>'417 Magazine Club 417', 'groups'=>'Club 417'));}
     if($bestOfTheWeek == 'on'){ array_push($groups, array('name'=>'417 Magazine Best of the Week', 'groups'=>'Best of the Week'));}
     if($tableTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Table Talk', 'groups'=>'Table Talk'));}
     if($rightAtHome == 'on'){ array_push($groups, array('name'=>'417 Magazine Right at Home', 'groups'=>'Right at Home'));}
     if($shopTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Shop Talk', 'groups'=>'Shop Talk'));}
     if($brideBuzz == 'on'){ array_push($groups, array('name'=>'417 Magazine Bridal Buzz', 'groups'=>'Bridal Buzz'));}
     if($weekendPass == 'on'){ array_push($groups, array('name'=>'417 Magazine Weekend Pass', 'groups'=>'Weekend Pass '));}
     
     
     $merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'GROUPINGS'=>$groups);


     $retval = $api->listSubscribe("e24d246ce5", $email, $merge_vars );

   } 
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
<meta property="og:image" content="{php} echo $mypage; {/php}{if $pagedata.image <> '' }{$pagedata.image}{/if}" />

<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
 {include file="jqueryLatest.tpl"}
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>
<meta property="article:publisher" content="https://www.facebook.com/417mag" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-article-re.css" rel="stylesheet" type="text/css" />

{include file="oas_head.tpl"}
{include file="417ga.tpl"}
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

function mother(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a5337b36&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=342&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a5337b36' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     533, 
        width:      800
    });

};
function cards(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=ae2aa2ab&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=821&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ae2aa2ab' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};
    
function smile(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=ae007717&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=822&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ae007717' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};
    
function boulevard(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a23b5c2c&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=824&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a23b5c2c' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};

function swann(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a8e9d173&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=823&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a8e9d173' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};

function kitchen(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a5e97338&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=826&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a5e97338' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400, 
        width:      600
    });

};

    

</script>
{/literal}
</head>
{php}
        

        

if($_SESSION['mother']=="1"){echo '<body onLoad="mother()">';}


elseif($_SESSION['kitchen']=="1"){echo '<body onLoad="kitchen()">';}


elseif($_SESSION['boulevard']=="1"){echo '<body onLoad="boulevard()">';}

elseif($_SESSION['swann']=="1"){echo '<body onLoad="swann()">';}
    
else{echo "<body>";}
    {/php}
<div id="page-container">
     
    <div id="fullWall">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("wallpaper");
</script>
{/literal}
</div>   
<div class="page-container">

{include file="top-417-2013.tpl"}
	<div id="page-body">
			
	 	<div id="columns-1-2" style="padding:5px; width:640px;" >
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		
                <div class="sShare"><iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=button_count&amp;show_faces=true&amp;width=150&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:75px; height:20px"></iframe>
<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a><div class="fbShare"></div></div>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
		</div>
		
		<h1>{$Page->title}</h1>
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
                    
                    
               
		{loadModules position="middle"}
                
                
                
  
             
                
                
                
                
		<div class="clear"></div>
		 <div id="fb-root"></div>
                 <div class="sShare"><iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=button_count&amp;show_faces=true&amp;width=150&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:75px; height:20px"></iframe>
<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a><div class="fbShare"></div></div>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
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
	 	<div id="column-3" >
			
			{loadModules position="right"}
			{loadModules position="column3"}
		</div>
                
      
</div>
                        <!-- Bottom ad -->
      
{include file="footboard.tpl"}
      
{include file="footer-417.tpl"}
{*if $Page->params.qrx == fnpt}{debug}
{if $pagedata.image <> '' }{$pagedata.image}{/if}{/if*}
</div></div>
{literal}    
<script type="text/javascript" src='/js/pinit.js'> </script>
  {/literal}
  {literal}
<script type='text/javascript'>
     $(document).ready(function(){
    if(($('#fullWall').find('iframe').length)<1){
        $('#fullWall').remove();
        $('#page-container').css({'width':'100%'});
        }
        });
</script>
{/literal}

</body>
</html>