{php}header('content-type: application/json; charset=utf-8');
$category=$_GET['category'];
$this->assign("cate", $category);
{/php}
{$smarty.get.callback}
{getgeobaselistings geobaseid=3 type="all" assign="listings" filtername="category" filtervalue=$cate}
([{section name="x" loop=$listings}
{literal}{{/literal}"store" : "{$listings[x].company}","address" : "{$listings[x].address}"{literal}}{/literal},
{/section}])



