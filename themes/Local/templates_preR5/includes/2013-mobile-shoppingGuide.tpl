<div >


<!-- The category -->
<form method="get" action="">

<select class="geoSelect" name="category">
<option value="">Choose a Category</option>
{getgeobaseinfo geobaseid="3" field="category" assign="cats"}  {foreach from=$cats item=cat}
<option {if $cat|trim == $cate|urldecode}selected=selected{/if} value="{$cat|trim}">{$cat|trim}</option>
{/foreach}
</select>

<!-- the city -->
<div style="margin:2px;"></div>
<select class="geoSelect" name="city">
<option value="">Choose a City</option>
{getgeobaseinfo geobaseid="3" field="city" assign="cities"}  {foreach from=$cities item="city"}
<option {if $city|trim == $cita|urldecode}selected=selected{/if} value="{$city|trim}">{$city|trim}</option>
{/foreach}
</select>
<input type="submit" value="search" />
</form>


  {assign var="filtername" value="category"}
  {assign var="filtervalue" value=$Page->params.category}
  {assign var="filtername2" value="city"}
  {assign var="filtervalue2" value=$Page->params.city}



<!--{if isset($filtername)}
Filter name: {$filtername}<br>
Filter value: {$filtervalue}<br>
Filter name2: {$filtername2}<br>
Filter value2: {$filtervalue2}<br>
{/if}-->

<div name="search_results">
{if ($filtervalue !='') and ($filtervalue2 !='')}
{getgeobaselistingsMultiFilter geobaseid=3 type="all" assign="listings" filtername=$filtername filtervalue=$filtervalue filtername2=$filtername2 filtervalue2=$filtervalue2}
{if $listings|@count < 1}<p>Sorry, but there are no listings that match your search.</p>{else}Search results: <br/>
{foreach from=$listings key="key" item="listing"}
  <div class="listing" style="">
      <table>
          <tr>
             <td class="compTitle">
                 {if $listing.url != ''}<a href="{$listing.url}" target="_blank">{$listing.company}</a>
                 {else}{$listing.company}{/if}
                 {if $listing.image1 != ''}
                   </td><td rowspan="5"  style="text-align: right; "><img src="{$listing.image1}" style="width:100px; height:100px;"/>
                 {/if}
             </td>            
          </tr>
          <tr>
              <td class="section" colspan="3" >
                 Address:
              </td>
              
          </tr>
          <tr>
              <td class="content" colspan="3">
                 {$listing.address}
              </td>
          </tr>
          <tr>
              <td class="content" colspan="3">
                 {$listing.city}, {$listing.state} {$listing.zipcode}
              </td>
          </tr>
          <tr>
              <td class="section" colspan="3">
                 Contact:
              </td>
          </tr>
          <tr>
              <td class="content" colspan="3">
                 {if $listing.email !=''}{$listing.phone}, {$listing.email}{else}{$listing.phone}{/if}
              </td>
          </tr>
          {if $listing.description != ''}
          <tr>
              <td class="section" colspan="3">
                 Description:
              </td>
          </tr>
          <tr>
              <td class="content" colspan="3">
                 {$listing.description}   
              </td>
          </tr>
          {/if}
      </table>
      
      <!--<ul>
        <li>Company: {$listing.company}</li>
        <li>Address: {$listing.address}</li>
        <li>Phone: {$listing.phone}</li>
        <li>Email: {$listing.email}</li>
        <li>URL: {$listing.url}</li>
        <li>Price: {$listing.price}</li>
        <li>City: {$listing.city}</li>
        <li>State: {$listing.state}</li>
        <li>Zipcode: {$listing.zipcode}</li>
        <li>Description: {$listing.description}</li>
        
    </ul>-->
  </div>
{/foreach}
{/if}
{/if}
</div>

</div>

{if $Page->params.showdebug === "true"}{debug}{/if}