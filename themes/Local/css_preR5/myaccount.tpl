<link href="/css/account.css" rel="stylesheet" type="text/css" />
<div id="account">
<form method="post" id="myaccount" name="myaccount" onsubmit="return autocheck(this);" class="autocheck">
<input type="hidden" name="action" value=""/>
{include file="myaccount-menu.tpl"}{$content}
</form>
</div>
