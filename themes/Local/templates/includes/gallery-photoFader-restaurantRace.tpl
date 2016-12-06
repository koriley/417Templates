{addjs file="base.js"}
{addjs file="photoFader.class.js"}
<form method="post" name="gallery" class="photoFader">
    <div><a href="http://www.417mag.com/2012-restaurant-month/Restaurant-Race-Photos/"><img src="http://www.417mag.com/images/restaurantMonth/2012/Reviews-tab.png" style="width:330px;" /> </a></div>
			<div class="photoFader-gallery">
			{counter start='0' name='number' print=false}
				
				<div class="photoFader-contentcontainer" >
					{section name=images loop=$imagelist}
					<div id="item{counter name='image'}" class="photo" style="width:330px;"><a href="{$imagelist[images].linkurl}"><img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[images].image}&amp;w=330&amp;h=250&amp;q=75" alt="{$imagelist[images].description|escape:'htmlall'}" /></a></div>
					{/section}
				</div>
				
			
				
			</div>
</form>
