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
<table width="600" border="0" cellspacing="0" cellpadding="5">  <tr width="320">    <td><table width="100%"><tr><td>
<img src="{$publication.url}image.php" width="156" height="202"> </td></tr></table></td>    <td valign="top"> <p class="style4">We are excited that you have chosen to buy someone special
        in your life  a subscription to our magazine. </p>
      <p class="style4">Please fill
          out the forms below to purchase your gift subscription.</p>
 <p class="style4">We'll send your special someone a card announcing your gift.</p>
</td>  </tr></table>
           <p class="style4"><br><strong>Send the gift to</strong>:<i><font color="#FF0000"> (items with * are required)</font> </p>
<FORM id="order" name="order" method="post">
<MESSAGES>
<table class="frmTable" cellpadding="0" cellspacing="7" width="100%">
        <tr>
            <td>First Name *</td>
            <td><input  type="text" id="ecom_order_firstname" name="ecom_order_firstname" label="First Name" value="{$Page->get('ecom_order_firstname')}" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>Last Name *</td>
            <td><input  type="text" id="ecom_order_lastname" name="ecom_order_lastname" label="Last Name" value="{$Page->get('ecom_order_lastname')}" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>Company</td>
            <td><input  type="text" id="ecom_order_company" name="ecom_order_company" value="{$Page->get('ecom_order_company')}" label="Company" />
            </td>
        </tr>
<tr>
            <td>Title</td>
            <td>
{picklist required=false name="ecom_order_buyertitle" values=",[None]|Mr.|Ms.|Mrs.|Mr.andMrs.|Miss|Master|Dr.|Rev." selected=$Page->get('ecom_order_title')}
            </td>
        </tr>


        <tr>
            <td>Phone *</td>
            <td><input  type="text" id="ecom_order_phone" name="ecom_order_phone" value="{$Page->get('ecom_order_phone')}" label="Phone" onblur="requireValue(this)" /><span class="fineprint">(enter like xxx-xxx-xxxx)</span> 
            </td>
        </tr>
        <tr>
            <td>Address *</td>
            <td><input  type="text" id="ecom_order_address" name="ecom_order_address" value="{$Page->get('ecom_order_address')}" label="Address" onblur="requireValue(this)" />
            </td>
        </tr>
        <tr>
            <td>City *</td>
            <td><input  type="text" id="ecom_order_city" name="ecom_order_city" value="{$Page->get('ecom_order_city')}"  label="City" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>State *</td>
            <td>{picklist name="ecom_order_state" label="State" table="geo_state" keyfield="statecode" displayfield="state"  selected=$Page->get('ecom_order_state')|default:$config.defaultstatecode onblur="requireValue(this)"}
            </td>
        </tr>
        <tr>
            <td>Zipcode *</td>
            <td><input  type="text" id="ecom_order_zipcode" name="ecom_order_zipcode" value="{$Page->get('ecom_order_zipcode')}"  label="Zipcode" onblur="requireValue(this)"/>
            </td>
        </tr>
       <tr>
            <td>Province</td>
            <td><input  type="text" id="ecom_order_province" name="ecom_order_province" value="{$Page->get('ecom_order_province')}"  label="Province"/>
            </td>
        </tr>
          <tr>
            <td>Country</td>
            <td>{picklist name="ecom_order_country" required="true" table="geo_country" keyfield="countrycode" displayfield="name"  selected=$Page->get('ecom_order_country')|default:"US"}
            </td>
        </tr>
        
        <TR>
          <TD>Email:</TD>
          <TD><INPUT type="text" id="core_user_email" name="core_user_email"  value="{$Page->get('ecom_order_email')}" label="Email" onblur="requireValue(this)"></TD></TR>
        <TR>
          <TD>&nbsp;</TD>
          <TD><INPUT id="send_notify" name="send_notify"  type="checkbox">&nbsp;Please send an email to the gift recipient about their new subscription.</TD></TR>
	<tr><td colspan=2><b>This gift is from:</b></td></tr>
        <tr>
            <td>First Name *</td>
            <td><input  type="text" id="ecom_order_buyerfirstname" name="ecom_order_buyerfirstname" label="Buyer First Name" value="{$order.buyerfirstname|default:$Page->get('ecom_order_buyerphone')}" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>Last Name *</td>
            <td><input  type="text" id="ecom_order_buyerlastname" name="ecom_order_buyerlastname" label="Buyer Last Name" value="{$order.buyerlastname|default:$Page->get('ecom_order_buyerlastname')}" onblur="requireValue(this)"/>
            </td>
        </tr>
	<tr>
            <td>Title</td>
            <td>
{picklist required=false name="ecom_order_buyertitle" values=",[None]|Mr.|Ms.|Mrs.|Mr.andMrs.|Miss|Master|Dr.|Rev." selected=$Page->get('ecom_order_buyertitle')}
            </td>
        </tr>


        <tr>
            <td>Phone</td>
            <td><input  type="text" id="ecom_order_buyerphone" name="ecom_order_buyerphone" label="Buyer Phone" value="{$order.buyerphone|default:$Page->get('ecom_order_buyerphone')}"/><span class="fineprint">(enter like xxx-xxx-xxxx)</span> 
            </td>
        </tr>
        <tr>
            <td>Address *</td>
            <td><input  type="text" id="ecom_order_buyeraddress" name="ecom_order_buyeraddress" value="{$userdata.address|default:$user.address|default:$Page->get('ecom_order_buyeraddress')}" label="Address" onblur="requireValue(this)" />
            </td>
        </tr>
        <tr>
            <td>City *</td>
            <td><input  type="text" id="ecom_order_buyercity" name="ecom_order_buyercity" value="{$userdata.city|default:$user.city|default:$Page->get('ecom_order_buyercity')}"  label="City" onblur="requireValue(this)"/>
            </td>
        </tr>
        <tr>
            <td>State</td>
            <td>{picklist name="ecom_order_buyerstate" label="State" table="geo_state" keyfield="statecode" displayfield="state"  selected=$userdata.state|default:$user.state|default:$Page->get('ecom_order_buyerstate')|default:$config.defaultstate onblur="requireValue(this)"}
            </td>
        </tr>
        <tr>
            <td>Zipcode *</td>
            <td><input  type="text" id="ecom_order_buyerzipcode" name="ecom_order_buyerzipcode" value="{$userdata.zipcode|default:$user.zipcode|default:$Page->get('ecom_order_buyerzipcode')}"  label="Zipcode" onblur="requireValue(this)"/>
            </td>
        </tr>
       <tr>
            <td>Province</td>
            <td><input  type="text" id="ecom_order_buyerprovince" name="ecom_order_buyerprovince" value="{$userdata.province|default:$user.province|default:$Page->get('ecom_order_buyerprovince')}"  label="Province"/>
            </td>
        </tr>
          <tr>
            <td>Country</td>
            <td>{picklist name="ecom_order_buyercountry" required="true" table="geo_country" keyfield="countrycode" displayfield="name"  selected=$userdata.country|default:$user.country|default:$Page->get('ecom_order_buyercountry')|default:"US"}
            </td>
        </tr>


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
	<MESSAGES>
      <P><br><b>Billing Information</b> (all transactions are conducted on a <IMG height=16 src="{$images}/lock.gif" width="19"> secure server)</P>
      <TABLE cellSpacing=0 cellPadding=0 border=0 WIDTH="100%">
        <TR><TD WIDTH="50%" valign="top">
      <TABLE cellSpacing=0 cellPadding=0 border=0 width="100%">
        <TR>
          <TD colspan="2">Cardholder name:</td></tr>
          <tr><td width="140">
          First:</td><td width="360"><INPUT id="ecom_order_ccfname" size="25" name="ecom_order_ccfname" value="{$order.ccfname|default:$Page->get('ecom_order_ccfname')}"></td></tr>
          <tr><td>Last:</td><td><INPUT id="ecom_order_cclname" size="25" name="ecom_order_cclname" value="{$order.cclname|default:$Page->get('ecom_order_cclname')}">
           </TD></TR>
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
          <tr><td>Address:</td><td><INPUT id="ecom_order_ccadderss" size="25" name="ecom_order_ccaddress" value="{$order.ccaddress|default:$Page->get('ecom_order_ccaddress')}">
           </TD></TR>
           <tr><td>City:</td><td><INPUT id="ecom_order_cccity" size="25" name="ecom_order_cccity" value="{$order.cccity|default:$Page->get('ecom_order_cccity')}">
           </TD></TR>
        <tr>
            <td>State:</td>
            <td>{picklist name="ecom_order_ccstate" label="State" table="geo_state" keyfield="statecode" displayfield="state"  selected=$order.ccstate|default:$Page->get('ecom_order_ccstate') onblur="requireValue(this)"}
            </td>
           <tr><td>Zipcode:</td><td><INPUT id="ecom_order_cczipcode" size="25" name="ecom_order_cczipcode" value="{$order.cczipcode|default:$Page->get('ecom_order_cczipcode')}">
           </TD></TR>
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
         <TR>
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
