{addcss file="tott.css"}
{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
{assign var="gbURL" value="http://www.417mag.com/Springfields-Best/"}
{assign var="gbID" value="27"}
<div class="tott tott-listings">   
    <h2>Meet the Best<a href="http://www.417mag.com/Springfields-Best"><img src="/images/module-logo.png" alt="Springfield's Best" /></a></h2>
    	<div class="content">
            <ul>
                {getgeobaselistings geobaseid=$gbID assign="listings" max="5" random=true type="featured"}
                {if $listings|@count > 0}
                    {section name="x" loop=$listings}
                    {assign var="url" value=$gbURL|default:$Page->url("ssl=false")|cat:"?listing="|cat:$listings[x].id}
                    {if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}">{/if}
                        <li>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img src="{imagesizer src=$listings[x].image1|default:'/templates/includes/gbtheme_tott/tott_logo_small.png' w=40 h=40 zc=1 q=100}" alt="{$listings[x].company}" />{/trackerlink}{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}{tracker item="searchresults" itemid=$listings[x].id}</li>
                    {/section}
                {/if}		
    		</ul>
            <a class="search-all button" href="{$gbURL}">Search all listings &raquo;</a>
        </div>
</div>