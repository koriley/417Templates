<div id="listing-info">
<h3>Listing Information</h3>
<div class="formline"><div class="formtitle">Company Name*</div><div class="formfield"><input name="geo_business_company" type="text" id="geo_business_company" size="30" value="{$geo_business.company}" /></div></div>
<div class="formline"><div class="formtitle">Street Address*</div><div class="formfield"><input name="geo_business_address" type="text" id="geo_business_address" size="30" value="{$geo_business.address}"  /></div></div>
<div class="formline"><div class="formtitle">Street Address Line 2</div><div class="formfield"><input name="geo_business_address2" type="text" id="geo_business_address2" size="30" value="{$geo_business.address2}" /></div></div>
<div class="formline"><div class="formtitle">City*</div><div class="formfield">{picklist name="geo_business_cityid" table="geo_city" displayfield="city" keyfield="id" selected=$geo_business.cityid}</div></div>
<div class="formline"><div class="formtitle">Zip Code*</div><div class="formfield"><input name="geo_business_zip" type="text" id="geo_business_zip" size="12" maxlength="12" value="{$geo_business.zip}" /></div></div>
<div class="formline"><div class="formtitle">Phone*</div><div class="formfield"><input name="geo_business_phone" type="text" id="geo_business_phone" size="30" value="{$geo_business.phone}" /></div></div>
<div class="formline"><div class="formtitle">Fax</div><div class="formfield"><input name="geo_business_fax" type="text" id="geo_business_fax" size="30" value="{$geo_business.fax}"/></div></div>
<div class="formline"><div class="formtitle">Select Primary Category*</div><div class="formfield">{picklist name="geo_business_categoryid" list=$categories displayfield="title" keyfield="id" selected=$geo_business.parentcategoryid}</div></div> 
</div>  
                
                
              
              
                
                
              
              
                 
                
              
              
                
                
                	
                
              
              
                 
                
              
              
                
                
              
              
                
                
              
              
                 
                
                
                
              
</div>
