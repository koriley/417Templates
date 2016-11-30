{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="bestof417"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="bestOf.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}

    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {*include file="micrositeStickyHeader.tpl"*}
        <div class="headerBlack" style="">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12" id="">
                        <div class="bestOfHeader">
                            <a href="http://417mag.secondstreetapp.com/l/Best-of-417-2017-Voting-1/" ><img src="/images/bestof/2017/BestOf17_postVotingHeader.png" /></a>
                            <a href="http://www.corporatebusinesssystems.com/" target="_blank"><div class="corperateBusinessSticker"></div></a>
                        </div>
                        {loadModules position="top"}
                    </div>
                </div>
            </div>
        </div>
        {if $pagecontent<>''}
            <div class="row">
                <div class="container">
                    {$pagecontent}
                </div>
            </div>{/if}
            {loadModules position="middle"}





<div style="text-align:center;" >{include file="footboard.tpl"}</div> 
            <div class="footBar" style="">{loadModules position="footer"}</div>
            {include file="bottom.tpl"}
        </body>
    </html>

    {literal}
        <script>


        </script>   
    {/literal}    




 


