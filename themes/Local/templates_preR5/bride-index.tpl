{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:image" content="http://www.417bride.com/images/bride/head2.png"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>
<meta property="og:site_name" content="417 Magazine"/>
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta property="fb:admins" content="571284244"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>

<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/css/Bride-417.css" rel="stylesheet" type="text/css" />
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

                function ourWeddingStory(){

                    // open a welcome message as soon as the window loads
                    Shadowbox.open({
                        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a54e4b30&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=617&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a54e4b30' border='0' alt='' /></a></div>",
                        player:     "html",
        
                        height:     400,
                        width:      600
                    });

                };

                </script>
            {/literal}
{include file="oas_head.tpl"}
</head>
{php}
            if($_SESSION['ourWeddingStory']=="1"){echo '<body onLoad="ourWeddingStory()">';}
    
else{echo "<body>";}
    {/php}
<div id="page-container">

{include file="top-bride.tpl"}
	<div id="page-body">
		<div>{loadModules position="top"}</div>
		
              <div id="columns-1-2-white" style="width:730px;">
		<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	
		{include file="pagetools.tpl"}
		<h1>{$Page->title}</h1>
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		{loadModules position="middle"}
		<div class="clear"></div>
		{usercomments}
		</div>			
	 	<div id="column-3" style="width:200px;">
			<!--{include file="child-page-menu.tpl}-->
			{loadModules position="right"}
			{loadModules position="column3"}
		</div>
</div>
{include file="footer-bride.tpl"}
</div>
</body>
</html>

