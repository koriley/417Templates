{loadModules position="topmenu"} 
{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lanme=$_POST['lname'];
$email=$_POST['emailx'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];

if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "44d4473eb6", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

}


{/php}
{assign var="oaspos" value="Top1,Right1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-contests.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/themes/Local/js/shadowbox.css" />
<script type="text/javascript" src="/themes/Local/js/shadowbox.js"></script>
{include file="oas_head.tpl"}
<!-- Generated by OpenX 2.6.3 -->
<script type='text/javascript' src='http://gonsave.com/openx/www/delivery/spcjs.php?id=1'></script>
<script type="text/javascript" src="flowplayer-3.0.2.min.js"></script>
{literal}
<script type="text/javascript">
Shadowbox.init({
    // let's skip the automatic setup because we don't have any
    // properly configured link elements on the page
    skipSetup: true,
    // include the html player because we want to display some html content
    players: ["html"]
});


function liberty(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a0715d95&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=236&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a0715d95' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     600,
        width:      450
    });

};
</script>
{/literal}
{include file="417ga.tpl"}
</head>
{php}
        if($_SESSION['circulation']=="1"){echo '<body onLoad="sweetheart()">';}

        elseif($_SESSION['liberty']=="1"){echo '<body onLoad="liberty()">';}
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
		<div id="landing-banner">{loadModules position="top"}</div>		
	 	<div id="column-1">				
			{loadModules position="left"}		
		</div>
	 	<div id="columns-1-2">
                     <div id="home-splash" ></div>
	 		<div class="clearfix">{if $pagecontent<>''}{$pagecontent}{/if}</div>
			<div id="column-2">
			{loadModules position="middle"}
			</div>
			<div id="column-3">							  				  				  		
			{loadModules position="right"}
			</div>
		</div>		
</div>
<div class="clearfix" style="margin-top:5px; width:970px;">{loadModules position="bottom"}</div>
{include file="footer-417.tpl"}
</div>
</div>
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
