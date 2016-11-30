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
    {assign var='tagname' value='cuteBaby'}
    {assign var='tagSystemName' value='cuteBaby'}          
{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
{elseif $Page->tags[379]<>'' || $article.tags[379]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='coverDog'}	
    {assign var='tagSystemName' value='coverDog'}
{elseif $Page->tags[340]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
{elseif $Page->tags[341]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}   

{elseif $publication.url=='/417-Home/'}         
    {assign var='tagname' value='homeMagazine'}	
    {assign var='tagSystemName' value='homeMagazine'} 



{/if}
<script>
    var screenWidth = jQuery(window).width();

</script>
{*$tagSystemName*}
<div class="footSponsorship" id="{$tagSystemName}_sponsor" style="text-align:center;"></div>

    {if $tagSystemName == "people-pics"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}

    {elseif $tagSystemName == "homeMagazine"}
        <!-- wheres417_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    
    {elseif $tagSystemName == "wheres-417"}
        <!-- wheres417_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    
    {elseif $tagSystemName == "homepage"}
        <!-- 417_leaderBoard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "best-of"}
        <!-- best_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "calendar"}
        <!-- calendar_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "shopping"}
        <!-- shopping_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}

    {elseif $tagSystemName == "events-and-contests"}
        <!-- ec_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $publication.url=='/417-Home/'}
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "best-article"}
        <!-- best_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "dining"}
        <!-- dining_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == "restaurantMonth"}
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>
        {/literal}
    {elseif $tagSystemName == ""}
        <!-- 417_leaderBoard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>

        {/literal}

    {elseif $tagSystemName == "health"}
        <!-- peoplePics_leaderboard -->
        {literal}
             <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>

        {/literal}

    {elseif $tagSystemName == "spaces"}
        <!-- peoplePics_leaderboard -->
        {literal}
            <script type='text/javascript'>
                if (screenWidth >= 1200) {
                    var ad = "<div id='div-gpt-ad-1479474669376-10' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-10'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                    
                }
                if ((screenWidth >= 770) && (screenWidth <= 1200)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-5' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-5'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
                if ((screenWidth >= 200) && (screenWidth <= 760)) {
                     var ad = "<div id='div-gpt-ad-1479474669376-7' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-7'); });<";
                    ad += "/script></div>";
                    jQuery(".footSponsorship").append(ad);
                }
            </script>

        {/literal}
    {/if}



