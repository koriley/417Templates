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
{assign var="oaspos" value="Top1,x01,Bottom,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
{assign var="oasquery" value=""}
{assign var="padleft" value="10"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/417.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-article.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
{include file="417ga.tpl"}




</head>


<body  style="margin:0px;padding:0px; background-color:#fff; width: 100%;
overflow-x: hidden;">

<div style="margin:0; padding:0; width:575px;">

	<div id="page-body">
		
		<div id="columns-1-2">
			
			<div style="width:575px;">{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
			{loadModules position="middle"}</div>
		</div>
		
	</div>

</div>

</div>
</body>
</html>

