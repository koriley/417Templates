{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];
{/php}

{loadModules position="headtag"}
{assign var="ishome" value="TRUE"}
{assign var="oaspos" value="Top1,x01"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
{addjs file="prototype.js"}
{addjs file="effects.js"}
<link rel="stylesheet" type="text/css" href="/js/shadowbox.css">
<script type="text/javascript" src="/js/shadowbox.js"></script>
<script type="text/javascript" src="/js/photoContainerScaler.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/validate.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/rivista.js"></script>
<script type="text/javascript" language="JavaScript" src="/js/xml.js"></script>

<link href="/css/417-2010.css" rel="stylesheet" type="text/css" />
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
{literal}
<script type="text/javascript">
Shadowbox.init({
    // let's skip the automatic setup because we don't have any
    // properly configured link elements on the page
    skipSetup: true,
    // include the html player because we want to display some html content
    players: ["html"]
});

function survey(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a36003d0&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=157&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a36003d0' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     450,
        width:      900
    });
}


</script>
{/literal}
{include file="ga.tpl"}
</head>
{php}
        if($_SESSION['survey']=="1"){echo '<body onLoad="survey()">';}

        
    
else{echo "<body>";}
{/php}
<body>
<div id="page-container">
	{include file="top-417-2010.tpl"}
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
	 	<div id="column-3">				
			{loadModules position="right"}		
		</div>		
	</div>
	<div id="bottom">				
			{loadModules position="bottom"}		
	</div>
	{include file="footer-417.tpl"}
</div>
</body>
</html>