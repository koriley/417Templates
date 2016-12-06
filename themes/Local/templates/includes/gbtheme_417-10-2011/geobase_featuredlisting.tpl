featured-listing
<div class="geobase-listing featured">
    <div class="column-1">
        {include file="gb_listing_companyname.tpl"}
        {include file="gb_listing_ratings.tpl"}
        {include file="gb_listing_categories.tpl"}
        {include file="gb_listing_essentials.tpl"}
        {include file="gb_listing_description.tpl"}
        {include file="gb_listing_customfields.tpl"}
        {include file="gb_listing_recommendations.tpl"}
        
    </div>
    <div class="column-2">
        {loadModules position="right"}
        {include file="googlemap-single.tpl"}
        {include file="gb_listing_quickfacts.tpl"}
        {include file="gb_listing_photos.tpl"}
        {include file="gb_listing_selfservicenotice.tpl"}
    </div>
</div>