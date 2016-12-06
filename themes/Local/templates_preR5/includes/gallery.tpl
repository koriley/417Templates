{if $Page->tags[174]<>'' || $article.tags[174]<>''}

{else}
<!--<h1>{$gallery.title}</h1>-->
{if $gallery.description}<p>{$gallery.description}</p>{/if}
				
{/if}

<form method="get" name="gallery">
<table id="gallery">
<tbody>
	<tr>
		<td colspan="2">{pager formname="gallery" style="button" data=$imagelist maxpages=100 rowsperpage=8}</td>
	</tr>
	<tr>
	{section name=image loop=$imagelist start=$si max=8}{strip}
		<td class="image">
		
		<img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[image].image}&w=270&q=75" alt="{$imagelist[image].description}" />
		<div class="image-title">{$imagelist[image].title}</div>
		<div class="description">{$imagelist[image].description}</div>
{if $imagelist[image].photocredits}<div class="description">{$imagelist[image].photocredits}</div>{/if}
		</td>
	{if $smarty.section.image.iteration % 2 == 0 && !$smarty.section.image.last}</tr>
	<tr> {/if} {/strip} {/section} </tr>
</tbody>
</table>
</form>
