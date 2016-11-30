{*
	This module supports Infinite Scrolling

	The Infinite Scrolling variable: IS_AJAX will only be defined
	if the template is loaded through an AJAX call.  Otherwise,
	we know that the template is being loaded by the page (ie. first call).
*}

{* Loaded through header.  Redo if non-responsive pages are created??? *}
{* {addcss file="/core/media/css/contentitemlist.css"} *}

{addjs file="ContentItemListArranger.class.js" position="footer"}
{addjs file="contentitemlistGridLayout.js" position="footer"}
{* We only need this if we are doing infinite scrolling *}
{if istrue($module.paging == "infinitescroll") && !defined("IS_AJAX")}
	{addjs file="infinite_scrolling.js"}
{/if}

{assign var="archiveLabel" value=$strings_articlelist_grid_archive_label}
{* Set common variables used in all contentitemlist modules *}
{contentitemlistSetup module=$module moduleinfo=$moduleinfo article=$article archivelabel=$archiveLabel}

{* We need contentitemlist.infinite_scroll.tpl to be loaded after setup to get correct rowsPerPage value. *}
{if istrue($module.paging == "infinitescroll") && !defined("IS_AJAX")}
	{include file="contentitemlist.infinite_scroll.tpl" module=$module rowsPerPage=$rowsPerPage}
{/if}

{*
	Calculate values for image manipulation with defaults in one place.
	Values are used in calculations and to pass to the javascript for use
	in determining grid layout.
	These values will be used in the javascript code and also passed
	to the thumbnail image generator template through $gridImageParams.
	Note: reset $gridImageParams at end of file.
*}
{gridImageSizes module=$module}

{* Get content items matching passed in parameters *}
{getcontentitems tagids=$contentTagIDs what="items" order=$module.sortOrder popularrange=$module.popularRange max=$max_number issueid=$contentListIssue publicationid=$contentListPub contentTypes=$contenttypes module=$module paging=$doPaging si=$pagingSi rowsperpage=$rowsPerPage avoidId=$avoidId}

{if defined("IS_AJAX")}
	{* For Infinite Scroll: Just return a set of divs, one for each article *}
	{if $contentlist_count > 0}
		{assign var="numericWidth" value=$gridImageParams.gridNumericWidth}
		{assign var="numericHeight" value=$gridImageParams.gridNumericHeight}
		{include file="contentitemlist.basic.tpl"}
		{* reset optional parameters *}
		{assign var=numericWidth value=""}
		{assign var=numericHeight value=""}
	{/if}
{elseif $contentlist_count > 0}
	{* This is the initial call, build the module UI structure. *}
	<div class="content-item-list grid module {$module.class} content-closed" id="{$module.htmlid}">
		{include file="contentitemlist.listtitle.include.tpl"}

		{assign var="numericWidth" value=$gridImageParams.gridNumericWidth}
		{assign var="numericHeight" value=$gridImageParams.gridNumericHeight}
		<div class="content">
			<div class="articles">
				{include file="contentitemlist.basic.tpl"}
			</div>
		</div>
		{* reset optional parameters *}
		{assign var=numericWidth value=""}
		{assign var=numericHeight value=""}
	
		{if $enablePager=="true"}
			{pager rowsperpage=$rowsPerPage recordcount=$contentlist_max}
		{/if}
		

		{if $module.showArchiveLink == "true" && ($module.archiveLinkLocation|default:"top" == "bottom" || $module.archiveLinkLocation|default:"top" == "both")}
			<h2>
				<a class="btn archive" href="{$publication.params.mixedcontentarchiveurl}index.php?tagID={$contentTagIDs}{if $module.archiveListTitle <> ''}&title={$module.archiveListTitle|escape:url}{/if}&operator={$operator|escape:url}">{$module_archiveLinkText}</a>
			</h2>
		{/if}
	</div>

	{* Initialize Grid element for a particular module id *}
	<script type="text/javascript">
	rjQuery(document).ready(function() {ldelim}
		{strip}
		ContentItemListGridLayout.init({ldelim}
			"moduleId": "{$module.htmlid}",
			"moduleClassName": ".module.article-list.grid",
			"slide": ".article-item",
			"image": ".article-image",
			"content": ".article-content",
			"overrideAutoWidth": "true",	{* always overridden now*}
			"gridBreakpointValues":
				{ldelim}
					"default": "{$gridImageParams.numSlidesDefault}",
					"980": "{$gridImageParams.numSlides980}",
					"979": "{$gridImageParams.numSlides979}",
					"767": "{$gridImageParams.numSlides767}",
					"480": "{$gridImageParams.numSlides480}",
					"320": "{$gridImageParams.numSlides320}"
				{rdelim},
			"slideImageWidth": {$gridImageParams.minimumImageWidth}
		{rdelim});
		{/strip}
	{rdelim});
	</script>

{/if}


{* Reset passed values to empty *}
{assign var="gridImageParams" value=''}