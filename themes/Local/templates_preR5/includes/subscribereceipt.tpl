<table width="75%"  border="0" cellspacing="0" cellpadding="20">
  <tr valign="top">
    <td width="26%"><img src="{$publication.url}image.php" width="156" height="202">
	</td>
    <td width="52%">

		{if $order.paytype=='paybycheck'}
		<b>Whitaker Publishing</b><p>
		Instructions: Please print this page, enclose check for ${$order.ordertotal|string_format:"%.2f"} and mail both to the address below. <p>
		<p>
		<address><b>Whitaker Publishing<br/>
2111 S. Eastgate Ave.<br>Springfield, MO 65809<br></b></address><hr>
		{else}
		<p class="style2">Thank you for ordering from us!  The following information confirms your order.
		<p>
		Your order will be processed within 1 - 2 business days.
		<p></p>
		{/if}
		{if $order.ordertype=='gift'}<b>This is a gift order</b><br>{/if}
		{if $order.ordertype=='renew'}<b>This is a RENEWAL</b>{/if}
		<p></p>

		<table class="frmTable" cellpadding="0" cellspacing="7" width="100%">
        <tr><td colspan="2">Subscriber:</td></tr>
 
        <tr>
            <td width="110" nowrap class="frmLabel">First Name</td>
            <td class="frmData"><b>{$ecom_order.firstname}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Last Name</td>
            <td class="frmData"><b>{$ecom_order.lastname}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Address</td>
            <td class="frmData"><b>{$ecom_order.address}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">City</td>
            <td class="frmData"><b>{$ecom_order.city}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">State</td>
            <td class="frmData"><b>{$ecom_order.state}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Zipcode</td>
            <td class="frmData"><b>{$ecom_order.zipcode}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Email</td>
            <td class="frmData"><b>{$ecom_order.email}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Phone</td>
            <td class="frmData"><b>{$ecom_order.phone}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Province</td>
            <td class="frmData"><b>{$ecom_order.province}</b>
            </td>
        </tr>
        <tr>
            <td width="110" nowrap class="frmLabel">Country</td>
            <td class="frmData"><b>{$ecom_order.country}</b>
            </td>
        </tr>
        </table>
       <hr size="1" noshade />
		<table border="0" cellpadding="2" cellspacing="2" width="100%" class="baskettable">
		<tr><td>Description</td><td>Price</td></tr>
		{section name=p loop=$basket}
		<tr>
		<td>{$publication.title} {$basket[p].description|default:$basket[p].productname}</td>
		<td>${$basket[p].price|string_format:"%.2f"}</td>
		</tr>
		{/section}
		<tr><td align=right>Total:</td><td><b>${$ecom_order.ordertotal|string_format:"%.2f"}</b></td></tr>
		</table>
		<a href="http://{$SERVERINFO.SERVER_NAME}/">Return to home</a></td>
  </tr>
</table>
<p>
