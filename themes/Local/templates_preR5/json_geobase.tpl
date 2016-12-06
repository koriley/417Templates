{php}header('content-type: application/json; charset=utf-8');{/php}
{$smarty.get.callback}
{getgeobaseinfo geobaseid="3" field="category" assign="cats"}
([{foreach from=$cats item=cat}{literal}{{/literal}"category" : "{$cat|trim}"{literal}}{/literal},{/foreach}])
