{addjs file="base.js"}
{addjs file="photoFader.class.js"}
<form method="post" name="gallery" class="photoFader">
			<div class="photoFader-gallery">
			{counter start='0' name='number' print=false}
				
				<div class="photoFader-contentcontainer">
					{section name=images loop=$imagelist}
					<div id="item{counter name='image'}" class="photo"><a href="{$imagelist[images].linkurl}"><img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[images].image}&amp;w=300&amp;h=250&amp;q=75" alt="{$imagelist[images].description|escape:'htmlall'}" /></a></div>
					{/section}
				</div>
				
			
				<div class="photoFaderMenu">
				{counter start="0" name='box' print=false}
				{section name=links loop=$imagelist}
					<div><a href="" onclick="return false;" name="item{counter}">{$imagelist[links].title}</a></div>
				{/section}
				</div>
			</div>
</form>
