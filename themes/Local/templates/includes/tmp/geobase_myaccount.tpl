<h1>My Account</h1>
{if $listing.company<>''}
<h2>{$listing.company}</a></h2>
{/if}
<form method="post"  name="accountmgr" id="accountmgr"  onsubmit="return autocheck(this)" enctype="multipart/form-data">
                  {if $Page->user->id==''}
                  {assign var="workflowstep" value="1"}
					{include file="account_login.tpl"}
				 {else}
				 	{include file="accountmanager.tpl"}
				 {/if}
<input type=hidden name="action" id="action" value="">
</form>