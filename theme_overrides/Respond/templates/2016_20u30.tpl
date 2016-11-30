{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417fashionation"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="INC_Head.tpl"}
        {addcss file="2016_20u30.css" order="500"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="biz417Top.tpl"}
        <div class="grad">
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
                        <div class="respond-container span12">
                            {assign var="respond_containers" value="12,12"}
                            <div class="headImage">
                                <a href="http://www.biz417.com/Biz417/20-Under-30/">
                                    <img src="/images/20u30/2016/20Under30_header_NEW.png" />
                                </a>
                                <a href="https://www.facebook.com/EliteMercedes/?fref=ts" target='_blank'>
                                    <div class="sticker"></div>
                                </a>
                            </div>
                            {loadModules position="top"}
                            {if $pagecontent<>''}
                            {eval var=$pagecontent}{/if}
                        </div>
                    </div> 
                    <div class="row-fluid">
                        <div class="respond-container span12">
                            {assign var="respond_containers" value="12,12"}
                            {loadModules position="middle"}   

                        </div>    
                    </div> 
                </div>   
            </div>
        </div>
        <div class="whiteBottom">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        <div class="pull-left" style="display:inline-block; margin-left:10px;">
                            {loadModules position="bottom"}
                        </div>
                        <div class="winnnerQuestion " style="display:inline-block; margin-top:35px; margin-left:10px;"><a href="mailto:janelle@417mag.com"><img src="/images/20u30/2016/20Under30_PastWinners_border.png" /></a></div>
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
        var firstRun = 0;
        var lastNum = 0;
        var windowWidth = jQuery(window).width();
        if (windowWidth > 700) {
            var headHeight = jQuery(".header").height();
            jQuery('.headImage').css({'margin-top': headHeight + 'px'});

        }
        if (windowWidth >= 1200) {
            jQuery('.koHelper').width(900);
        }
        jQuery('.winnerVideo').mouseenter(function () {

            this.play();
        });

        setInterval(function () {
            if (firstRun == 0) {
                var number = Math.floor((Math.random() * 5) + 1);
                jQuery(".win" + number).trigger("mouseenter");
                firstRun = 1;
            }
            number = Math.floor((Math.random() * 40) + 1) / 2;
            number = Math.round(number);
            if(lastNum === number){
                number = Math.floor((Math.random() * 40) + 1) / 2;
            number = Math.round(number);
            }
            lastNum = number;
            jQuery(".win" + number).trigger("mouseenter");
           // console.log(number);
        }, 3000);

    {/literal}    
</script>    
