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
    <div class="container">
    {elseif $contentlist_count > 0}
        {* This is the initial call, build the module UI structure. *}
        <div class="  withAd content-item-list grid module {$module.class} content-closed" id="{$module.htmlid}">
            {include file="contentitemlist.listtitle.include.tpl"}

            {assign var="numericWidth" value=$gridImageParams.gridNumericWidth}
            {assign var="numericHeight" value=$gridImageParams.gridNumericHeight}
            <div class="content ">
                <div class="articles">
                    {foreach name="l" from=$contentlist key="key" item="item"}

                        {include file="contentitemsummaryCustom.tpl"}
                        <div id="widthHeight"></div>
                    {/foreach}
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


            var screenWidth = jQuery(document).width();
            //alert(screenWidth);

            if (screenWidth >= 1025) {ldelim}
                    jQuery(".withAd .articles .article-item:nth-child(7n+1)").addClass("bigStory").prepend('<div class="motherAd" style=""></div>');
                    jQuery(".withAd .articles .article-item").not(":nth-child(7n+1)").addClass("smallStory");
                    //alert(screenWidth);
                    //these two chunks will either hide or show big or small, this is located in the css file bizContentItemListGrid.css



                    var i = 8;
                    rjQuery('.withAd .article-item .motherAd').each(function(){ldelim}

                                var googleAd = "<div id='childAd_" + i + "' style='width:728px; height:90px;  margin:auto; '><div id='div-gpt-ad-1443025537204-" + i + "' style='height:90px; width:728px;'><script type='text/javascript'>googletag.cmd.push(function() {ldelim} googletag.display('div-gpt-ad-1443025537204-" + i + "'); {rdelim});<";

                                googleAd += "/script></div></div>";

                                rjQuery(this).append(googleAd);
                                i++;

            {rdelim});
            {rdelim}
                rjQuery(document).ready(function() {ldelim}
            {strip}



                        ContentItemListGridLayout.init({ldelim}
                                    "moduleId": "{$module.htmlid}",
                                    "moduleClassName": ".module.article-list.grid",
                                    "slide": ".article-item",
                                    "image": ".article-image",
                                    "content": ".article-content",
                                    "overrideAutoWidth": "true",
                                    "gridBreakpointValues": "",
                                    "default": "{$gridImageParams.numSlidesDefault}",
                                    "980": "{$gridImageParams.numSlides980}",
                                    "979": "{$gridImageParams.numSlides979}",
                                    "767": "{$gridImageParams.numSlides767}",
                                    "480": "{$gridImageParams.numSlides480}",
                                    "320": "{$gridImageParams.numSlides320}"
                                    ,
                                    "slideImageWidth": {$gridImageParams.minimumImageWidth}
                {rdelim});
            {/strip}




                        rjQuery('.withAd .article-item .article-content .article-tags .article-tag').each(function(){ldelim}
                                    var myText = rjQuery(this).text();
                                    switch (myText) {ldelim}
                                                      case "Start":
                                                        rjQuery(this).addClass('start');
                                                        break;
                                                    case "Know":
                                                        rjQuery(this).addClass('know');
                                                        break;
                                                    case "Link":
                                                        rjQuery(this).addClass('link');
                                                        break;
                                                    case "Features":
                                                        
                                                        rjQuery(this).addClass('features');
                                                        break;
                                                    case "Biz Nominations":
                                                        rjQuery(this).addClass('nominations');
                                                        break;
                                                    case "Biz Events":
                                                        rjQuery(this).addClass('events');
                                                        break;
                                                    case "Biz The Scene":
                                                        rjQuery(this).addClass('link');
                                                        break;    

            {rdelim}



            {rdelim});

            {rdelim});


        </script>
    {/if}

</div>
{* Reset passed values to empty *}
{assign var="gridImageParams" value=''}