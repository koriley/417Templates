{*
This module has been optimized for Responsive sites and may need
modification to work with classic, non-Responsive Rivista.
*}
{assign var="itemUrl" value=$item.url}
{if $item.pagetype == "gallery"}
    {getpagedata id=$module.galleryPageId}{* get the gallery url to use when building links, if provided *}
    {if $module.galleryPageId <> '' && $module.galleryPageId <> 0}
        {* if a gallery landing page was specified, use that url for the links *}
        {assign var="itemUrl" value=$pagedata.url|cat:"index.php/gallery/"|cat:$item.itemid|cat:"/"}
    {else}
        {* no gallery landing page, try to use a page that the gallery is on (default behavior) *}
        {assign var="itemUrl" value=$item.url}
    {/if}
{/if}

{*Check the publication ID's for this contents page. If it is set to this pub, show a url here, otherwise show a url to the main pub*}
{assign var="current_pub" value=$publication.id}
{assign var="item_pub" value=$item.params.publicationid}
{if !empty($item_pub)}
    {*we are going to show a link to the main publication.*}
    {if strpos($item_pub, $current_pub) === false && strlen($item.domain) !== 0}
        {assign var="itemUrl" value=$item.domain|cat:$itemUrl}
    {/if}
{/if}

{assign var="imagePosition" value=$module.imagePosition|default:left}

<div class='article-item clearfix photo {section loop=$item.tags name="tag"} tag_{$item.tags[tag].tagid}{/section}{if istrue($module.showShareButtons|default:false)} share_buttons_padding{/if}{if istrue($item.params.is_sponsored_link|default:false)} link_advertisement{/if}{if $item.params.added_classes|strlen > 0} {$item.params.added_classes}{/if} item_pagetype_{$item.pagetype}' data-contenttype={$item.contenttype} data-pagetype={$item.pagetype} data-itemid={$item.itemid}>

    <div class="myBigContent" >

        <div style="float:left; width:50%;">{if $imagePosition != "bottom"}
            {*include file="contentitem.thumbnail.include.tpl"*}<div class="article-image {section loop=$item.tags name="tag"} tag_{$item.tags[tag].tagid}{/section}"><a href="{$item.url}"><img src="{$item.url}{$item.image}" /></a></div>
            {/if}
        
        
        </div>
            <div style="float:left; width:40%; margin:10px;">
                <div class="article-content {section loop=$item.tags name="tag"} tag_{$item.tags[tag].tagid}{/section}">
                    {* Check if tags should be shown on TOP (vs none or bottom); code repeated below for BOTTOM *}
                    {if $module.showTags == "top" &&  $contentTagIDArray<>''}
                        <div class="article-tags" style="display:block;">
                            {section name="t" loop=$item.tags}
                                {if $item.tags[t].params.showonweb != 'no' && in_array($item.tags[t].tagid, $contentTagIDArray)}

                                    {*If we have specified a page for this tag to go to, then go there.*}
                                    {if !empty($item.tags[t].params.link_destination) && !empty($item.tags[t].params.destination_url) && $item.tags[t].params.link_destination == "page"}
                                        <a class="archive" href="{$item.tags[t].params.destination_url}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                        {else}
                                        <a class="archive" href="{$publication.params.mixedcontentarchiveurl}index.php/title/{$item.tags[t].tag|escape:url}/?tagID={$item.tags[t].tagid}&operator={$module.operator}"><div class="article-tag" style="display:block;">{$item.tags[t].tag}</div></a>
                                        {/if}
                                    {/if}
                                {/section}
                        </div>
                    {/if}
                    <h3 class="article-title"><a href="{$itemUrl}" {if istrue($item.params.new_window|default:false)}target="_blank"{/if}>{$item.title}</a></h3>

                    <div class="summary">{$item.summary|strip_tags:false}</div>
                    {if $module.showByLine == "true" && $item.author<>''}<div class="item-byline">{$item.author}</div>{/if}
                    {if $module.showPublishedDate == "true"}
                        {if $module.publishedDateFormat <> ''}
                            {assign var=itemdateformat value=$module.publishedDateFormat}
                        {else}
                            {assign var=itemdateformat value=$config.dateformat}
                        {/if}
                        <div class="item-date">{$item.datepublished|dateformat:$itemdateformat}</div>
                    {/if}
                    {if $itemBottom<>''}
                        <a class="article-item-bottom" href="{$itemUrl}" {if istrue($item.params.new_window|default:false)}target="_blank"{/if}>{$itemitemBottom}</a>
                    {/if}
                    {if $item.params.additional_note|strlen > 0}
                        <div class='additional_note'>{$item.params.additional_note}</div>
                    {/if}
                    {* Check if tags should be shown on BOTTOM (vs none or bottom); code repeated above for TOP *}
                    {if $module.showTags == "bottom" &&  $contentTagIDArray<>''}
                        <div class="article-tags">
                            {section name="t" loop=$item.tags}
                                {if $item.tags[t].params.showonweb != 'no' && in_array($item.tags[t].tagid, $contentTagIDArray)}
                                    {*If we have specified a page for this tag to go to, then go there.*}
                                    {if !empty($item.tags[t].params.link_destination) && !empty($item.tags[t].params.destination_url) && $item.tags[t].params.link_destination == "page"}
                                        <a class="archive" href="{$item.tags[t].params.destination_url}"><div class="article-tag" >{$item.tags[t].tag}</div></a>
                                        {else}
                                        <a class="archive" href="{$publication.params.mixedcontentarchiveurl}index.php/title/{$item.tags[t].tag|escape:url}/?tagID={$item.tags[t].tagid}&operator={$module.operator}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                        {/if}
                                    {/if}
                                {/section}
                        </div>
                    {/if}
                </div>
            </div>
        </div>
        <div class="mySmallContent">
            {if $imagePosition != "bottom"}
                {include file="contentitem.thumbnail.include.tpl"}
            {/if}

            <div class="article-content {section loop=$item.tags name="tag"} tag_{$item.tags[tag].tagid}{/section}">
                {* Check if tags should be shown on TOP (vs none or bottom); code repeated below for BOTTOM *}
                {if $module.showTags == "top" &&  $contentTagIDArray<>''}
                    <div class="article-tags">
                        {section name="t" loop=$item.tags}
                            {if $item.tags[t].params.showonweb != 'no' && in_array($item.tags[t].tagid, $contentTagIDArray)}

                                {*If we have specified a page for this tag to go to, then go there.*}
                                {if !empty($item.tags[t].params.link_destination) && !empty($item.tags[t].params.destination_url) && $item.tags[t].params.link_destination == "page"}
                                    <a class="archive" href="{$item.tags[t].params.destination_url}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                    {else}
                                    <a class="archive" href="{$publication.params.mixedcontentarchiveurl}index.php/title/{$item.tags[t].tag|escape:url}/?tagID={$item.tags[t].tagid}&operator={$module.operator}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                    {/if}
                                {/if}
                            {/section}
                    </div>
                {/if}
                <h3 class="article-title"><a href="{$itemUrl}" {if istrue($item.params.new_window|default:false)}target="_blank"{/if}>{$item.title}</a></h3>
                {if $module.showSubTitle == "true" && $item.subtitle<>''}<div class="deck">{$item.subtitle|strip_tags:false}</div>{/if}
                {if $module.showSummary == "true" && $item.summary<>''}<div class="summary">{$item.summary|strip_tags:false}</div>{/if}
                {if $module.showByLine == "true" && $item.author<>''}<div class="item-byline">{$item.author}</div>{/if}
                {if $module.showPublishedDate == "true"}
                    {if $module.publishedDateFormat <> ''}
                        {assign var=itemdateformat value=$module.publishedDateFormat}
                    {else}
                        {assign var=itemdateformat value=$config.dateformat}
                    {/if}
                    <div class="item-date">{$item.datepublished|dateformat:$itemdateformat}</div>
                {/if}
                {if $itemBottom<>''}
                    <a class="article-item-bottom" href="{$itemUrl}" {if istrue($item.params.new_window|default:false)}target="_blank"{/if}>{$itemitemBottom}</a>
                {/if}
                {if $item.params.additional_note|strlen > 0}
                    <div class='additional_note'>{$item.params.additional_note}</div>
                {/if}
                {* Check if tags should be shown on BOTTOM (vs none or bottom); code repeated above for TOP *}
                {if $module.showTags == "bottom" &&  $contentTagIDArray<>''}
                    <div class="article-tags">
                        {section name="t" loop=$item.tags}
                            {if $item.tags[t].params.showonweb != 'no' && in_array($item.tags[t].tagid, $contentTagIDArray)}
                                {*If we have specified a page for this tag to go to, then go there.*}
                                {if !empty($item.tags[t].params.link_destination) && !empty($item.tags[t].params.destination_url) && $item.tags[t].params.link_destination == "page"}
                                    <a class="archive" href="{$item.tags[t].params.destination_url}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                    {else}
                                    <a class="archive" href="{$publication.params.mixedcontentarchiveurl}index.php/title/{$item.tags[t].tag|escape:url}/?tagID={$item.tags[t].tagid}&operator={$module.operator}"><div class="article-tag">{$item.tags[t].tag}</div></a>
                                    {/if}
                                {/if}
                            {/section}
                    </div>
                {/if}
            </div>

            {if $imagePosition == "bottom"}
                {include file="contentitem.thumbnail.include.tpl"}
            {/if}

            {if istrue($module.showShareButtons|default:false)}
                <div class='share-buttons share-buttons-unloaded'>
                    {addthis title=$item.title summary=$item.summary subtitle=$item.subtitle url=$itemUrl code=$publication.params.addthis_list_code}
                </div>
            {/if}
        </div></div>

    {if $item.moduleId}
        <div class="inline-module clearfix photo">
            <div class="inner-inline-module">
                {if $item.moduleType == 'responsivead'}
                    {* Create a placeholder for the ad. *}
                    <div class="rad module openx notdisplayed{if defined('IS_AJAX')} fromajax{/if}" style="display: none;" data-moduleid="{$item.moduleId}" data-position="{$item.moduleParams.position}" data-min="{$item.moduleParams.minwidth}" data-max="{$item.moduleParams.maxwidth}">
                        {if istrue($item.moduleParams.showCaption|default:true)}<div class="advertisement">Advertisement</div>{/if}
                    </div>
                {elseif $item.moduleType == 'responsivegoogledfp'}
                    {* Create a placeholder for the ad. *}
                    <div class="rad module googledfp notdisplayed{if defined('IS_AJAX')} fromajax{/if}" style="display: none;" data-moduleid="{$item.moduleId}" data-slotname="{$item.moduleParams.slotname}" data-height="{$item.moduleParams.height}" data-width="{$item.moduleParams.width}" data-min="{$item.moduleParams.minwidth}" data-max="{$item.moduleParams.maxwidth}">
                        {if istrue($item.moduleParams.showCaption|default:true)}<div class="advertisement">{$strings_ad_caption}</div>{/if}
                        <div class="dfp" style="height: 250px; width: 300px;">
                        </div>
                    </div>
                {else}
                    {contentitem id=$item.moduleId}
                {/if}
            </div>
        </div>
    {/if}

    {* reset optional parameters *}
    {*assign var=itemitemBottom value=""}
    {assign var=fixedImageWidth value=""}
    {assign var=numericWidth value=""}
    {assign var=numericHeight value=""*}