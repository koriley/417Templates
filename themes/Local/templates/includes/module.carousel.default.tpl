{addjs file="http://cdn.jquerytools.org/1.2.6/all/jquery.tools.min.js" order=99}
{addcss file=$module.stylesheet}
{assign var="needles" value="/core/media/css/,/media/css/,/css/,.css"}
{assign var="needle" value=','|explode:$needles}
{* cropping options *}
{assign var="rivista_sg_zc" value=0}
		{assign var="rivista_car_far" value="C"}
		{assign var="rivista_car_aoe" value=0}
		{if $module.imageBackground<>''}
			{assign var="rivista_car_bg" value=$module.imageBackground|replace:'#':''}
		{else}
			{assign var="rivista_car_bg" value='ffffff'}
		{/if}
		{if $module.crop === "true"}
			{assign var="rivista_car_zc" value=1}
			{assign var="rivista_car_far" value=0}
			{assign var="rivista_car_aoe" value=1}
{/if}


<div class="{$module.stylesheet|replace:$needle:''} module{if $module.class<>''} {$module.class}{/if}"{if $module.id<>''} id="{$module.id}"{/if}>

{if $module.listTitle<>''}<h2>{$module.listTitle}</h2>{/if}

<div class="content">
{if $module.issueid == "current"}{assign var="articleListIssue" value=$Page->publication.issue.id}{/if}
{if $module.publication == "host"}{assign var="articleListPub" value=$Page->publication.id}{/if}
{if is_array($module.tagids)}
	{if $module.operator == "and"}
    	{assign var="articleTagIDs" value=" AND "|implode:$module.tagids}
 	{else}
		{assign var="articleTagIDs" value=","|implode:$module.tagids}
    {/if}
{else}
	{if $module.operator == "and"}
    	{assign var="articleTagIDs" value=$module.tagids|replace:",":" AND "}
    {else}
		{assign var="articleTagIDs" value=$module.tagids}
    {/if}
{/if}

{getarticles tagids=$articleTagIDs what="article" order=$module.sortOrder max=$module.number issueid=$articleListIssue publicationid=$articleListPub}
{assign var="articleListIssue" value=""}
{assign var="articleTagIDs" value=""}
{* navigation items *}
{if istrue($module.buttons)}<div class="next-previous"><a class="prev browse left">Previous</a> <a class="next browse right">Next</a></div>{/if}
{if $module.navigation !== "none"}<div class="navi" id="navi_{$module.contentmoduleid}"></div>{/if}
{if $module.autoscroll === "true" && $module.autoscroll_controls === "true"}
	<div class="auto-play-controls">
		<button id="scrollable_button_{$module.contentmoduleid}" onclick="scrollableButton_{$module.contentmoduleid}.playPause();"{if $module.autoscroll_autoplay === "true"} class="playpause playing">Pause{else} class="playpause">Play{/if}</button>
    </div>
{/if}

<!-- root element for scrollable -->
<div class="scrollable" id="scrollable_{$module.contentmoduleid}" style="height: {$module.scrollableHeight|default:350}px;">   
   <!-- root element for the items -->
   <div class="items" style="height: {$module.scrollableHeight}px;">
     {foreach name="a" from=$articles key="key" item="article"}
      {if $smarty.foreach.a.iteration % $module.itemsPerSlide === 1 || $module.itemsPerSlide === "1"}<div class="slide">{/if}
      	<div class="slide-item" style="height:{$module.itemHeight}px; width:{$module.itemWidth}px;">
          <div class="article-text">
          	  {if $module.showTags === "true"}
                  <div class="tags">
                  {foreach from=$article.tags key="key" item="tag"}
                      {if is_array($module.tagids)}
                  	{if $module.tagids|in_array:$tag.tagid}{if $module.showArchiveLink === "true" && !empty($config.articlearchiveurl)}<a href="{$config.articlearchiveurl}?tagID={$tag.tagid}">[{$tag.tag}]</a>{else}[{$tag.tag}]{/if}{/if}
                      {else}
                  	{if $module.tagids==$tag.tagid}{if $module.showArchiveLink === "true" && !empty($config.articlearchiveurl)}<a href="{$config.articlearchiveurl}?tagID={$tag.tagid}">[{$tag.tag}]</a>{else}[{$tag.tag}]{/if}{/if}
                      {/if}
                  {/foreach}
                  </div>
              {/if}
              <h4><a href="{$article.url}">{$article.title}</a></h4>
              {if $module.showSubTitle == "true" && $article.subtitle<>''}<p class="subtitle">{$article.subtitle|strip_tags:false}</p>{/if}
        	  {if $module.showSummary == "true" && $article.summary<>''}<p class="summary">{$article.summary|strip_tags:false}</p>{/if}
              {if $module.showByLine == "true" && $article.author<>''}<p class="by-line">{$article.author}</p>{/if}
              {if $module.showPublishedDate == "true"}
                  {if $module.publishedDateFormat <> ''}
                      {assign var=articledateformat value=$module.publishedDateFormat}
                  {else}
                      {assign var=articledateformat value=$config.dateformat}
                  {/if}
                  <p class="article-date">{$article.datepublished|dateformat:$articledateformat}</p>
              {/if}
          </div>
          {if $module.showThumbnail === "true"}
             <a href="{$article.url}">
    			<img src="{imagesizer src=$article.url|cat:$article.image w=$module.imageWidth h=$module.imageHeight q=$module.quality far=$rivista_car_far zc=$rivista_car_zc aoe=$rivista_car_aoe bg=$rivista_car_bg}" alt="{$article.title}" />
             </a>
           {/if}
      </div>
      {if $smarty.foreach.a.iteration % $module.itemsPerSlide === 0 || $smarty.foreach.a.last}</div>{/if}
    {/foreach}
   </div>
</div>
</div>
</div>
<script>
// initialize scrollable
jQuery(document).ready(function() {ldelim}
  // Initialize the Scrollable control
{strip}
  scrollableObject_{$module.contentmoduleid} = jQuery("#scrollable_{$module.contentmoduleid}").scrollable({ldelim}
		circular: {$module.circular},
		easing:"{$module.easing}",
		speed:{$module.speed},
		vertical:{$module.vertical}
	{rdelim}){if $module.navigation !== "none"}.navigator({ldelim}
		{if $module.navigation === "numbered"}indexed : true,{/if}
		idPrefix : "scrollable_{$module.contentmoduleid}_navigation_item"
	{rdelim}){/if}{if $module.autoscroll === "true"}.autoscroll({ldelim}
		interval: {$module.autoscroll_interval},
		autoplay: {$module.autoscroll_autoplay},
		autopause: {$module.autoscroll_autopause}
	{rdelim}
	){/if}{/strip};
	scrollableAPI_{$module.contentmoduleid} = jQuery("#scrollable_{$module.contentmoduleid}").data("scrollable");
	{if $module.autoscroll === "true"}
		scrollableButton_{$module.contentmoduleid} = {ldelim}{rdelim};
    	{if $module.autoscroll_autoplay === "true"}
    		scrollableButton_{$module.contentmoduleid}.playState = 1;
    	{else}
    		scrollableButton_{$module.contentmoduleid}.playState = 0;
    	{/if}
    			scrollableButton_{$module.contentmoduleid}.playPause = function(){ldelim}
    			scrollableButton_{$module.contentmoduleid}.button = jQuery('#scrollable_button_{$module.contentmoduleid}')[0];
    			
				if (scrollableButton_{$module.contentmoduleid}.playState === 1) {ldelim}
					scrollableAPI_{$module.contentmoduleid}.stop();
					scrollableButton_{$module.contentmoduleid}.playState = 0;
					scrollableButton_{$module.contentmoduleid}.button.innerHTML = 'Play';
					jQuery('#scrollable_button_{$module.contentmoduleid}').toggleClass('playing');
				{rdelim} else {ldelim}
					scrollableAPI_{$module.contentmoduleid}.play();
					scrollableButton_{$module.contentmoduleid}.playState = 1;
					scrollableButton_{$module.contentmoduleid}.button.innerHTML = 'Pause';
					jQuery('#scrollable_button_{$module.contentmoduleid}').toggleClass('playing');
				{rdelim}
			{rdelim}
	{/if}
{rdelim});
</script>
