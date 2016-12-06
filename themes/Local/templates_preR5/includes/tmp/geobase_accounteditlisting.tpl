<div id="listing-info">
{if $listing.isapproved=='f'}
<div class="formline">Your listing is currently pending review.  It will show up in the Geoguide system when it is approved.</div>
{/if}  
<div class="formline"><div class="formtitle">Company Name*</div><div class="formfield"><input name="geo_business_company" type="text" id="geo_business_company" label="Company Name" size="30"  value="{$listing.company}" /></div></div>

<div class="formline"><div class="formtitle">Street Address*</div><div class="formfield"><input name="geo_business_address" type="text" id="geo_business_address" label="Street Address" size="30"  value="{$listing.address}" /></div></div>
<div class="formline"><div class="formtitle">Street Address Line 2</div><div class="formfield"><input name="geo_business_address2" type="text" id="geo_business_address2" size="30"  value="{$listing.address2}" /></div></div>
<div class="formline"><div class="formtitle">City*</div><div class="formfield">{picklist table="geo_city" name="geo_business_cityid" displayfield="city" keyfield="id" required="true" selected=$listing.cityid}</div></div>
<div class="formline"><div class="formtitle">Zip Code*</div><div class="formfield"><input name="geo_business_zip" type="text" id="geo_business_zip"  label="Zip code" value="{$listing.zip}"  size="12" maxlength="9" /></div></div>
<div class="formline"><div class="formtitle">Phone*</div><div class="formfield"><input name="geo_business_phone" type="text" id="geo_business_phone" label="Phone" value="{$listing.phone}"  size="30"  onblur="requireValue(this)*fixPhone(this)"/></div></div>
<div class="formline"><div class="formtitle">Fax</div><div class="formfield"><input name="geo_business_fax" type="text" id="geo_business_fax" size="30"  label="Fax" value="{$listing.fax}"   onblur="fixPhone(this);"/></div></div>

<div class="formline"><div class="formtitle">&nbsp;</div><div class="formfield"><input name="submit" type="submit" value="Save"  onclick="setaction('savelisting');"/></div></div> 
</div>  
