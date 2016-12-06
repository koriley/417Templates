A new Geoguide listing needs approval.

Personal Information:

First name: {$order.ecom_order_firstname}
Last name: {$order.ecom_order_lastname}
Email address: {$order.ecom_order_email}

Listing Information:
Product type: {$order.ecom_product_name}
Monthly fee: {$order.ecom_product_price}
Company name: {$order.geo_business_company}
Address: {$order.geo_business_address}
Address (cont): {$order.geo_business_address2}
City: {$order.geo_business_city}
State: {$order.geo_business_state}
Zipcode: {$order.geo_business_zip}
Phone: {$order.geo_business_phone}
Fax: {$order.geo_business_fax}

Categories:

{section name=c loop=$order.categories}
	{$order.categories[c].category} / {$order.categories[c].subcategory} - {if $smarty.section.c.first} FREE {else}${$extracat.price} / month{/if}
	
{/section}


Total monthly billing amount: {$order.ordertotal}

Billing information:

Credit card #: {$order.ecom_order_ccnum|safecc}
Name on card: {$order.ecom_order_ccfname} {$order.ecom_order_cclname}
Address: {$order.ecom_order_ccaddress}
City: {$order.ecom_order_cccity}
State: {$order.ecom_order_ccstate}
Zipcode: {$order.ecom_order_cczipcode}

