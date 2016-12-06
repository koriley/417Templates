<style type="text/css">
<!--
@import url("/themes/Local/css/fairfield.css");
-->
</style><script language="javascript">
function goback(step)
{ldelim}
	window.document.location.href="{pageurl step=''}&step="+(step-1);
	
{rdelim}
</script>
<div id="signup-step">
				<form method="post" name="signup" id="signup" onsubmit="return autocheck(this)">
{if $workflowstep>0}
                  <h1>Add New Listing</h1>
                  {if $workflowstep=='1'}<p>In order to create a new listing, please login to an existing account, or create an account if you do not have one.</p>{/if}
                 <table width="100%"  border="0" cellspacing="0" cellpadding="5" id="signup-menu">
                    <tr align="center">
                      <td class="step{if $workflowstep=='1'}-current{/if}" valign="top" width="15%">Step 1:<br />Login/Create Acct</td>
                      <td class="step{if $workflowstep=='2'}-current{/if}" valign="top" width="15%">Step 2:<br />{if $order.laststepdone>=2 && $order.laststepdone<6}<a href="javascript:goback(2);">Order Your Listing</a>{else}Order Your Listing{/if}</td>
                      <td class="step{if $workflowstep=='3'}-current{/if}" valign="top" width="15%">Step 3:<br>{if $order.laststepdone>=3 && $order.laststepdone<6}<a href="javascript:goback(3);">Receipt</a>{else}Receipt{/if}</td>
                    </tr>
                  </table>
{/if}<MESSAGES>
</div><div id="signup-step">{include file=$signuptemplate}</div>
            <input type=hidden id="step"  name="step" value="{$workflowstep}">
            <input type=hidden id="action" name="action" value="">
			</form>
			
