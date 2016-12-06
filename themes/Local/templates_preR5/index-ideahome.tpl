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
<script src="/js/scroller.js" type="text/javascript"></script>
<link href="/css/417-ideahome.css" rel="stylesheet" type="text/css" />
{include file="oas_head.tpl"}
<meta name="verify-v1" content="xaVmDVEUXN7fkMDnA3eBmv0+PLuUC2UfOWzFjCdlQEI=" />
</head>
<body>
<div id="page-container">

{include file="top-ideahome.tpl"}
	<div id="page-body">
	 	<div id="columns-1-2">
			
			<div id="column-1">
			{loadModules position="left"}
			</div>
			
			<div id="column-2">
			
			<table cellspacing="0" cellpadding="0" class="container-table">
				<tr>
					<td class="tlc"></td>
					<td class="top"></td>
					<td class="trc"></td>
				</tr>
				<tr>
					<td class="left"></td>
					<td>
					<h1>{$Page->title}</h1>
    					{if $pagecontent<>''}{$pagecontent}{/if}										  				  				  		
					{loadModules position="middle"}
					</td>
					<td class="right"></td>
				</tr>
				<tr>
					<td class="blc"></td>
					<td class="bottom"></td>
					<td class="brc"></td>
				</tr>
			</table>
			</div>
		</div>		
	</div>
		<div id="bottom">
		<table cellspacing="0" cellpadding="0" class="container-table-footer">
				<tr>
					<td class="tlc"></td>
					<td class="top"></td>
					<td class="trc"></td>
				</tr>
				<tr>
					<td class="left"></td>
					<td>
    						<table cellpadding="0" cellspacing="0">
							<tr>
								<td><a href="http://www.adeckardinteriors.com/" onMouseOver="document.MyImage.src='/images/ideahome/sponsors/sponsor_01roll.jpg';" onMouseOut="document.MyImage.src='/images/ideahome/sponsors/sponsor_01.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_01.jpg" name="MyImage"></a> </td>
								<td><a href="http://www.dougpittsconstruction.net/" onMouseOver="document.MyImage2.src='/images/ideahome/sponsors/sponsor_02roll.jpg';" onMouseOut="document.MyImage2.src='/images/ideahome/sponsors/sponsor_02.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_02.jpg" name="MyImage2"></a></td>
								<td><a href="http://www.brashears.com/" onMouseOver="document.MyImage3.src='/images/ideahome/sponsors/sponsor_03roll.jpg';" onMouseOut="document.MyImage3.src='/images/ideahome/sponsors/sponsor_03.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_03.jpg" name="MyImage3"></a></td>
								<td><a href="http://www.uniquetile.com/" onMouseOver="document.MyImage4.src='/images/ideahome/sponsors/sponsor_04roll.jpg';" onMouseOut="document.MyImage4.src='/images/ideahome/sponsors/sponsor_04.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_04.jpg" name="MyImage4"></a></td>
							</tr>
							<tr>
								<td><a href="http://www.fraleymasonryonline.com/" onMouseOver="document.MyImage5.src='/images/ideahome/sponsors/sponsor_05roll.jpg';" onMouseOut="document.MyImage5.src='/images/ideahome/sponsors/sponsor_05.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_05.jpg" name="MyImage5"></a> </td>
								<td><a href="http://www.meeks.com/" onMouseOver="document.MyImage6.src='/images/ideahome/sponsors/sponsor_06roll.jpg';" onMouseOut="document.MyImage6.src='/images/ideahome/sponsors/sponsor_06.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_06.jpg" name="MyImage6"></a></td>
								<td><a href="#" onMouseOver="document.MyImage7.src='/images/ideahome/sponsors/sponsor_07roll.jpg';" onMouseOut="document.MyImage7.src='/images/ideahome/sponsors/sponsor_07.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_07.jpg" name="MyImage7"></a></td>
								<td><a href="https://www.therisingstar.com/" onMouseOver="document.MyImage8.src='/images/ideahome/sponsors/sponsor_08roll.jpg';" onMouseOut="document.MyImage8.src='/images/ideahome/sponsors/sponsor_08.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_08.jpg" name="MyImage8"></a></td>
							</tr>
							<tr>
								<td><a href="http://www.euroworlddesign.com/" onMouseOver="document.MyImage9.src='/images/ideahome/sponsors/sponsor_09roll.jpg';" onMouseOut="document.MyImage9.src='/images/ideahome/sponsors/sponsor_09.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_09.jpg" name="MyImage9"></a> </td>
								<td><a href="#" onMouseOver="document.MyImage10.src='/images/ideahome/sponsors/sponsor_10roll.jpg';" onMouseOut="document.MyImage10.src='/images/ideahome/sponsors/sponsor_10.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_10.jpg" name="MyImage10"></a></td>
								<td><a href="http://www.springfielddesignassociation.org/" onMouseOver="document.MyImage11.src='/images/ideahome/sponsors/sponsor_11roll.jpg';" onMouseOut="document.MyImage11.src='/images/ideahome/sponsors/sponsor_11.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_11.jpg" name="MyImage11"></a></td>
								<td><a href="http://www.metroappliancesandmore.com/" onMouseOver="document.MyImage12.src='/images/ideahome/sponsors/sponsor_12roll.jpg';" onMouseOut="document.MyImage12.src='/images/ideahome/sponsors/sponsor_12.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_12.jpg" name="MyImage12"></a></td>
							</tr>
							<tr>
								<td><a href="http://www.scshomeentertainment.com/" onMouseOver="document.MyImage13.src='/images/ideahome/sponsors/sponsor_13roll.jpg';" onMouseOut="document.MyImage13.src='/images/ideahome/sponsors/sponsor_13.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_13.jpg" name="MyImage13"></a> </td>
								<td><a href="http://www.seminoledecorcenter.com/Seminole-decor-center.php" onMouseOver="document.MyImage14.src='/images/ideahome/sponsors/sponsor_14roll.jpg';" onMouseOut="document.MyImage14.src='/images/ideahome/sponsors/sponsor_14.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_14.jpg" name="MyImage14"></a></td>
								<td><a href="http://thelighthousegallery.com/" onMouseOver="document.MyImage15.src='/images/ideahome/sponsors/sponsor_15roll.jpg';" onMouseOut="document.MyImage15.src='/images/ideahome/sponsors/sponsor_15.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_15.jpg" name="MyImage15"></a></td>
								<td><a href="http://liveatsummitridge.com/enter/" onMouseOver="document.MyImage16.src='/images/ideahome/sponsors/sponsor_16roll.jpg';" onMouseOut="document.MyImage16.src='/images/ideahome/sponsors/sponsor_16.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_16.jpg" name="MyImage16"></a></td>
							</tr>


						</table>
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td><a href="http://www.thecarpetshoppe.com/" onMouseOver="document.MyImage17.src='/images/ideahome/sponsors/sponsor_17roll.jpg';" onMouseOut="document.MyImage17.src='/images/ideahome/sponsors/sponsor_17.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_17.jpg" name="MyImage17"></a> </td>
								<td><a href="#" onMouseOver="document.MyImage18.src='/images/ideahome/sponsors/sponsor_18roll.jpg';" onMouseOut="document.MyImage18.src='/images/ideahome/sponsors/sponsor_18.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_18.jpg" name="MyImage18"></a></td>
								<td><a href="http://www.fritzdc.com/Home.html" onMouseOver="document.MyImage19.src='/images/ideahome/sponsors/sponsor_19roll.jpg';" onMouseOut="document.MyImage19.src='/images/ideahome/sponsors/sponsor_19.jpg';">
								<img src="/images/ideahome/sponsors/sponsor_19.jpg" name="MyImage19"></a></td>
							</tr>

						</table>
					</td>
					<td class="right"></td>
				</tr>
				<tr>
					<td class="blc"></td>
					<td class="bottom"></td>
					<td class="brc"></td>
				</tr>
			</table>
					
		</div>

</div>

</body>
</html>
