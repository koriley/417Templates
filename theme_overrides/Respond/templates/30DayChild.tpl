
{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{getpagedata id=$Page->pageid}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
{addcss file="30dayGiveAway.css" order="900"}
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">{literal}stLight.options({publisher: "748dac3f-826a-4195-8fa7-421fabf82ef3", doNotHash: false, doNotCopy: false, hashAddressBar: false});{/literal}</script>

</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014Top.tpl"}
<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container">
        <div class="row-fluid visible-desktop">
                <div class="column-top respond-container span12">
                	{assign var="respond_containers" value="12,12"}
            		<a href= "http://www.417mag.com/Summer-of-Giveaways/"><img src="http://417mag.com/images/30Days/Header_NEW.jpg" /></a>
                </div> 
        </div> 
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span5">
                	{assign var="respond_containers" value="12,5"}
            		{loadModules position="topleft"}
                        
                </div>
                <div class="column-top respond-container span4">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="topcenter"}
                </div>        
                <div class="column-middle respond-container span3">
                	{assign var="respond_containers" value="12,3"}
            		{loadModules position="topright"}
                </div>
            </div>
        <div class="row-fluid">
                <div class="column-top respond-container span9">
                	{assign var="respond_containers" value="12,9"}
                        <div id="mainChildImg"><img src="{php} echo $mypage; {/php}{if $pagedata.image <> '' }{$pagedata.image}{/if}" /></div>
                        {if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<div id="mainChildText"><MESSAGES></div>
            		{loadModules position="middle"}
                 </div>
                 <div class="column-top respond-container span3">
                	{assign var="respond_containers" value="12,3"}
            		{loadModules position="right"}
                 </div>
            </div>        
    </div>    
</div>
                
               
                
<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

<script>
    {literal}
        jQuery('.page-container .respond-container').css('border-right', '0px');
            jQuery('.page-container .row-fluid').css('border-bottom', '0px');
    {/literal}    
</script>    
<script>{literal} 
    

     jQuery('#inner div').mouseenter(function(){
           jQuery(this).find("#desc").fadeIn();
           jQuery(this).find("#descText").fadeIn();
     });
     jQuery('#inner div').mouseleave(function(){
            jQuery(this).find("#desc").fadeOut();
            jQuery(this).find("#descText").fadeOut();    
     });

{/literal}</script>