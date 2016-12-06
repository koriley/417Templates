Your account has been updated per your request.

The following information confirms the details
of your account:

Categories:

{section name=c loop=$categories}
	{$categories[c].category.title} / {$categories[c].subcategory.title} - {if $smarty.section.c.first} FREE {else}${$extracat.price} / month{/if}
{/section}


Cities:

{section name=c loop=$cities}
	{$cities[c].city} - {if $smarty.section.c.first} FREE {else}${$extracity.price} / month{/if}
{/section}


Total new monthly billing amount: {$order.ordertotal}

You may login to your account manager at the following URL:

http://{$Page->server}/media/My-Account/
