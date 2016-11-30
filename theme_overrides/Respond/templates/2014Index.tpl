{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}

<!DOCTYPE html>
<html lang="en">
    <head>
        {if $publication.url=='/417-Home/'}    
            {include file="2014HomeHead.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="INC_Head.tpl"}
        {else}
            {include file="2014head.tpl"}
            {addcss file="2014Article.css" order="99999999"}
            {addjs file="417pinit.js" position="footer"}
        {/if}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {if $publication.url=='/417-Home/'}    
            {include file="2014HomeTop.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="biz417Top.tpl"}
        {else}
            {include file="2014Top.tpl"}
        {/if}
        <div id="index-container" class="page-container container-fluid">
            {include file="breadcrumb.tpl"}
            <div class="columns-container">
                {if in_array("right", $activeModulePositions)}
                    <div class="row-fluid" id="topLeftandRight">
                        <div class="column-left respond-container span8">
                            {assign var="respond_containers" value="12,8"}
                            {loadModules position="top"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
                        {loadModules position="middle"}


                    </div>
                    <div class="column-middle respond-container span4">
                        {assign var="respond_containers" value="12,4"}
                        {loadModules position="right"}
                    </div>
                </div>
            {else}
                <div class="row-fluid" id="topLeftandRight">
                    <div class="column-left respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="top"}
                    {if $pagecontent<>''}{$pagecontent}{/if}
                    {loadModules position="middle"}


                </div>
            {/if}

        </div> 
    </div>
</div>
{include file="bottom.tpl"}
</body>
</html>


