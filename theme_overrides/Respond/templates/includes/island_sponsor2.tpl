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
{elseif $Page->tags[356]<>'' || $article.tags[356]<>''}
    {assign var='tagname' value='ettieEatsIsland'}
    {assign var='tagSystemName' value='ettieEatsIsland'}        
{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
{elseif $Page->tags[340]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
{elseif $Page->tags[376]<>'' || $article.tags[376]<>''}

    {assign var='tagname' value='Live Music'}	
    {assign var='tagSystemName' value='live-music'}

{elseif $publication.url=='/417-Home/'}         
    {assign var='tagname' value='homeMagazine'}	
    {assign var='tagSystemName' value='homeMagazine'} 


{/if}

{*$tagSystemName*}

<div class="islandSponsorship2" id="{$tagSystemName}_sponsor"></div>
    {if $tagSystemName == "people-pics"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                 var ad = "<div id='div-gpt-ad-1479474669376-98' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-98'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                
            </script>
        {/literal}

    {elseif $tagSystemName == "live-music"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-92' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-92'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);

                //GA_googleFillSlot("musicIsland");

            </script>
        {/literal}

    {elseif $tagSystemName == "homeMagazine"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
var ad = "<div id='div-gpt-ad-1479474669376-81' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-81'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("Home_Island");

            </script>
        {/literal}
        
        {elseif $tagSystemName == "health"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
               var ad = "<div id='div-gpt-ad-1479474669376-72' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-72'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                   // GA_googleFillSlot("healthIsland");
                
               

            </script>
        {/literal}

    {elseif $tagSystemName == "wheres-417"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("wheres417_island");
            </script>
        {/literal}

    {elseif $tagSystemName == "ettieEatsIsland"}
        <!-- wheres417_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("ettieEatsIsland");
            </script>
        {/literal}

    
    {elseif $tagSystemName == "homepage"}
        <!-- 417_leaderBoard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                //GA_googleFillSlot("417_island");
            </script>
        {/literal}
    {elseif $tagSystemName == "homepageSponsorship"}
        <!-- 417_leaderBoard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                /GA_googleFillSlot("417_island");
            </script>
        {/literal}
    {elseif $tagSystemName == "best-of"}
        <!-- best_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                //GA_googleFillSlot("best_island");
            </script>
        {/literal}
    {elseif $tagSystemName == "calendar"}
        <!-- calendar_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("calendar_island");
            </script>
        {/literal}
    {elseif $tagSystemName == "shopping"}
        <!-- shopping_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("shopping_island");
            </script>
        {/literal}

    {elseif $tagSystemName == "events-and-contests"}
        <!-- ec_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                //GA_googleFillSlot("ec_island");
            </script>
        {/literal}
    {elseif $publication.url=='/417-Home/'}
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                //GA_googleFillSlot("Home_Island");
            </script>
        {/literal}
    {elseif $tagSystemName == "best-article"}
        <!-- best_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
              //  GA_googleFillSlot("bestOfArticle_island");
            </script>
        {/literal}
    {elseif $tagSystemName == "dining"}
        <!-- dining_leaderboard -->
        {literal}
            <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
               // GA_googleFillSlot("dining_island");
            </script>
        {/literal}
     {elseif $tagSystemName == ""}
        <!-- 417_leaderBoard -->
        {literal}
           <script type='text/javascript'>
                var ad = "<div id='div-gpt-ad-1479474669376-122' >\n\
            <script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-122'); });<";
                    ad += "/script></div>";
                    jQuery(".islandSponsorship2").append(ad);
                //GA_googleFillSlot("417_island");
            </script>

        {/literal}
    {/if}

