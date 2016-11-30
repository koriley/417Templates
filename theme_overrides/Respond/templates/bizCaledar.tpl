
{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="INC_Head.tpl"}

</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="biz417Top.tpl"}
<div id="publication-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    <div class="columns-container">
       
        <div class="row-fluid">
                <div class="column-top respond-container span12">
                	{assign var="respond_containers" value="12,12"}
            		{loadModules position="middle"}
                </div>
            </div>        
    </div>    
</div>
                
               
                
<div style="text-align:center;" class="hidden-phone"></div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
            jQuery('.calendar-results').css({'display':'block !important'});
        </script>
    {/literal}
{/if}    
