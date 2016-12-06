<h2>My Listings</h2>
	    <table width="100%" border="0" cellpadding="5" cellspacing="1" id="account-table">
              <tr class="header">
              <td>Company</td><td>City</td><td>Listing Type</td>
              </tr>
              {assign var=id value=0}
              {section name=x loop=$mylistings}
              {if $id<>$mylistings[x].id}
              <tr class="data">
				<td><a href="?view=editbusiness&option=listing&itm={$mylistings[x].id}">{$mylistings[x].company}</a></td><td>{$mylistings[x].city}</td><td>{$mylistings[x].listingtypetitle}</td>
		      </tr>              
			{assign var=id value=$mylistings[x].id}		      
			{/if}
              {/section}
			</table>