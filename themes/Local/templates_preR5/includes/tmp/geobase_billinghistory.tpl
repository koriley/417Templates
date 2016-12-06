           <div id="listing-info">
		    <table width="100%" border="0" cellpadding="2" cellspacing="2" class="signup-table">
                <tr>
                  <td colspan="2" class="listing-headline">Billing History</td>
                </tr>
                <tr>
                  <td colspan="2">
	            <table width="100%" border="0" cellpadding="1" cellspacing="2">
              <tr>
              <td>Listing Name</td><td>Listing Type</td><td>Date Billed</td><td>Amount</td>
              </tr>
              {section name=x loop=$billinghistory}
              <tr>
					<td><a href="?view=editbusiness&option=listing&itm={$billinghistory[x].id}">{$billinghistory[x].company}</a></td><td>{$billinghistory[x].listingtypetitle}</td><td>{$billinghistory[x].datebilled}</td><td>{$billinghistory[x].amount}</td>
		      </tr>              
              {/section}
			</table>			  
			</td>
			</tr>
			</table>
			</div>
