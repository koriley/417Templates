{assign var="ishome" value="TRUE"}
{assign var="oaspos" value="Top1,x01,Right1"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/bvm.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
</head>

<body>
<div id="page-container">

{include file="top-bvm4.tpl"}
	<div id="page-body">
              <div id="column-1">				
			{loadModules position="left"}		
		</div>
	 	<div id="columns-2-3">
                     <div id="home-splash">{loadModules position="top"}</div>
	 		<!--<div id="home-splash" class="clearfix">{if $pagecontent<>''}{$pagecontent}{/if}</div>	-->
			<div id="column-2">
			{loadModules position="middle"}
			</div>
			<div id="column-3">							  				  				  		
			{loadModules position="right"}
			</div>
		</div>			
	 	
       </div>
{include file="footer-bvm.tpl"}
</div>

</body>
</html>
