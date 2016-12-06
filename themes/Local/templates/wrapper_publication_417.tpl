{php}
session_start();
$pageURI = $_SERVER["REQUEST_URI"];
$sessionVAR=$SESSION[$pageURI];
$sessionVAR=$_GET['session'];

{/php}
{loadModules position="topmenu"}
{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['emailx'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];
$shop_talk=$_POST['shop_talk'];


if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	if($promotions=='on'){$retval = $api->listSubscribe( "e35e5c171d", $email, $merge_vars ); 
$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($deal_of_the_day=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	if($m417_best_of_the_week=='on'){$retval = $api->listSubscribe( "44d4473eb6", $email, $merge_vars );$retval = $api->listSubscribe( "0d3cc9438d", $email, $merge_vars );}
	if($table_talk=='on'){$retval = $api->listSubscribe( "925d230bdc", $email, $merge_vars );}
        if($shop_talk=='on'){$retval = $api->listSubscribe( "e2bb863679", $email, $merge_vars );}
	if($m417_bride_newsletter=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	if($weekend_pass=='on'){$retval = $api->listSubscribe( "ea34bc81a6", $email, $merge_vars );}
echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

}


{/php}

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
<meta name="google-site-verification" content="tHI8Q2s6H-SwQvs9WPDmo8k1onlnh0TPwKqJM0o3Gzs" />

<script type="text/javascript" src="/themes/Local/js/photoContainerScaler.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/validate.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/rivista.js"></script>
<script type="text/javascript" language="JavaScript" src="/themes/Local/js/xml.js"></script>
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/greyLink.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/wrapper.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='http://badads.com/openx/www/delivery/spcjs.php?id=1'></script>
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

function totalhs(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a5da2a0e&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=238&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a5da2a0e' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     581,
        width:      450
    });
 
};

function tdsub(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=af89dd5a&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=276&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=af89dd5a' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     400,
        width:      600
    });

};

function ash(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a7c8d0fc&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=319&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a7c8d0fc' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     600,
        width:      600
    });
};

function hba(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a338577b&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=322&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a338577b' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     650,
        width:      330
    });


};
  function bcc(){

    // open a welcome message as soon as the window loads
    Shadowbox.open({
        content:    "<div><a href='http://badads.com/openx/www/delivery/ck.php?n=a2129126&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?campaignid=330&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a2129126' border='0' alt='' /></a></div>",
        player:     "html",
        
        height:     700,
        width:      700
    });


};
</script>
{/literal}
{literal}


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

  
     
    </script>
{/literal}
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
{include file="417ga.tpl"}
</head>
{php}
if($_SESSION['tdsub']=="1"){
$_SESSION['tdsub']=2;
echo '<body onLoad="tdsub()">';}

if($_SESSION['ash']=="1"){
echo '<body onLoad="ash();">';
}  
if($_SESSION['hba']=="1"){
echo '<body onLoad="hba();">';
} 
if($_SESSION['bcc']=="1"){
echo '<body onLoad="bcc();">';
}   
else{echo "<body>";}
{/php}

<div id="page-container">
     
    <div id="fullWall"><!--/* OpenX Javascript Tag v2.8.9 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://secure421.hostgator.com/~gocoupon/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=72");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=abb8a648&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=72&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=abb8a648' border='0' alt='' /></a></noscript>
</div>
<div class="page-container">
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
</div></div>
</body>
</html>
