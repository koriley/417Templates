<table width="100%" class="signup-table">
<tr>
    <td colspan="2">Thank you for your order!  We will process your listing and upon approval, it should be placed online within 24-48 hours!</td>
  </tr>
  <tr class="listing-headline">
    <td colspan="2" class="listing-headline"><strong>Personal Information</strong></td>
  </tr>
  <tr valign="top">
    <td align="right">First Name:</td>
    <td>{$user.firstname}</td>
  <tr valign="top">
    <td align="right">Last Name:</td>
    <td>{$user.lastname}</td>
  </tr>										  
  <tr valign="top">
    <td align="right">Email Address:</td>
    <td>{$user.email}</td>
  </tr>
  <tr valign="top">
    <td align="right">Contact Phone:</td>
    <td>{$user.phone}</td>
  </tr>
  
  <tr class="listing-headline">
    <td colspan="2" class="listing-headline"><strong>Listing Information</strong></td>
  </tr>
  <tr valign="top">
    <td   align="right">Listing Type:</td>
    <td>{$business.product.name} - {if $business.product.price<>'' && $business.product.price>0}${$business.product.price}/month{else} FREE{/if}</td>
  </tr>
  <tr valign="top">
    <td   align="right">Company Name:</td>
    <td>{$business.company}</td>
  </tr>
  <tr valign="top">
    <td   align="right">Address:</td>
    <td>{$business.address}</td>
  </tr>
  {if $business.address2<>''}
  <tr valign="top">
    <td   align="right">Address 2:</td>
    <td>{$business.address2}</td>
  </tr>
  {/if}
  <tr valign="top">
    <td   align="right">Phone:</td>
    <td>{$business.phone}</td>
  </tr>
{if $business.geo_business_url <> ''}
   <tr valign="top">
    <td   align="right">URL:</td>
    <td>{$business.geo_business_url}</td>
  </tr>
{/if}
{if $business.special2 <> ''}
   <tr valign="top">
    <td   align="right">Cuisine:</td>
    <td>{$business.special2}</td>
  </tr>
{/if}
  <tr valign="top">
    <td   valign="top" align=right>Categories:</td>
    <td>
    {section name=c loop=$business.categories}
	  {if $smarty.section.c.iteration==1} FREE{else}${$extracat.price} p/mo{/if} - 
      {$business.categories[c].title|default:$business.categories[c].category} / {$business.categories[c].parentcategory|default:$business.categories[c].subcategory}<br>
	{/section}
    
    </td>
  </tr>
   <tr valign="top">
    <td   align="right">Order Total:</td>
    <td>${if $order.ordertotal==''}0.00{else}{$order.ordertotal}{/if} / month</td>
  </tr>										  
   <tr valign="top">
    <td   align="left" colspan=2>You may login to your account and manage your listings here:<p><a href="https://{$Page->server}/media/My-Account/">http://{$Page->server}/media/My-Account/</a></td>
  </tr>										  
</table>
