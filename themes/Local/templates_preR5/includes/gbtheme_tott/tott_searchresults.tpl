{addjs file="/templates/includes/gbtheme_tott/ClientsCDE.class.js"}
<div class="listings" id="tott_geobase">
{assign var="counter" value="1"}
	{section name="x" loop=$listings max=$geobase.params.maxlistingsperpage|default:10}
	{strip}
    {if $listings[x].latitude == ''}
            <img style="display:none;" src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">
    {/if}
    {math equation="y - 1" y=$counter assign="idcounter"}
    {pageurl assign="url" reset=true name=$listings[x].company|nametopath listing=$listings[x].id filter='seo_url_filter'}
        <div class="client" id="client_container_{$listings[x].id}">
        {if isset($listings[x].image1)}{assign var="logo" value=$listings[x].image1}{else}{assign var="logo" value="/templates/includes/gbtheme_tott/tott_logo.png"}{/if}
        	{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img class="thumb" src="{imagesizer src=$logo zc=1 w=150 h=150 q=100 aoe=0}" alt="{$listings[x].company}" />{/trackerlink}
            <div class="screenshot" id="client_screenshot_{$listings[x].id}"><img alt="Screenshot of {$listings[x].company}" src="/templates/includes/gbtheme_tott/ajax_spinner.gif" /></div>
            <h4>{$listings[x].company}</h4>
            {tracker item="searchresults" itemid=$listings[x].id}
        </div>
        {/strip}
{/section}
 <div class="clearfix"></div>
</div>
<script type="text/javascript">
		new ClientsCDE('tott_geobase',{strip}[{section name="slides" loop=$listings max=$geobase.params.maxlistingsperpage|default:10}
		 {if isset($listings[slides].image2)}{assign var="photo" value=$listings[slides].image2}{else}{assign var="photo" value="/templates/includes/gbtheme_tott/tott_logo.png"}{/if}
				 "{imagesizer src=$photo h=340 w=340 q=100 zc=1 aoe=1}"{if $smarty.section.slides.last}{else},{/if}
				 {/section}
				 ]{/strip});
</script>