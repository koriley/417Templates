{* Capture title content; don't include h2 tag if no content *}
{capture assign="listTitle"}{strip}
	{assign var="moduleDefaultTitle" value=""}
	{if $module.showArchiveLink == "true" && ($module.archiveLinkLocation|default:"top" == "top" || $module.archiveLinkLocation == "both")}
		<a class="btn archive" href="{$publication.params.mixedcontentarchiveurl}index.php?tagID={$contentTagIDs}{if $module.archiveListTitle <> ''}&title={$module.archiveListTitle|escape:url}{/if}&operator={$operator|escape:url}">{$module_archiveLinkText}</a>
		{assign var="moduleDefaultTitle" value="&nbsp;"}
	{/if}
	{if $Page->params.operator|strlen > 0 && ($module.dynamic == "archive")}
		{*We are loading an archive*}
		{$module_archiveLinkText}
	{else}
		{*We are loading a MCL*}
		{$module.listTitle|default:$moduleDefaultTitle}
	{/if}
{/strip}{/capture}
{if $listTitle<>''}
	<h2>{$listTitle}</h2>
{/if}