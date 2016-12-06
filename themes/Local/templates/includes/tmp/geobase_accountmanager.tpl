<div id="account-nav"> <a href="?view=listings">My Listings</a> <a href="?view=personal">Personal Info</a> <a href="/media/Add-A-Listing/">Add A Listing</a> </div>
<div id="account-content"> {if $listing.id<>''}
  <table width="100%"  border="0" cellpadding="4" cellspacing="0" id="listings-table">
    <td align=center class="{if $Page->params.option=='listing'}step-current{else}step-uncurrent{/if}"><a href="{pageurl option=listing}">Company Info</a></td>
      {if $listing.listingtypeid>1}
       <td align=center  class="{if $Page->params.option=='billing'}step-current{else}step-uncurrent{/if}"><a href="{pageurl option=billing}">Billing Info</a></td>
      {/if}
      <td align=center  class="{if $Page->params.option=='categories'}step-current{else}step-uncurrent{/if}"><a href="{pageurl option=categories}">Listing Features</a></td>
      {if $listing.listingtype<>'basic'}
      <td align=center  class="{if $Page->params.option=='content'}step-current{else}step-uncurrent{/if}"><a href="{pageurl option=content}">Edit Content</a></td>
      {/if}
      <td align=center  class="{if $Page->params.option=='stats'}step-current{else}step-uncurrent{/if}"><a href="{pageurl option=stats}">Stats</a></td>
  </table>
  {/if} <MESSAGES> {include file=$template}
</div>
