{getpagedata id=$Page->pageid}
{php}
//DO NOT EDIT THIS TEMPLATE WITH OUT PERMISSION FROM KEVIN ORILEY
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
$right_at_home=$_POST['right_at_home'];

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
if($right_at_home=='on'){$retval = $api->listSubscribe( "c03b15e529", $email, $merge_vars );}
echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

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
{loadModules position="top"}
{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{if $Page->title == 'Jude Black'}
    {assign var="babyName" value="Jude-Black"}
{/if}
{if $Page->title == 'Abree Matz'}
    {assign var="babyName" value="Abree-Matz"}
{/if}
{if $Page->title == 'Amelia Wiltshire'}
    {assign var="babyName" value="Amelia-Wiltshire"}
{/if}
{if $Page->title == 'Charli Moore'}
    {assign var="babyName" value="Charli-Moore"}
{/if}
{if $Page->title == 'Clay Schnake'}
    {assign var="babyName" value="Clay-Schnake"}
{/if}
{if $Page->title == 'Cora Cockrum'}
    {assign var="babyName" value="Cora-Cockrum"}
{/if}
{if $Page->title == 'Eisley Garcia'}
    {assign var="babyName" value="Eisley-Garcia"}
{/if}
{if $Page->title == 'Ella Junkin'}
    {assign var="babyName" value="Ella-Junkin"}
{/if}
{if $Page->title == 'Graham Sutton'}
    {assign var="babyName" value="Graham-Sutton"}
{/if}
{if $Page->title == 'Greta Cox'}
    {assign var="babyName" value="Greta-Cox"}
{/if}
{if $Page->title == 'Gus Lovan'}
    {assign var="babyName" value="Gus-Lovan"}
{/if}
{if $Page->title == 'Jase Kaiser'}
   {assign var="babyName" value="Jase-Kaiser"}
{/if}
{if $Page->title == 'Kate Stevenson'}
    {assign var="babyName" value="Kate-Stevenson"}
{/if}
{if $Page->title == 'London England'}
    {assign var="babyName" value="London-England"}
{/if}
{if $Page->title == 'Micah DeGuzman'}
    {assign var="babyName" value="Micah-DeGuzman"}
{/if}
{if $Page->title == 'Rowen MacLaren'}
    {assign var="babyName" value="Rowen-MacLaren"}
{/if}
{if $Page->title == 'Warren Waite'}
    {assign var="babyName" value="Warren-Waite"}
{/if}
{if $Page->title == 'Weston Bode'}
    {assign var="babyName" value="Weston-Bode"}
{/if}
{if $Page->title == 'Adisynn Dabney'}
    {assign var="babyName" value="Adisynn-Dabney"}
{/if}
{if $Page->title == 'Allison Stulce'}
    {assign var="babyName" value="Allison-Stulce"}
{/if}
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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/cuteBaby.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<script type="text/javascript" src="/themes/Local/js/popup.js"></script>
{include file="417ga.tpl"}
 <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
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

                function baby(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a2c19c91&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?campaignid=828&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a2c19c91' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     400,
                        width:      600
                    });

                };

                </script>
            {/literal}
</head>
{php}
            if($_SESSION['baby']=="1"){echo '<body onLoad="baby()">';}
    
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
		<!-- <h1>{$Page->title}</h1> -->
                <div class="header"><a href="http://www.417mag.com/Cutest-Baby/"><img src="/images/cuteBaby/2014/CutestBaby_microsite_header.jpg" /></a></div>
                
<div class="left-side">	
     <div style="margin-bottom:10px;"> {include file="cuteBabyLikeButtons.tpl"}</div>
{if $pagecontent<>''}{eval var=$pagecontent}{/if}

		<MESSAGES>
                    <div style="margin-bottom:10px; margin-top:10px;">  {include file="cuteBabyLikeButtons.tpl"}</div>
                    {loadModules position="middle"}
                    
</div>
<div class="right-side">
     {loadModules position="right"}
     
 </div> 
		
</div>		 
     <div style="text-align:center;">
     
     {loadModules position="bottom"}
     </div>

 
 			
 

{include file="footer-417.tpl"}

</div>
<script>
$('.custAdSize').css('background-color', 'transparent');
</script>    
</body>
</html>
