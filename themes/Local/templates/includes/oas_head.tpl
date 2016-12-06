	{if $ishome<>''}
		{assign var='nav1' value='-on'}
	{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
		{assign var='tagname' value='Dininng'}
		{assign var='tagSystemName' value='dining'}
		{assign var='nav2' value='-on'}
	{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
		{assign var='tagname' value='Calendar'}
		{assign var='tagSystemName' value='calendar'}
		{assign var='nav3' value='-on'}		
	{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
		{assign var='tagname' value='People Pics'}
		{assign var='tagSystemName' value='people-pics'}
		{assign var='nav4' value='-on'}		
        {elseif $Page->tags[47]<>'' || $article.tags[47]<>''}
		{assign var='tagname' value='People Pics'}
		{assign var='tagSystemName' value='people-pics'}
		{assign var='nav4' value='-on'}		
	{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
		{assign var='tagname' value='Best Of'}
		{assign var='tagSystemName' value='best-of'}
		{assign var='nav5' value='-on'}
	{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
		{assign var='tagname' value='Shopping'}
		{assign var='tagSystemName' value='shopping'}
		{assign var='nav6' value='-on'}	
         {elseif $Page->tags[327]<>'' || $article.tags[327]<>''}
		{assign var='tagname' value='Restaurant Month'}
		{assign var='tagSystemName' value='restaurantMonth'}
		{assign var='nav6' value='-on'}
	{elseif $publication.url=='/417-Home/'}
		{assign var='nav9' value='-on'}	
		{assign var='tagname' value='417 Home'}	
		{assign var='tagSystemName' value='home'}	
				
	{elseif $isarchive<>''}
		{assign var='nav1' value='-on'}
	{/if}


{include file="head.tpl"}

{literal}
    <script type='text/javascript' src='http://partner.googleadservices.com/gampad/google_service.js'>
</script>
<script type='text/javascript'>
GS_googleAddAdSenseService("ca-pub-1773708874419999");
GS_googleEnableAllServices();
</script>
<script type='text/javascript'>
GA_googleAddSlot("ca-pub-1773708874419999", "417_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "417_island");
GA_googleAddSlot("ca-pub-1773708874419999", "417_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "417_leaderBoard");
GA_googleAddSlot("ca-pub-1773708874419999", "417_leaderboard2");
GA_googleAddSlot("ca-pub-1773708874419999", "417_skyscraper");
GA_googleAddSlot("ca-pub-1773708874419999", "417_skyscraper2");
GA_googleAddSlot("ca-pub-1773708874419999", "best_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "best_island");
GA_googleAddSlot("ca-pub-1773708874419999", "best_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "best_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "best_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "bestOfArticle_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "bestOfArticle_island");
GA_googleAddSlot("ca-pub-1773708874419999", "bestOfArticle_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "bestOfArticle_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "bestOfArticle_skyscraper");
GA_googleAddSlot("ca-pub-1773708874419999", "calendar_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "calendar_island");
GA_googleAddSlot("ca-pub-1773708874419999", "calendar_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "calendar_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "calendar_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "dining_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "dining_island");
GA_googleAddSlot("ca-pub-1773708874419999", "dining_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "dining_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "dining_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "ec_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "ec_island");
GA_googleAddSlot("ca-pub-1773708874419999", "ec_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "ec_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "ec_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "favorites_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "favorites_island");
GA_googleAddSlot("ca-pub-1773708874419999", "favorites_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "favorites_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "favorites_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_island");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_leaderboard2");
GA_googleAddSlot("ca-pub-1773708874419999", "peoplePics_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "shopping_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "shopping_island");
GA_googleAddSlot("ca-pub-1773708874419999", "shopping_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "shopping_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "shopping_skyScraper");
GA_googleAddSlot("ca-pub-1773708874419999", "wheres417_banner");
GA_googleAddSlot("ca-pub-1773708874419999", "wheres417_island");
GA_googleAddSlot("ca-pub-1773708874419999", "wheres417_island2");
GA_googleAddSlot("ca-pub-1773708874419999", "wheres417_leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "wheres417_skyscraper");
GA_googleAddSlot("ca-pub-1773708874419999", "PencilBanner");
GA_googleAddSlot("ca-pub-1773708874419999", "wallpaper");
GA_googleAddSlot("ca-pub-1773708874419999", "wallpaperTest");
GA_googleAddSlot("ca-pub-1773708874419999", "homePageWallPaperOnly");
GA_googleAddSlot("ca-pub-1773708874419999", "Home_Leaderboard");
GA_googleAddSlot("ca-pub-1773708874419999", "Home_Island");
GA_googleAddSlot("ca-pub-1773708874419999", "Home_Skyscraper");
GA_googleAddSlot("ca-pub-1773708874419999", "Home_Banner");
GA_googleAddSlot("ca-pub-1773708874419999", "Home_footboard");
GA_googleAddSlot("ca-pub-1773708874419999", "brideLeaderboard"); 
GA_googleAddSlot("ca-pub-1773708874419999", "brideIsland");
GA_googleAddSlot("ca-pub-1773708874419999", "brideWallpaper");
GA_googleAddSlot("ca-pub-1773708874419999", "bridePencil");
GA_googleAddSlot("ca-pub-1773708874419999", "brideBigPencil");
    GA_googleAddSlot("ca-pub-1773708874419999", "brideSkyscraper");
</script>
<script type='text/javascript'>
GA_googleFetchAds();
</script>
{/literal}