{assign var="isarchive" value="true"}
{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}

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
        
        <div class="row-fluid">
                <div class="column-top respond-container span12">
                	{assign var="respond_containers" value="12,12"}
            		<h1>{$publication.title} Issues</h1>
		<form method="post" name="issuelist" action="">
		<table class="issuelist">
			<tbody>
				<tr>
				{section name=issue loop=$issuelist start=$si}{strip}
					<td valign="top">
					<a href="{$issuelist[issue].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$issuelist[issue].url}/{$issuelist[issue].image}&w=120" width="120" border="0"></a>
					<div><a href="{$issuelist[issue].url}">{$issuelist[issue].period} {$issuelist[issue].year}</a></div>
					</td>
				{if $smarty.section.issue.iteration % 4 == 0 && !$smarty.section.issue.last}</tr>
				<tr> {/if} {/strip} {/section} </tr>
			</tbody>
		</table>
		<div>{pager formname="issuelist" style="button" data=$imagelist rowsperpage=8}</div>
		</form>
		</div>	
                </div>
            </div>        
    </div>    

              
               
                
<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
        </script>
    {/literal}
{/if}    
