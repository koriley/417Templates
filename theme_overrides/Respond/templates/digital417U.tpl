{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417culture"}
<!DOCTYPE html>
<html lang="en" >
    <head>
        {include file="2014head.tpl"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}
        {addjs file="https://cdn.rawgit.com/nnattawat/flip/v1.0.20/dist/jquery.flip.min.js" position="footer" order="9000"}
        {addcss file="digital417u.css" order="9000"}
        {addjs file="jquery.waypoints.min.js" position="footer" order="9005"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        <!--<div class="btn" id="backChange" style="position:fixed; top:0; left:0; z-index:1000000000;">Click here to change background</div>-->
        {*include file="micrositeStickyHeader.tpl"*}
        <div class="row">
            <div class="container">
                <div class="mother span12">

                    <div class="masterContainer">
                        {loadModules position="middle"}
                        
                        

                    </div>

                    
                        <div class="botomSpace" style="height:200px;"></div>


                </div> 
            </div>
        </div>
                        
                        <div  class="questions" style="position:fixed; height:25px; width:100%; bottom:0px;">
                            
                        </div>

<div id="waypoint" class="waypoint " style="height:200px; width:200px; display:none; color:white;">
    <div class="questionWords" style="display:none;">Have you REBOOTED?!</div>
                    </div>
    </body>
    {literal}
        <script>
            var screenWidth = jQuery(document).width();
            var screenHeight = jQuery(document).height();
            var firstRun = 0;
            var lastNum = 0;
            jQuery('.winnerVideo').mouseenter(function () {

                this.play();
            });
            setInterval(function () {
                if (firstRun == 0) {
                    var number = Math.floor((Math.random() * 5) + 1);
                    jQuery(".win" + number).trigger("mouseenter");
                    firstRun = 1;
                }
                number = Math.floor((Math.random() * 8) + 1)/2;
                number = Math.round(number);
                if(lastNum === number){
                    number = Math.floor((Math.random() * 8) + 1)/2;
                number = Math.round(number);
                }
                    lastNum = number;
                jQuery(".win" + number).trigger("mouseenter");
            
                console.log(number);
            }, 3000);


jQuery('.waypoint').css({width:screenWidth+'px', height:screenHeight+'px', background:'black'});
jQuery('.questions').click(function(){
    jQuery('.waypoint').css({position:'fixed', left:0, top:0});
    jQuery('.waypoint').show(1000, function(){
        jQuery('.questionWords').css("position","fixed");
        jQuery('.questionWords').css("top", Math.max(0, ((jQuery(window).height() - jQuery('.questionWords').outerHeight()) / 2)));
        jQuery('.questionWords').css("left", Math.max(0, ((jQuery(window).width() - jQuery('.questionWords').outerWidth()) / 2)));
        //jQuery('.questionWords').css("z-index", indexHigh+2);
        jQuery('.questionWords').css('overflow','hidden');
        jQuery('.questionWords').show(1000);
    });
   
    
});

jQuery('.waypoint').click(function(){
    jQuery(this).hide(500);
});
        </script>
    {/literal}
</html>