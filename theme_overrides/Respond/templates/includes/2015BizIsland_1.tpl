

{if $whichIsland == 1}
    <div id="island1" style="padding:25px; background-color:#eaeaea;"></div>
{literal}
    <script>
        var googleAd = "<div id='childAd_1' style='width:300px; height:250px; margin:auto; '><div id='div-gpt-ad-1443025537204-4' style='height:250px; width:300px;'><script type='text/javascript'>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1443025537204-4'); });<";

        googleAd += "/script></div></div>";
        jQuery('#island1').append(googleAd);
    </script>
{/literal}    
{/if}
{if $whichIsland == 2}
    <div id="island2" style="padding:25px; background-color:#eaeaea;"></div>
{literal}
    <script>
        var googleAd = "<div id='childAd_1' style='width:300px; height:250px; margin:auto; '><div id='div-gpt-ad-1443025537204-5' style='height:250px; width:300px;'><script type='text/javascript'>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1443025537204-5'); });<";

        googleAd += "/script></div></div>";
        jQuery('#island2').append(googleAd);
    </script>
{/literal}    
{/if}