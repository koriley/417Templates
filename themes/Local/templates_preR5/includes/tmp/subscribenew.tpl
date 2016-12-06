{literal}
<script language="javascript">

var paybycc=false;

function setpaybycc(v)
{
	paybycc=v;
	return true;
}
function doFormPost(formname,pressbutton)
{
   var msg="";
	if(paybycc)
	{
		if(window.document.order.ecom_order_ccfname.value=='')
			msg+="You must provide the card holder's first name.\r\n";
		if(window.document.order.ecom_order_cclname.value=='')
			msg+="You must provide the card holder's last name.\r\n";
		if(window.document.order.ecom_order_ccnum.value=='')
			msg+="You must provide the credit card number.\r\n";
		if(window.document.order.ecom_order_ccv2.value=='')
			msg+="You must provide the credit card verification code.\r\n";
		if(window.document.order.ecom_order_ccexpmonth.selectedIndex<0)
			msg+="You must provide the credit card expiration month.\r\n";
		if(window.document.order.ecom_order_ccexpyear.selectedIndex<0)
			msg+="You must provide the credit card expiration year.\r\n";
		if(msg!='')
		{
			alert(msg);
			return false;
		}
	
	}

	return autocheck(window.document.order);

}
</script>
{/literal}
<table width="600" border="0" cellspacing="0" cellpadding="5">
  <tr width="320">
    <td valign="top"><table width="100%"><tr><td>
<img src="{$publication.url}image.php" width="156" height="202"> </td></table></td>
    <td><P class=style4>We are excited that you have chosen to subscribe to our magazine. </P>
<P class=style4>Please fill out the following information so that we may process your subscription:{if $Page->user->id==''}
      <P class=style4>If you have an account, you may login and we will retrieve your information for faster subscription processing.</p> <p><i> If you do not have an account, please skip login and proceed below.</i></P></td>
  </tr>
</table>
<p></p>

      
      
<FORM id="login" name="login" method="post">
{$error}<MESSAGES><p><strong>Login:</strong></p>
      <TABLE height=40 cellSpacing=0 cellPadding=0 width="75%" border=0>
        <TBODY>
        <TR>
          <TD width="18%" height=20>Email:</TD>
          <TD width="82%"><INPUT id="login_email" name="login_email" label="Login Email" onblur="requireValue(this)"></TD></TR>
        <TR>
          <TD height=20>Password:</TD>
          <TD><INPUT id="login_password" type=password name="login_password" label="Login Password"></TD></TR>
        <TR>
          <TD colspan="2"><br><p><INPUT type=submit value="Retrieve My Personal Info"/></p></TD></tr>
          <tr>
            <td class="smallText" colspan="2"><p>Password forgotten? Check here <input type="checkbox" name="forgotpw" value="1" /> and we will issue a new password and send it to your email address.</p></td>
          </tr>
        </TBODY></TABLE>
		</form>
		<hr>
		{/if}
				</td>
 </tr>
</table>       
<FORM id="order" name="order" method="post">
      <P>Subscriber Information  <i><font color="#FF0000">(items with * are required)</font></i>
      </P>
<table class="frmTable" cellpadding="0" cellspacing="7" width="100%">
        <tr>
            <td>First Name *</td>
            <td><input  type="text" id="ecom_order_firstname" name="ecom_order_firstname" label="First Name" value="{$userdata.firstname|default:$user.firstname|default:$Page->get('ecom_order_firstname')}" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>Last Name *</td>
            <td><input  type="text" id="ecom_order_lastname" name="ecom_order_lastname" label="Last Name" value="{$userdata.lastname|default:$user.lastname|default:$Page->get('ecom_order_lastname')}" onblur="requireValue(this)"/>
            </td>
        </tr>
<tr>
            <td>Title</td>
            <td>{picklist required=false name="ecom_order_buyertitle" values=",[None]|Mr.|Ms.|Mrs.|Mr.andMrs.|Miss|Master|Dr.|Rev." selected=$Page->get('ecom_order_title')}
            </td>
        </tr>
 
        <tr>
            <td>Phone *</td>
            <td><input  type="text" id="ecom_order_phone" name="ecom_order_phone" value="{$userdata.phone|default:$user.phone|default:$Page->get('ecom_order_phone')}" label="Phone" onblur="requireValue(this)" /><span class="fineprint">(enter like xxx-xxx-xxxx)</span> 
            </td>
        </tr>
        <tr>
            <td>Address *</td>
            <td><input  type="text" id="ecom_order_address" name="ecom_order_address" value="{$userdata.address|default:$user.address|default:$Page->get('ecom_order_address')}" label="Address" onblur="requireValue(this)" />
            </td>
        </tr>
        <tr>
            <td>City *</td>
            <td><input  type="text" id="ecom_order_city" name="ecom_order_city" value="{$userdata.city|default:$user.city|default:$Page->get('ecom_order_city')}"  label="City" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>State *</td>
            <td>{picklist name="ecom_order_state" label="State" table="geo_state" keyfield="statecode" displayfield="state"  selected=$userdata.state|default:$user.state|default:$Page->get('ecom_order_state')|default:$config.defaultstatecode onblur="requireValue(this)"}
            </td>
        </tr>
        <tr>
            <td>Zipcode *</td>
            <td><input  type="text" id="ecom_order_zipcode" name="ecom_order_zipcode" value="{$userdata.zipcode|default:$user.zipcode|default:$Page->get('ecom_order_zipcode')}"  label="Zipcode" onblur="requireValue(this)"/>
            </td>
        </tr>
       <tr>
            <td>Province</td>
            <td><input  type="text" id="ecom_order_province" name="ecom_order_province" value="{$userdata.province|default:$user.province|default:$Page->get('ecom_order_province')}"  label="Province"/>
            </td>
        </tr>
          <tr>
            <td>Country</td>
            <td>{picklist name="ecom_order_country" required="true" table="geo_country" keyfield="countrycode" displayfield="name"  selected=$userdata.country|default:$user.country|default:$Page->get('ecom_order_country')|default:"US"}
            </td>
        </tr>
        
      {if $Page->user->id==''}
      <tr><td colspan="2"><hr>
            <p class=style3>Create account (required)</p>
      <P class=style4>In order to create an account we must have your email address. Having an account enables you to order quicker in the future.</P>
		</td></tr>
        <TR>
          <TD>Email:</TD>
          <TD><INPUT type="text"  id="core_user_email" name="core_user_email"  value="{$Page->get('ecom_order_email')}" label="Email" onblur="requireValue(this)"></TD></TR>
        <TR>
          <TD>Password:</TD>
          <TD><INPUT id="new_password" type=password name="new_password" value="{$Page->get('new_password')}" label="Password" onblur="requireValue(this)"></TD></TR>
      <tr><td colspan="2">
		<hr>
		</td></tr>
		{/if}          
        <TR>
          <TD><a name="promo"></a>&nbsp;</TD>
          <TD>Certain promocodes may effect the terms 
            below. </TD></TR>
        <TR>
          <TD valign="top">Promocode:</TD>
          <TD><INPUT id="promocode" type="text" name="promocode" {if $validpromo==1} value="{$order.promocode|default:$Page->get('promocode')}" {/if}> &nbsp;&nbsp;&nbsp;
			{toolbar formname="order" which="custom" mode="plain" style="button" buttons="checkpromo|Validate Promocode" listmode="false"}
			{if $Page->get('promocode')<>'' && $validpromo==0}<br/><b>The promo code you entered could not be validated.</b>{/if}
          </TD></TR>
		<tr>
			<td valign="top">Comments:</td>
			<td><textarea cols="30" rows = "10" id="ecom_order_customercomment" name="ecom_order_customercomment">{$Page->get('ecom_order_customercomment')}</textarea>
			</td>
		</tr>
</table>          
      <P><br><b>Magazine Subscription Terms</b></P>
      <TABLE borderColor=#000000 cellSpacing=0 cellPadding=0 width="75%" 
      border=1>
        <TR borderColor=#000000>
          <TD width="18%">Terms</TD>
          <TD width="82%">Details</TD></TR>
		{assign var="x" value="0"}
		{foreach key=key item="attr" from=$publication.product.attributes}
			{foreach item="a" from=$attr}
		        <TR borderColor=#000000>
		          <TD><INPUT type=radio value="{$a.id}" label="Subscription Terms" id="attributeid" name="attributeid" {if count($publication.product.attributes)==1 || $x==0} checked {/if}>{$key}
		            </TD>
		          <TD>{$a.value} {$a.pricemodifier} ${$a.price|string_format:"%.2f"}</TD></TR>
		          {assign var="x" value="1"}
			{/foreach}
		{/foreach}
	</table>
	{$error}<MESSAGES>
      <P><br><b>Billing Information</b> (all transactions are conducted on a <IMG height=16 src="{$images}/lock.gif" width="19"> secure server)</P>
      <TABLE cellSpacing=0 cellPadding=0 border=0 WIDTH="100%">
        <TR><TD WIDTH="50%" valign="top">
      <TABLE cellSpacing=0 cellPadding=0 border=0 width="100%">
        <TR>
          <TD colspan="2">Cardholder name:</td></tr>
          <tr><td width="200">
          First:</td><td><INPUT id="ecom_order_ccfname" size="25" name="ecom_order_ccfname" value="{$order.ccfname}"></td></tr>
          <tr><td>Last:</td><td><INPUT id="ecom_order_cclname" size="25" name="ecom_order_cclname" value="{$order.cclname}">
           </TD></TR>
		<TR><tr><td>&nbsp;</td><td>&nbsp;</td></tr>
          <TD>Credit Card Number:</TD>
          <TD><INPUT id="ecom_order_ccnum" name="ecom_order_ccnum"  value=""></TD></TR>
        <tr>
            <td nowrap >Expir. date</td>
            <td nowrap>Month: 
            {picklist  required="true" name="ecom_order_ccexpmonth" function="months" selected=$order.ccexpmonth}&nbsp;Year:
            {picklist  required="true" end="2014" name="ecom_order_ccexpyear" function="years" selected=$order.ccexpyear}
            </td>
        </tr>
        <TR>
          <TD class=style3 valign="top">CCv2*:</TD>
          <TD><INPUT class=style3 id="ecom_order_ccv2" maxLength=4 size=4 name="ecom_order_ccv2"> 
            <br/>
            </TD></TR></TABLE>
         </td><td width="10">&nbsp;</td><td width="50%" valign="bottom"><img src="/media/images/visa.jpg" alt="Visa Verification Code Location">
         
         </td></tr></table>
                <p>&nbsp;</p> 
      <P class=style4>{toolbar formname="order" which="custom" mode="plain" style="button" buttons="checkout|Pay by credit card" listmode="false" onclick="setpaybycc(true)"} 
      </P>
      <P class=style4>*CCv2 is the last 3 digits on the back of your Visa/MC - or 4 digits on front of your Amex</P>
<input type="hidden" value="" id="action" name="action">
</form>      
{if $Page->get('promocode')<>''}
<script language="javascript">
window.document.order.promocode.focus();
</script>
{/if}
