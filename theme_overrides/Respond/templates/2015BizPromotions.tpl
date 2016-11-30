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
                    <div class="column-left respond-container span12" style="">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="top"}
                    </div>
                </div>
            </div>
            <div class="columns-container">
                <div class="row-fluid">
                    <div class="column-left respond-container span8" style="">
                        {assign var="respond_containers" value="12,8"}
                        {loadModules position="topleft"}
                    </div>
                    <div class="column-left respond-container span4" style="">
                        {assign var="respond_containers" value="12,4"}
                        {loadModules position="topright"}
                    </div>
                </div>
                    <div class="container calCenter">
                <div class="row-fluid">
                    <div class="column-left respond-container span12 " style="">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="middle"}
                    </div>
                </div></div></div>
<div class="columns-container">
                <div class="row-fluid">
                    <div class="column-left respond-container span6 production" style="">
                        {assign var="respond_containers" value="12,6"}
                        {loadModules position="left"}
                    </div>

                    <div class="column-right respond-container span6 production">
                        {assign var="respond_containers" value="12,6"}
                        {loadModules position="right"}
                    </div>
                </div>
                  
            </div> 
        </div>   
       <footer style="">
            <div >
                {assign var="respond_containers" value="12,12"}
                {*loadModules position="footer"*}
{include file="bottom.tpl"}
            </div>   
        </footer>
    </body>
</html>

{literal}
    <script>
        jQuery(document).ready(function(){
        jQuery('.smallStory').addClass('eventStory');
        //jQuery('.eventStory').removeClass('smallStory');
        jQuery('.article-tag').show();
        
        jQuery('.article-tag:contains("Biz ")').each(function(){
            jQuery(this).html(jQuery(this).html().split("Biz").join(""));
        });
        
        jQuery('.bizCar').css({'width':'100%','text-align':'center'});
        });
    </script>
      
    {/literal}