{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="BIZBSCHOOL"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="INC_Head.tpl"}
        {addcss file="bizBSchool.css" order="999999"}


    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="biz417Top.tpl"}

        <div class="headerBackground" style="">
            {loadModules position="middle"}  

        </div>


        <div id="index-container" class="page-container container-fluid" >

            <div class="columns-container">


                <div class="row-fluid" id="topLeftandRight">
                    <div class="column-left respond-container span8" style="border-right:1px dashed black !important;">
                        {assign var="respond_containers" value="12,8"}
                    {if $pagecontent<>''}{$pagecontent}{/if}
                    {loadModules position="left"}



                </div>
                <div class="column-middle respond-container span4" style="/*border-left:1px dashed black !important;*/ padding-left:5px;">
                    {assign var="respond_containers" value="12,4"}
                    {loadModules position="right"}


                </div>
            </div>

        </div> 
    </div>
    <script>
        {literal}
           
        {/literal}
    </script> 
</body>
</html>



{literal}

{/literal} 