<!--<div>
			{weatherinfo zipcode="65809"}
				<table id="weather-date">
					<tr>
						<td valign="middle" class="weather">
						{if $SERVERINFO.SERVER_PORT!=='443'}<a href="/417-Magazine/Weather/">{$weather.image}</a>{/if}
						<a href="/417-Magazine/Weather/">{$weather.temp}</a><br><br>
						<div align="center">
						<a href="/417-Magazine/Weather/" style="font-size:9px;font-family:arial">[More Info]</a>
						</div>
						</td>
						
						
					</tr>
				</table>	
		
</div>

<div id="search-navbar">				
	<form method="get" name="searchform" action="/417-Magazine/Search/index.php">			
			<table border="0" cellspacing="0" cellpadding="0" id="search-form">					
				<tr>
				   <td>
					<form action="http://www.google.com/cse" id="cse-search-box">
    					<input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
    					<input type="hidden" name="ie" value="UTF-8" />
    					<input type="text" name="q" size="40" />
    					<input type="submit" name="sa" value="Search" />
  				       </form>
                                </td>					
				</tr>			
			</table>
	</form>	
	<div id="headerright">
		{if $Page->user->id==''}<a href="/417-Magazine/My-Account">Log In</a>{else}
<a href="/417-Magazine/My-Account/index.php?action=logout">Log Off</a>{/if}&nbsp;&nbsp;&nbsp;&nbsp;<a href="/417-Magazine/Site-Map">Site Map</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Store/Subscribe/index.php">Subscribe</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/My-Account">My Account</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/About-417">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/About-417/Contact-Us/">Contact</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Advertise">Advertise</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/My-Account/?mod=OpsGeobase&option=signup&cid=3&signupstep=products">Business</a>
	</div>
</div>-->
<!--<div id="topbanner" class="clearfix">-->
<table style="float:left; padding-bottom:0px;">
<tr>
<td>

<a href="http://www.facebook.com/417Bride" target="_blank"><img src="/images/facebook.jpg" /></a><a href="http://twitter.com/417_magazine" target="_blank"><img style="padding-left:3px;" src="/images/twitter.jpg" /></a><a id="pintrest-pin" class="pinit" href='{literal}javascript:void((function(){var e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)})());{/literal}'><img src="/images/elements/pinit.jpg" /></a>
</td>
</tr></table>
	<div style="width:970px; height:125px; clear:both;">
       <div style="background-image:url(/images/bride/head2.png); width:970px; height:125px;" >
       <div style="float:left; width:450px; height:125px; cursor:pointer;" onclick="location.href='http://www.417bride.com/';" ></div>
        
	</div>
		

	</div>

	

	
	{if $ishome<>''}
		{assign var='nav1' value='-on'}
	{elseif $Page->tags[175]<>'' || $article.tags[175]<>''}
		{assign var='tagname' value='Real Weddings'}
		{assign var='tagSystemName' value='Real-Weddings'}
		{assign var='nav2' value='-on'}
	{elseif $Page->tags[89]<>'' || $article.tags[89]<>''}
		{assign var='tagname' value='Wedding Day Style'}
		{assign var='tagSystemName' value='wedding-day-style'}
		{assign var='nav3' value='-on'}		
	{elseif $Page->tags[99]<>'' || $article.tags[99]<>''}
		{assign var='tagname' value='Real Stories'}
		{assign var='tagSystemName' value='real-stories'}
		{assign var='nav4' value='-on'}		
	{elseif $Page->tags[112]<>'' || $article.tags[112]<>''}
		{assign var='tagname' value='Resources'}
		{assign var='tagSystemName' value='resources'}
		{assign var='nav5' value='-on'}
	{elseif $Page->tags[108]<>'' || $article.tags[108]<>''}
		{assign var='tagname' value='Engaged'}
		{assign var='tagSystemName' value='engaged'}
		{assign var='nav6' value='-on'}	
	{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
		{assign var='tagname' value='People Pics'}
		{assign var='tagSystemName' value='people-pics'}
	  
				
	{elseif $isarchive<>''}
		{assign var='nav1' value='-on'}
	{/if}
<div id="navigation-container">	
<table id="nav">
	<tr>
		<td class="{$nav1}"><a class="menuButton{$nav1}" href="http://www.417bride.com"  id="bm18" onmouseover="buttonMouseover(event, 'm15');">Home</a></td>
		<td class="{$nav2}"><a class="menuButton{$nav2}" href="http://www.417bride.com/417-Bride/Real-Weddings/"  id="bm19" onmouseover="buttonMouseover(event, 'm12');">Real Weddings</a></td>
		<td class="{$nav6}"><a class="menuButton{$nav6}" href="http://www.417bride.com/417-Bride/Bride-Galleries/"  id="bm15" onmouseover="buttonMouseover(event, 'm99');">Idea Photo Galleries</a></td>
		<td class="{$nav3}"><a class="menuButton{$nav3}" href="http://www.417bride.com/417-Bride/Articles/index.php"  id="bm12" onmouseover="buttonMouseover(event, 'm13');">Articles</a></td>
		<td class="{$nav4}"><a class="menuButton{$nav4}" href="http://www.417bride.com/417-Bride/Resources/index.php?"  id="bm13" onmouseover="buttonMouseover(event, 'm99');">Resources</a></td>
		<td class="{$nav5}"><a class="menuButton{$nav4}" href="http://www.417bride.com/417-Bride/Engaged/index.php?" id="bm17" onmouseover="buttonMouseover(event, 'm99');">Engaged?</a>
              <td class="{$nav7}"><a class="menuButton{$nav7}" href="http://417mag.com"  id="bm16" onmouseover="buttonMouseover(event, 'm99');">417 Magazine</a></td>
		
	
	</tr>
</table>
<div style="align:center;">

</div>


<!-- pencil bannerstuff -->
<div style="width:100%; position:fixed; bottom:0px;">
    <div id="smallPencil" style="text-align:center; width:970px; height:35px;">{literal}
<script type='text/javascript'>
GA_googleFillSlot("bridePencil");
</script>
{/literal}</div>
    <div id="bigPencil" style="text-align:center; width:970px; height:245px; display:none;">
        {literal}
<script type='text/javascript'>
GA_googleFillSlot("brideBigPencil");
</script>
{/literal}
    </div>
</div>
  
    {literal}
        <script>
            jQuery("#smallPencil").mouseenter(function(){
                jQuery('#smallPencil').hide();
                jQuery('#bigPencil').show(); 
                   
            });

             jQuery("#bigPencil").mouseleave(function(){
                    jQuery('#bigPencil').hide();
                    jQuery('#smallPencil').show();
            });
        </script>
     {/literal}   
    <!-- facebook html5 stuff -->
    <div id="fb-root"></div>{literal}
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=215752671882491&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>{/literal}
