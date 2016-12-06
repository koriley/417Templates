{addcss file="feedreader.css"}
<div class="feed module"><h2>{if istrue($feeddata.params.showLogo) && $feeddata.channel.image.url}<a href="{$feeddata.channel.link}"><img class="feed-logo" src="{$feeddata.channel.image.url}" title="{$feeddata.channel.image.title}"></a>{/if}<a href="{$feeddata.channel.link}">{if $feeddata.params.title<>''}{$feeddata.params.title}{else}{$feeddata.channel.title}{/if}</a></h2>
<div class="content">
{section name="feed" loop=$feeddata.items}
<div class="feed-article">
{if istrue($feeddata.params.showTitle)}<h3 class="feed-article-title"><a href="{$feeddata.items[feed].url}">{$feeddata.items[feed].article_title}</a></h3>{/if}
{if istrue($feeddata.params.showAuthor)}<div class="feed-article-author">by: {$feeddata.items[feed].article_author}</div>{/if}
{if istrue($feeddata.params.showSummary)}<div class="feed-article-summary">{$feeddata.items[feed].summary}</div>{/if}
{if istrue($feeddata.params.showContent)}<div class="feed-article-content">{$feeddata.items[feed].content}</div>{/if}
{if istrue($feeddata.params.showDate)}<div class="feed-article-date">{$feeddata.items[feed].date|dateformat:"M j, Y h:i a"}</div>{/if}
</div>
{/section}
</div>
</div>