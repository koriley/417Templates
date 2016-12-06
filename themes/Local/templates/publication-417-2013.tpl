{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];

{/php}
{loadModules position="user1"}
{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    //require_once 'inc/MCAPI.class.php';
    //$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     //$api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['emailx'];
     $fname=$_POST['fname'];
     $lname=$_POST['lname'];
     $groups = array();
     $club417 = $_POST['updates_offers'];
     $bestOfTheWeek = $_POST['botw'];
     $tableTalk = $_POST['table_talk'];
     $rightAtHome = $_POST['right_at_home'];
     $shopTalk = $_POST['shop_talk'];
     $brideBuzz = $_POST['bridal_buzz'];
     $weekendPass = $_POST['weekend_pass'];



   if($email != ''){
     // Only include Mailchimp API when needed
     require_once 'inc/MCAPI.class.php';
     $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
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


{assign var="ishome" value="TRUE"}
{assign var="oaspos" value="Top1,x01"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
<head>
<!-- FOO -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417mag.com{$article.url}{$article.image}" />

<meta property="og:type" content="website"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<meta name="google-site-verification" content="tHI8Q2s6H-SwQvs9WPDmo8k1onlnh0TPwKqJM0o3Gzs" />
<meta name="p:domain_verify" content="17cd5550cea8a8f577d4d801d1bee4da" />
<script type="text/javascript" src="/themes/Local/js/photoContainerScaler.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/validate.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/rivista.js"></script>
<script type="text/javascript" language="JavaScript" src="/themes/Local/js/xml.js"></script>

{include file="jqueryLatest.tpl"}
{include file="allCSS-2013.tpl"}


<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css" />
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

function bww(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a5702abd&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=829&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a5702abd' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400,
        width:      600
    });
 
};


</script>
{/literal}
{literal}

<!--
    <script type="text/javascript">
        var start = 0;
        var end = 0;
        var binfile = '';
        
        function TestDownload() {
            start = new Date().getTime();
            
            $.ajax({
                type: "GET",
                url: "/themes/Local/js/bigfile.bin?id=" + start,
                dataType: 'application/octet-stream',
                success: function(msg) {
                    binfile = msg;
                    end = new Date().getTime();
                    diff = (end - start) / 1000;
                    bytes = msg.length;
                    speed = (bytes / diff) / 1024 / 1024 * 8;
                    speed = Math.round(speed*100)/100;
                    $('#dlspeed').html('<b>' + speed + ' Mb/s (You)</b>');
                    $('#dlbar').css('width', Math.floor(speed * 30)+'px');        
                  },
                
complete: function(xhr, textStatus) {
if(speed<1.0){                      
totalhs();
                }
}
              });
        }
       
       
        
        $(document).ready(function() {
            TestDownload();
        });

  
     
    </script>-->
{/literal}
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
<script src="/themes/Local/js/jquery.instagram.js"></script>
{include file="417ga.tpl"}
</head>
{php}
if($_SESSION['bww']=="1"){
echo '<body onLoad="bww();">';
} 
else{echo "<body>";}
{/php}

<!--<div class="socialBar"></div>-->
<div id="page-container">
    
    <div id="fullWall">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("homePageWallPaperOnly");
</script>
{/literal}
</div>
<div class="page-container"> 
    
	{include file="top-417-2013.tpl"}
	<div id="page-body">
	 	<div id="columns-1-2">
			<div >{loadModules position="top"}</div>
	 		{if $pagecontent<>''}{$pagecontent}{/if}		
			<div id="column-1">
			{loadModules position="left"}
			</div>
			<div id="column-2">							  				  				  		
			{loadModules position="middle"}
			</div>
		</div>			
	 	<div id="column-3" style="margin-right:4px;">				
			{loadModules position="right"}		
		</div>		
	</div>
                
	<div id="bottom">				
			{loadModules position="bottom"}		
	</div>
       
	{include file="footer-417.tpl"}
        </div>
</div>
{literal}
<script type='text/javascript'>
    jQuery(document).ready(function(){
    if((jQuery('#fullWall').find('iframe').length)<1){
        jQuery('#fullWall').remove();
        jQuery('#page-container').css({'width':'100%'});
        }
        }); 
</script>
{/literal}
</body>
</html>
