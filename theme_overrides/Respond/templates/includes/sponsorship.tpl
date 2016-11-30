{if $ishome<>''}
    {assign var='tagSystemName' value='homepage'}
    {assign var='nav1' value='-on'}
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
    {assign var='tagName' value='Best Of Article'}
    {assign var='tagSystemName' value='best-article'}        

{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
    {assign var='tagname' value='Stuff to Do'}
    {assign var='tagSystemName' value='calendar'}
    {assign var='nav3' value='-on'}		
{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}		
{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
    {assign var='tagname' value='Best of 417'}
    {assign var='tagSystemName' value='best-of'}
    {assign var='nav5' value='-on'}
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Shopping'}
    {assign var='tagSystemName' value='shopping'}
    {assign var='nav6' value='-on'}	
{elseif $Page->tags[162]<>'' || $article.tags[162]<>''}
    {assign var='tagname' value='Services'}
    {assign var='tagSystemName' value='services'}
    {assign var='nav11' value='-on'}
{elseif $Page->tags[166]<>'' || $article.tags[167]<>''}
    {assign var='tagname' value='Wheres 417'}
    {assign var='tagSystemName' value='wheres-417'} 
{elseif $Page->tags[335]<>'' || $article.tags[335]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='cuteBaby'}	
    {assign var='tagSystemName' value='cuteBaby'}
{elseif $Page->tags[379]<>'' || $article.tags[379]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='coverDog'}	
    {assign var='tagSystemName' value='coverDog'}
{elseif $Page->tags[336]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}

{elseif $Page->tags[340]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
{elseif $Page->tags[341]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}  
{elseif $Page->tags[348]<>'' || $article.tags[348]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='greatTrails'}	
    {assign var='tagSystemName' value='greatTrails'}
{elseif $Page->tags[356]<>'' || $article.tags[356]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='ettieEats'}	
    {assign var='tagSystemName' value='ettieEats'}        
{elseif $Page->tags[349]<>'' || $article.tags[349]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='homepageSponsorship'}	
    {assign var='tagSystemName' value='homepageSponsorship'} 
{elseif $Page->tags[366]<>'' || $article.tags[366]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='lakesideLiving'}	
    {assign var='tagSystemName' value='lakesideLiving'}  
{elseif $Page->tags[376]<>'' || $article.tags[376]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='liveMusic'}	
    {assign var='tagSystemName' value='liveMusic'} 

{elseif $publication.url=='/417-Home/'}         
    {assign var='tagname' value='homeMagazine'}	
    {assign var='tagSystemName' value='homeMagazine'} 

{/if}
<script>
    var screenWidth = jQuery(window).width();
</script>
{*$tagSystemName*}
<div class="sponsorship hidden-phone" id="{$tagSystemName}_sponsor"></div>

    {if $tagSystemName == "people-pics"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-99' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-99'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-96' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-96'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }

            </script>
        {/literal}
    {elseif $tagSystemName == "lakesideLiving"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-94' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-94'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-93' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-93'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }

            </script>
        {/literal}
        
        {elseif $tagSystemName == "lakesideLiving"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
               if (screenWidth >= 1200) {
                   var ad = "<div id='div-gpt-ad-1479474669376-94' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-94'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-93' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-93'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }

            </script>
        {/literal}
        
    {elseif $tagSystemName == "coverDog"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-42' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-42'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-40' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-40'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                    
                }

            </script>
        {/literal}

    {elseif $tagSystemName == "ettieEats"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-57' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-57'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-56' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-56'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}

    {elseif $tagSystemName == "best-of"}
        <!-- best_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-18' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-18'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-14' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-14'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}


    {elseif $tagSystemName == "homeMagazine"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-83' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-83'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-76' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-76'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "10mbPage"}
        <!--/* OpenX Javascript Tag v2.8.10 */-->

       {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-83' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-83'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-76' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-76'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "homepage"}
        <!-- 417_leaderBoard -->
        {literal}
            <script type='text/javascript'>
                /* var screenWidth = jQuery(window).width();
                 if(screenWidth >= 1200){
                 GA_googleFillSlot("homepageSponsorship_leaderboard");
                 }
                 if((screenWidth >= 770) && (screenWidth <= 1200)){
                 GA_googleFillSlot("homepageSponsorship_banner");
                 }      */
            </script>

        {/literal}
    {elseif $tagSystemName == "cuteBaby"}
        <!-- cutestBaby_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var screenWidth = jQuery(window).width();

                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-43' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-43'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-44' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-44'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   

                }

            </script>
        {/literal}
    {elseif $tagSystemName == "homepageSponsorship"}
        <!-- 417_leaderBoard -->
        {literal}
            <script type='text/javascript'>
                
                var screenWidth = jQuery(window).width();
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-8' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-8'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    //googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-87'); });
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-4' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-4'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    
    {elseif $tagSystemName == "calendar"}
        <!-- calendar_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-37' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-37'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                  
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-33' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-33'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "shopping"}
        <!-- shopping_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-112' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-112'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-109' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-109'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}

    {elseif $tagSystemName == "events-and-contests"}
        <!-- ec_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-54' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-54'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-51' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-51'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $publication.url=='/417-Home/'}
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-83' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-83'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-76' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-76'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "best-article"}
        <!-- best_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-18' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-18'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-14' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-14'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "dining"}
        <!-- dining_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-49' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-49'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-46' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-46'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "restaurantMonth"}
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-8' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-8'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-3' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-3'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
            </script>
        {/literal}
    {elseif $tagSystemName == ""}
        <!-- 417_leaderBoard -->
        {literal}
            
            <script type='text/javascript'>


                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-8' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-8'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-3' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-3'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
            </script>

        {/literal}

    {elseif $tagSystemName == "health"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-73' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-73'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                   
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-68' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-68'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }

            </script>
        {/literal}

    {elseif $tagSystemName == "spaces"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-116' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-116'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-114' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-114'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }

            </script>
        {/literal}

    {elseif $tagSystemName == "greatTrails"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-67' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-67'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                    var ad = "<div id='div-gpt-ad-1479474669376-66' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-66'); });<";
                    ad += "/script></div>";
                    jQuery(".sponsorship").append(ad);
                    
                }

            </script>
        {/literal}



    {/if}

