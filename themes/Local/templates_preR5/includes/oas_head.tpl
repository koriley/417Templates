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

