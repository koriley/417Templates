{getarticles tagids=$tagID what="article" max='65' order="ops_article.displayorder asc,ops_article.datepublished desc"}				

	
{if isset($articles)}
    {if $size == "small"}
	  <div class="whitebox">
		<div ><a href="/417-Magazine/417-Dining/417-Eats/"><img src="http://www.417mag.com/images/elements/headers/417eats.png" style=" width:298px;" /></a></div>
		<div class="eatsWords" style="padding-left:5px; padding-right:5px; margin-left:10px;">417 Magazine is always on the move finding the best breakfast, lunch and dinner, and we have it all here in our 417 Eats photo blog. Enjoy!</div>
                <div class="boxcontent" style="padding-left:25px;">

	<table >
            <tr> 
            {counter start=0 print=false}
            {section name="a" loop=$articles start=0 max=12}	
                {counter assign=count}
	{math equation='x + y' x=$count y=0 assign=cp}
                
                   
                    <td  valign="top">{$k}{if $articles[a].image<>''}<a href="{$articles[a].url}">{$k}<img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&w=74&q=100{else}/images/blank.gif{/if}" border="0" width="74"  {if $articles[a].image<>''}{else} height="74" {/if}alt="{$articles[a].title}" style="margin-left:1px; height:74px; width:74px;" /></a>{else}&nbsp;{/if}</td>		
										
		{if $smarty.section.a.iteration % 3 == 0 && !$smarty.section.a.last}</tr>
	<tr>
	{/if}
		{/section}
                </tr>
	
	
	</table>					
		
		
		</div>
	  </div>	
{/if}
{if $size == "large"}
    <div >
		<!--<div ><img src="http://www.417mag.com/images/elements/headers/417eats.png" style=" width:298px;" /></div>
		<div class="eatsWords" style="padding-left:5px; padding-right:5px; margin-left:10px;">417 Magazine is always on the move finding the best breakfast, lunch and dinner, and we have it all here in our 417 Eats photo blog. Enjoy!</div>-->
                <div  style="padding-left:25px;">
                    <form method="get" name="gallery">
	<table >
	<tr><td colspan="5" class="gallery-pager">{pager formname="gallery" style="button" data=$articles rowsperpage=65}</td></tr>
           
           <tr> 
            {counter start=0 print=false}
            {section name="a" loop=$articles start=$si max=65 }	
                {counter assign=count}
	{math equation='x + y' x=$count y=$si assign=cp}
                
                   
                    <td  id="blog417EatsTD" valign="top" style="">{$k}{if $articles[a].image<>''}<a href="{$articles[a].url}"><img src="{if $articles[a].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[a].url}{$articles[a].image}&q=100{else}/images/blank.gif{/if}" border="0"   {if $articles[a].image<>''}{else}  {/if}alt="{$articles[a].title}" style="height:171px; width:171px;" /></a>{else}&nbsp;{/if}		
			<br /><h4><a href="{$articles[a].url}">{$articles[a].title}</a></h4></td>							
		{if $smarty.section.a.iteration % 3 == 0 && !$smarty.section.a.last}</tr>
	<tr>
	{/if}
		{/section}
                </tr>
	
	<tr><td colspan="5" class="gallery-pager">{pager formname="gallery" style="button" data=$articles rowsperpage=65}</td></tr>
	</table>					
		</form>
		
		</div>
	  </div>
{/if}    
{/if}

