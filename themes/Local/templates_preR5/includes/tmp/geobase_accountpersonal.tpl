<div id="personal-info">
<h2>Personal Information</h2>
<div class="formline"><div class="formtitle">First Name*</div><div class="formfield"><input name="core_user_firstname" id="core_user_firstname" type="text" size="30" label="First Name" value="{$user.firstname}" onblur="requireValue(this)"/></div></div>
<div class="formline"><div class="formtitle">Last Name*</div><div class="formfield"><input name="core_user_lastname" id="core_user_lastname"type="text" size="30"  label="Last Name" value="{$user.lastname}"  onblur="requireValue(this)"/></div></div>
<div class="formline"><div class="formtitle">Contact Phone*</div><div class="formfield"><input name="core_user_phone" id="core_user_phone" type="text"  size="30" label="Contact Phone"  value="{$user.phone}"  onblur="requireValue(this)*fixPhone(this)"/></div></div>
<div class="formline"><div class="formtitle">Email Address*</div><div class="formfield"><input name="core_user_email" id="core_user_email" type="text" size="30" label="Email Address"  value="{$user.email}" onblur="requireValue(this)*checkEmail(this)"/></div></div>
<div class="formline"><div class="formtitle">Address</div><div class="formfield"><input name="core_user_address" id="core_user_address"type="text"  size="30"  value="{$user.address}" /></div></div>
<div class="formline"><div class="formtitle">City</div><div class="formfield"><input name="core_user_city" id="core_user_city" type="text"  size="30"  value="{$user.city}" /></div></div>
<div class="formline"><div class="formtitle">State</div><div class="formfield">{picklist name="core_user_state" table="geo_state" required="true" selected=$user.state displayfield="state" keyfield="statecode"}</div></div>
<div class="formline"><div class="formtitle">Zip Code</div><div class="formfield"><input name="core_user_zipcode" id="core_user_zipcode" type="text" size="30"  value="{$user.zipcode}"/></div></div>
{if $Page->user->id==''}
<div class="formline"><div class="formtitle">Password</div><div class="formfield"><input name="curpassword" type="password"  size="30"  value=""/></div></div>
{/if}
{if $Page->user->id<>''}
<div class="formline"><div class="formtitle"></div><div class="formfield"><input name="resetpassword" type="checkbox"  value="t"/>Check this box to reset your password<br/> (A new password will be emailed to you)</div></div>
{/if}
<div class="formline"><div class="formtitle">&nbsp;</div><div class="formfield"><input name="Next" type="submit" value="Save" onclick="setaction('savepersonal');"/></div></div>
</div>
