{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="2015restaurantMonth.css" order="999999999999999999999"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="micrositeStickyHeader.tpl"}

        {include file="restaurantMonthNav.tpl"}
        <div class="sizeDiv"></div>





        {*include file="breadcrumb.tpl"*}
        {* PAGE CONTENT AND TITLE*}
        {assign var="showpagetools" value=false}
        {pagetools}
        {if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
            {assign var="showpagetools" value=true}
        {/if}


        <div class="row-fluid" id="topLeftandRight">
            <div class="column-left respond-container span3">
                {assign var="respond_containers" value="12,3"}
                {loadModules position="topleft"}

            </div>
            <div class="column-top respond-container span5">
                {assign var="respond_containers" value="12,5"}
                {loadModules position="topcenter"}
            </div>        
            <div class="column-middle respond-container span4">
                {assign var="respond_containers" value="12,4"}
                {loadModules position="topright"}
            </div>
        </div>
        <div id="publication-container" class="page-container container-fluid">                
            <div class="columns-container">            
                <div class="row-fluid">
                    <div class="column-top respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        {loadModules position="middle"}

                    </div>
                </div>        
            </div>    
        </div>



        <div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
        {include file="bottom.tpl"}



    </body>
</html>


<script>{literal}
    jQuery(document).ready(function() {
        var screenWidth = jQuery(document).width();
// jQuery(".sizeDiv").text(screenWidth);



    });

jQuery('.row-fluid').css('border-bottom','0px');
    {/literal}</script>