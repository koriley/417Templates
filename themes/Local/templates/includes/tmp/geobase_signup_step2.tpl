<table width="100%" class="signup-table">
<tr><td colspan=2 align="center"><b>Account Information</b></td></tr>
				<tr>
                <td colspan="2">Create or verify your account.  Required fields are marked with an asterisk*.   We may contact you via the phone number you enter to confirm the accuracy of your information. </td>
                </tr>
              <tr>
                <td align="right">First Name*</td>
                <td><input name="core_user_firstname"  label="First Name" type="text" size="30" value="{$user.firstname}" onblur="requireValue(this)"/></td>
              </tr>
				<tr>
                <td align="right">Last Name*</td>
                <td><input name="core_user_lastname" type="text"  label="Last Name" size="30"  value="{$user.lastname}"  onblur="requireValue(this)"/></td>
              </tr>			  
				<tr>
                <td align="right">Contact Phone*</td>
                <td><input name="core_user_phone" type="text" id="phone"  label="Phone" size="30"  value="{$user.phone}"  onblur="requireValue(this)*fixPhone(this)"/></td>
              </tr>
              <tr>
                <td align="right">Email Address* </td>
                <td>{if $Page->user->id==''}<input name="core_user_email" type="text" id="email" size="30"  label="Email"  value="{$user.email}" onblur="requireValue(this)*checkEmail(this)"/>
                {else}
                <b>{$user.email}</b>{/if}</td>
              </tr>
              {if $Page->user->id==''}
              <tr>
                <td align="right">Password*</td>
                <td><input name="core_user_password" type="password" id="password" size="30"   label="Password" value="{$user.password}"  onblur="requireValue(this)"/></td>
              </tr>
              {/if}
<tr><td colspan=2 align="center"><b>Listing Information</b></td></tr>
				<tr>
                <td colspan="2">Please fill out the following information for your new listing.  Required fields are marked with an asterisk*.</td>
                </tr>
			  <tr>
                <td align="right">Company Name* </td>
                <td><input name="ops_geobasedata_company" type="text" id="ops_geobasedata_company" size="30"  value="{$ops_geobasedata.company}"  label="Company" class="required" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right">Street Address*</td>
                <td><input name="ops_geobasedata_address" type="text" id="ops_geobasedata_address" size="30"  value="{$ops_geobasedata.address}"  label="Address" class="required" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right">Street Address Line 2 </td>
                <td><input name="ops_geobasedata_address2" type="text" id="ops_geobasedata_address2" size="30"  value="{$ops_geobasedata.address2}" label="Address2" /></td>
              </tr>
              <tr>
                <td align="right">City*</td>
                <td><input name="ops_geobasedata_city" type="text" id="ops_geobasedata_city" size="30"  value="{$ops_geobasedata.city}" label="City" /></td>
              </tr>
              <tr>
                <td align="right">State*</td>
                <td>{picklist name="ops_geobasedata_state" table="geo_state" required="true" firstitem="" displayfield="statecode" keyfield="statecode" selected=$ops_geobasedata.state onblur="requireValue(this);"}</td>
              </tr>
              <tr>
                <td align="right">Zip Code* </td>
                <td><input name="ops_geobasedata_zipcode" type="text" id="ops_geobasedata_zipcode"  value="{$ops_geobasedata.zipcode}"   label="Zip Code" size="12" maxlength="15" class="required" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right">Website URL </td>
                <td><input name="ops_geobasedata_url" type="text" id="ops_geobasedata_url"  size="45" value="{$ops_geobasedata.url}"   label="Website Url" size="12" class="required" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right">Phone*</td>
                <td><input name="ops_geobasedata_phone" type="text" id="ops_geobasedata_phone"  value="{$ops_geobasedata.phone}"  label="Phone"  class="required" size="30" onblur="requireValue(this)*fixPhone(this)"/></td>
              </tr>
              <tr>
                <td align="right">Fax</td>
                <td><input name="ops_geobasedata_fax" type="text" id="ops_geobasedata_fax" size="30"   value="{$ops_geobasedata.fax}" onblur="fixPhone(this);"/></td>
              </tr>
              <tr>
              <td align="right" valign="top">Listing Type*</td>
              <td>
              
{section name=x loop=$products}
<p>
<input type="radio" name="productid" value="{$products[x].id}">&nbsp;{$products[x].name}
<br/>
{$products[x].description}
<br/>
<table border="0">
{foreach key=key item="attr" from=$products[x].attributes}
{if $attr.enabled && $Page->params.test==""}
<tr><td>{$key}:</td><td><select name="attributes[{$key}]">
<option value=""></option>
{foreach item="a" from=$attr}{if $a.value<>""}
<option value="[{$a.pricemodifier}] {$a.price|string_format:"%.2f"}">{$a.value} {$a.pricemodifier} ${$a.price|string_format:"%.2f"}</option>
{/if}
{/foreach}
</select></td>
</tr>
{/if}
{/foreach}
</table>
</p>{/section}
              
              
              
              
              
              
              <!--<input name="listingtype" type="hidden" value="paid"><input type="radio" name="product" value="free">&nbsp;Free Listing<br/>
              <input type="radio" name="product" value="premiummonthly">&nbsp;Premium Listing (monthly) - ${$ops_geobase.params.premiummonthlyfee|string_format:"%.2f"} per month<br/>
              <input type="radio" name="product" value="premiumyearly">&nbsp;Premium Listing (yearly) - ${$ops_geobase.params.premiumannualfee|string_format:"%.2f"} per year<br/>
              <input type="checkbox" name="featured" value="featured">&nbsp;Featured Listing Option - ${$ops_geobase.params.featuredfee|string_format:"%.2f"} (requires premium listing)-->
              </td>
              </tr>
              <tr>
              <td align="right">Category*</td>
              <td>{picklist name="ops_geobasedata_subcategory" label="Category" values=$ops_geobase.fields.subcategory.options required="true" firstitem="|Select subcategory..." selected=$ops_geobasedata.subcategory onblur="requireValue(this);"}
              </td>
              </tr>
              <tr>
              <td align="right">Sub-category*</td>
              <td>{picklist name="ops_geobasedata_specialty" label="Subcategory" values=$ops_geobase.fields.specialty.options required="true" firstitem="|Select specialty..." selected=$ops_geobasedata.specialty onblur="requireValue(this);"}
              </td>
              </tr>
<tr><td colspan=2 align="center"><b>Billing Information</b></td></tr>
                <tr>
                <td colspan="2">Please fill out the following information for your account. We may contact you via the phone number you enter to confirm the accuracy of your information. Required fields are marked with an asterisk*.</td>
                </tr>
              <tr>
                <td align="right" valign="top" nowrap="nowrap">First Name on card*</td>
                <td><input name="ops_geobasedata_ccfname" type="text" id="ops_geobasedata_ccfname" size="30" value="{$ops_geobasedata.ccfname}"  />
                </td>
              </tr>
			   <tr>
                <td align="right" valign="top" nowrap="nowrap">Last Name on card*</td>
                <td><input name="ops_geobasedata_cclname" type="text" id="ops_geobasedata_cclname" size="30" value="{$ops_geobasedata.cclname}"  />
                </td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Card Number* </td>
                <td><input name="ops_geobasedata_ccnum" type="text" id="safe_ccnum" label="Credit Card Number" size="30" value="" onBlur="fixCreditCard(this)"/></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Expiration Date* </td>
                <td>{picklist function="months" required="true" name="ops_geobasedata_ccexpmonth" selected=$ops_geobasedata.ccexpmonth} &nbsp;{picklist function="years" required="true" name="ops_geobasedata_ccexpyear" selected=$ops_geobasedata.ccexpyear}</td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Street Address*</td>
                <td><input name="ops_geobasedata_ccaddress" type="text" id="ops_geobasedata_ccaddress" size="30"  value="{$ops_geobasedata.ccaddress}" /></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">City*</td>
                <td><input name="ops_geobasedata_cccity" type="text" id="ops_geobasedata_cccity" size="30"  value="{$ops_geobasedata.cccity}" /></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">State*</td>
                <td>{picklist table="geo_state" keyfield="statecode" displayfield="statecode" required="true" firstitem=""  name="ops_geobasedata_ccstate" selected=$core_user.ccstate|default:$user.ccstate}
				</td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Zip Code* </td>
                <td><input name="ops_geobasedata_cczipcode" type="text" id="ops_geobasedata_cczipcode" size="12" maxlength="10"  value="{$user.cczipcode|default:$user.cczipcode}" /></td>
              </tr>
			  <tr><td colspan=2 align="center"><b>Order Confirmation</b></td></tr>
<tr><td colspan="2" align="center">
{include file="geobase_signup_agreement.tpl"}
</td></tr>
<tr><td colspan="2" align="center"><input type="checkbox" id="acceptterms" label="Terms" name="acceptterms" value="yes">&nbsp;I accept the terms above and confirm my order
</td></tr>
<tr><td colspan="2" align="center">
{toolbar formname="signup" which="custom" style="button" buttons="order|Place Order" listmode="false"}
</td></tr>
</table>

