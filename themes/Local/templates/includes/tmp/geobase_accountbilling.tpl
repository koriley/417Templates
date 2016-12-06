            <table width="100%" border="0" class="signup-table">
              <tr>
                <td colspan="2" valign="top" class="listing-headline">Listing Billing Information</td>
              </tr>
                <tr>
                  <td colspan="2" >The credit card information you provide below will be used on future charges for this listing.  You may also use this information on all of your existing listings as well.<p>
	            <table width="100%" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td align="right" nowrap="nowrap">Card Number* </td>
                <td><input name="ccnum" type="text" id="ccnum" size="30" label="Card Number" class="required" value="{$order.ccnum}" onBlur="requireValue(this)*fixCreditCard(this)"/></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Expiration Date* </td>
                <td>Month: {picklist function="months" required="true" name="ccexpmonth" selected=$order.ccexpmonth} Year: {picklist function="years" required="true" name="ccexpyear" selected=$order.ccexpyear}</td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap" valign=top>First Name on card*</td>
                <td><input name="ccfname" type="text" id="ccfname" size="30" label="First Name on Card" class="required" value="{$order.ccfname}" onblur="requireValue(this);"  /></td>
              </tr>
			  <tr>
                <td align="right" nowrap="nowrap" valign=top>Last Name on card*</td>
                <td><input name="cclname" type="text" id="cclname" size="30" label="Last Name on Card" class="required" value="{$order.cclname}" onblur="requireValue(this);"  /></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Street Address*</td>
                <td><input name="ccaddress" type="text" id="ccaddress" size="30" label="Street Address" class="required"  value="{$order.ccaddress}" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">City*</td>
                <td><input name="cccity" type="text" id="cccity" size="30"  label="City" class="required" value="{$order.cccity}" onblur="requireValue(this);"/></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">State*</td>
                <td><input type=text size=2 id="ccstate" name="ccstate" value="{$order.ccstate|default:$user.ccstate}">
				</td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Zip Code* </td>
                <td><input name="cczipcode" type="text" id="cczipcode" size="12" label="Zipcode" class="required"  maxlength="10"  onblur="requireValue(this);" value="{$order.cczipcode}" /></td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap">Country*</td>
                <td><input type=text size=2 id="cccountry" name="cccountry" value="{$order.cccountry|default:$user.cccountry}">
				</td>
              </tr>
              <tr>
                <td align="right" nowrap="nowrap"></td>
                <td><input type=checkbox name="updatecc" value="1">&nbsp;Use this card for all of my listings</td>
              </tr>
              <tr>
                <td width="180" align="right" nowrap="nowrap">&nbsp;</td>
                <td><input name="Next" type="submit" value="Save"  onclick="setaction('savebilling');"/></td>
              </tr></table>
			  	</td>
				</tr>
              <tr>
                <td colspan="2" valign="top" class="listing-headline">Cancel your listing</td>
              </tr>
              <tr>
                <td colspan="2" valign="top">You may cancel your listing completely by checking the checkbox below entitled "Cancel my listing" and clicking the button to confirm your decision.  Please note, all data associated with your current listing will be removed from the system and your listing will revert back to a "free" listing.</td>
              </tr>
              <tr>
                <td colspan="2" valign="top"><input type=checkbox name=confirm_cancel value="Please cancel my listing.">&nbsp;&nbsp;<input type=submit name=submit value="Confirm cancellation" onclick="setaction('cancellisting');"></td>
              </tr>
			</table>
