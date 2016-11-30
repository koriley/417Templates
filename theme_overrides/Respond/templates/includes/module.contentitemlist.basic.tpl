{*
	This module supports Infinite Scrolling

	The Infinite Scrolling variable: IS_AJAX will only be defined
	if the template is loaded through an AJAX call.  Otherwise,
	we know that the template is being loaded by the page (ie. first call).
*}

{* Loaded through header.  Redo if non-responsive pages are created??? *}
{* {addcss file="/core/media/css/contentitemlist.css"} *}

{addjs file="ContentItemListArranger.class.js" position="footer"}
{* We only need this if we are doing infinite scrolling *}
{if istrue($module.paging == "infinitescroll") && !defined("IS_AJAX")}
	{addjs file="infinite_scrolling.js"}
{/if}

{assign var="archiveLabel" value=$strings_articlelist_basic_archive_label}
{* Set common variables used in all contentitemlist modules *}
{contentitemlistSetup module=$module moduleinfo=$moduleinfo article=$article archivelabel=$archiveLabel}

{* We need contentitemlist.infinite_scroll.tpl to be loaded after setup to get correct rowsPerPage value. *}
{if istrue($module.paging == "infinitescroll") && !defined("IS_AJAX")}
	{include file="contentitemlist.infinite_scroll.tpl" module=$module rowsPerPage=$rowsPerPage}
{/if}

{* Get content items matching passed in parameters *}
{getcontentitems tagids=$contentTagIDs what="items" order=$module.sortOrder popularrange=$module.popularRange max=$max_number issueid=$contentListIssue publicationid=$contentListPub contentTypes=$contenttypes module=$module paging=$doPaging si=$pagingSi rowsperpage=$rowsPerPage avoidId=$avoidId}


{if defined("IS_AJAX")}
	{* For Infinite Scroll: Just return a set of divs, one for each article *}
	{if $contentlist_count > 0}
		{include file="contentitemlist.basic.tpl"}
	{/if}
{elseif $contentlist_count > 0}
	{* This is the initial call, build the module UI structure. *}
	<div class="content-item-list basic module {$module.class}" id="{$module.htmlid}">
		{include file="contentitemlist.listtitle.include.tpl"}
		<div class="content">
			<div class="articles">
				{include file="contentitemlist.basic.tpl"}
			</div>
		</div>
		

		{if $module.showArchiveLink == "true" && ($module.archiveLinkLocation|default:"top" == "bottom" || $module.archiveLinkLocation|default:"top" == "both")}
			<h2>
				<a class="btn archive" href="{$publication.params.mixedcontentarchiveurl}index.php?tagID={$contentTagIDs}{if $module.archiveListTitle <> ''}&title={$module.archiveListTitle|escape:url}{/if}&operator={$operator|escape:url}">{$module_archiveLinkText}</a>
			</h2>
		{/if}
	</div>
	{if $enablePager=="true"}
		{pager rowsperpage=$rowsPerPage recordcount=$contentlist_max}
	{/if}
{/if}