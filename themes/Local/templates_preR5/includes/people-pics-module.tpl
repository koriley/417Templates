<div class="whitebox">
<div class="boxcontent">
{tagged tagid="47" what="article"}
{section name="t" loop=$taglist max=1}
{section name="a" loop=$taglist[t].articles max=4}
<div class="partypics-container" style="clear:both;"><a target="_blank" href="{$taglist[t].articles[a].url}"><img style="float:left; margin-right:10px; margin-bottom:10px;" border="0" width="240" border="0" src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}&w=240" /></a>
<div style="font-size:11px; font-family:tahoma,verdana,arial,sans-serif;"><a target="_blank" href="{$taglist[t].articles[a].url}"><h3 style="line-height:1em; color:#3b5998; padding:0px; margin-top:15px; margin-bottom:-10px;">{$taglist[t].articles[a].title|truncate:60:"...":false}</h3></a><br>{$taglist[t].articles[a].summary|truncate:200:"...":false}</div></div>
{/section}
{/section}

<div class="partypics-below" style="clear:both; font-size:12px; font-family:tahoma,verdana,arial,sans-serif; font-weight:bold;"><a target="_blank" class="partypics-below" style="text-decoration:none; color:#3b5998;" href="/417-Magazine/People-Pics/">See All of This Month's People Pics &raquo;</a></div>
</div>
</div>