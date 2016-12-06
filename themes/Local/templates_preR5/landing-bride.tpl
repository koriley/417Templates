{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$emailx=$_POST['emailx'];
$bride=$_POST['Subscribe'];
//echo $deal_on;
if($emailx != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	
	if($bride=='on'){$retval = $api->listSubscribe( "b0dcf8dbe3", $email, $merge_vars );}
	

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
<link href="/css/Bride-417.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-bride.tpl"}
	<div id="page-body">
		<!--<div id="breadcrumb">
		{section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
		</div>	-->	
	 	<div id="column-1">				
				
			{loadModules position="left"}		
		</div>
		<div id="columns-1-2">	
			{if $pagecontent<>''}
	 		<div id="home-splash">{$pagecontent}</div>	
			{/if}
			<div id="column-2">
			{loadModules position="middle"}
			</div>
			<div id="column-3">							  				  				  		
			{loadModules position="right"}
			</div>
		</div>			
	 	
</div>
{include file="footer-417.tpl"}
</div>
</body>
</html>
