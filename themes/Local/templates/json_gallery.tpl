{php}header('content-type: application/json; charset=utf-8');{/php}
{$smarty.get.callback}
{tagged tagid="47" what="article"}
([{section name="t" loop=$taglist max=1}{section name="a" loop=$taglist[t].articles}{literal}{{/literal}"url" : "{$taglist[t].articles[a].url}", "title" : "{$taglist[t].articles[a].title}"{literal}}{/literal},{/section}{/section}])