<div id="listing-info">
<table width="100%" border="0" cellpadding="2" cellspacing="2" class="signup-table">
              <tr>
                <td colspan=2 align=left class="listing-headline">Premium Listing Details</td>
              </tr>
 			  <tr>
                <td width="250" align="right" valign="top">Website URL:
                    <p class="fineprint">If your business has an existing website, enter the address here.</p></td>
                <td valign="top"><input name="geo_business_url" type="text" id="geo_business_url" size="30"  value="{$listing.url}"/></td>
              </tr>
              <tr>
                <td width="250" align="right" valign="top">Business Listing Sub-Title:
                    <p class="fineprint">The title of your listing will be the same as your business name. Enter a tagline or slogan here.</p></td>
                <td valign="top"><input class="optional" name="subtitle" type="text" id="subtitle" size="30" value="{$listing.subtitle}"/></td>
              </tr>
{if $listing.isrestaurant}
		<tr>
           <td width="250" align="right" valign="top">Cuisine:
                </td><td valign="top">
{picklist name="geo_business_special2" table="geo_business" displayfield="special2" keyfield="special2" where="special2 <> ''" selected=$listing.special2}</td>
              </tr>
{/if}
              <tr>
                <td colspan="2" align="left" class="listing-headline">Images</td>
              </tr>
              <tr><td width=250 valign="top">
      {if $listing.image1==""} <img src="{$images}/noimage.gif" alt="Image 1" width="200" height="150">{else}
	  <a href="{$images}/{$listing.id}/{$listing.image1}" target=new  alt="{$listing.image1}"><img src="{$images}/{$listing.id}/{$listing.image1}" border=0 width=200 height=150 alt="{$listing.image1}"></a><br>
	  (Image shown above has been set to 200x150 to fit this screen)<br>
	  {/if}
	  <br>Upload image 1: <input class="frmReadOnly" type=file id="image1" name="image1">
	  </td><td>
      {if $listing.image2==""} <img src="{$images}/noimage.gif" alt="Image 2" width="200" height="150">{else}
	  <a href="{$images}/{$listing.id}/{$listing.image2}" target=new  alt="{$listing.image2}"><img src="{$images}/{$listing.id}/{$listing.image2}" border=0 width=200 height=150 alt="{$listing.image2}"></a><br>
	  (Image shown above has been set to 200x150 to fit this screen)<br>
	  {/if}
	  <br>Upload image 2: <input class="frmReadOnly" type=file id="image2" name="image2">
                  </td>
              </tr>
              <tr>
                <td colspan=2 align=left class="listing-headline">Listing Body Content</td>
              </tr>
              <tr>
                  <td valign=top colspan=2 align=center class="listing-headline"><p>
                  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
		              <tr>
		                <td class="fineprint">In the field below, you may enter information about your business.</td>
		              </tr>
		              <tr>
		                <td>
{editor content=$listing.content name="content" width="500" height="350" toolbarset="minimal"}
		                </td>
		              </tr>
                  </table>
              </td>
              </tr>
              <tr>
                <td colspan="2" class="listing-headline">Quick Facts</td>
              </tr>
			  <tr>
                <td colspan="2" valign="top" class="fineprint">Quick Facts will appear in a column on the right side of your listing. Add as many Fact Categories as you wish. </td>
              </tr>
              {foreach key=key item=item from=$listing.quickfacts}

              <tr>
                <td align="right" valign="top"><input type=text name="quickfacts[{$key}][label]" size=15 value="{$key}"><br>
                <input type=checkbox name="quickfacts[{$key}][del]" value="1"> Remove</td>
                <td valign="top"><textarea name="quickfacts[{$key}][text]" cols="30">{$item}</textarea>
                
                </td>
                
              </tr>
              {/foreach}
              <tr>
                <td align="right" valign="top">Create New Quick Fact:</td>
                <td valign="top">
                <table border=0><tr><td>Label:</td><td><input name="newquickfactname" type="text" size="10" class="optional"/></td></tr>
                <tr><td>Text:</td><td><textarea name="newquickfactvalue" rows="3" cols=20 class="optional"></textarea></td></tr></table>	
                </td>
              </tr>              
              <tr>
                <td width="250" align="right">&nbsp;</td>
                <td><input name="submit" type="submit" value="Save"  onclick="setaction('savepremiumcontent');"/></td>
              </tr>
            </table>
</div>
