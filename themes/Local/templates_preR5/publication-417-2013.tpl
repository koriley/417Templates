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
$lanme=$_POST['lname'];
$email=$_POST['emailx'];
$promotions=$_POST['updates_offers'];
$deal_of_the_day=$_POST['deal_of_the_day'];
$m417_best_of_the_week=$_POST['botw'];
$table_talk=$_POST['table_talk'];
$m417_bride_newsletter=$_POST['bridal_buzz'];
$weekend_pass=$_POST['weekend_pass'];
$shop_talk=$_POST['shop_talk'];
$tasty_tuesday=$_POST['tasty_tuesday'];

if($email != ""){
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
//echo "<meta http-equiv=\"refresh\" content=\"0;url=http://www.417mag.com/417-Magazine/Newsletter-Thank-You/\">";

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
    <meta http-equiv="refresh" content="0;url=/mobile-site"> 
    

{else}
{assign var="ishome" value="TRUE"}
{assign var="oaspos" value="Top1,x01"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
<head>
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
<script type="text/javascript" src="/js/photoContainerScaler.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/validate.js"></script>
<script type="text/javascript" language="JavaScript" src="/core/media/js/rivista.js"></script>
<script type="text/javascript" language="JavaScript" src="/js/xml.js"></script>

{include file="jqueryLatest.tpl"}
{include file="allCSS-2013.tpl"}


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
                url: "/js/bigfile.bin?id=" + start,
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
<script src="/js/jquery.instagram.js"></script>
{include file="ga.tpl"}
</head>
<body>

<!--<div class="socialBar"></div>-->
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
{/if}