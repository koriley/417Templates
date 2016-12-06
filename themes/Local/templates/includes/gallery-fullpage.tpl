{addjs file="base.js"}

			<div class="photoFader-gallery">
			{counter start='0' name='number' print=false}
				<div class="photoFaderMenu">
				{counter start="0" print=false}
				{section name=links loop=$imagelist}
					<div><a href="" name="item{counter}" onclick="return false;">{$imagelist[links].title}</a></div>
				{/section}
				</div>
				<div class="photoFader-contentcontainer">
					{section name=images loop=$imagelist}
					<div id="item{counter name='image'}" class="photo"><a href="{$imagelist[images].linkurl}"><img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[images].image}&amp;h=249&amp;w=400&amp;q=90" alt="{$imagelist[images].description|escape:'htmlall'}" /></a></div>
					{/section}
				</div>
				<!--<div class="controls">
					<a href="" onclick="return false;" class="previous">&laquo;</a><a href="" onclick="return false;" class="play">Pause</a><a href="" onclick="return false;" class="next" >&raquo;</a>
				</div>-->
			</div>





