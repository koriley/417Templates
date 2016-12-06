{addjs file="/core/media/js/slideshow.js"}
<table id="gallery">
<tbody>
	<tr>
		
		<td colspan="5" class="gallery-pager">{pager formname="gallery" style="button" data=$imagelist rowsperpage=16}</td>
	</tr>
	<tr>
	{counter start=0 print=false}
{section name=image loop=$imagelist start=$si max=16}
	{counter assign=count}
	{math equation='x + y' x=$count y=$si assign=cp}
		<td class="image">
		<a href="{$gallery.url}{$imagelist[image].image}" onclick="galleryPopup('index.php?mode=popup&cp={$cp}&view=slideshow&play=0','width=740,height=590,scrollbars=no'); return false;"><img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[image].image}&w=100&h=100&zc=1&q=100" alt="{$imagelist[image].title}" /></a></div>
		</td>
	{if $smarty.section.image.iteration % 4 == 0 && !$smarty.section.image.last}</tr>
	<tr>
	{/if}
	{/section} </tr>

	
</table>