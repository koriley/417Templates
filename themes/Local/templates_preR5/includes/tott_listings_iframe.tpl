{addjs file="GeobaseTracker.class.js"}
{addjs file="geobase_tracking.js"}
{addcss file="/css/tott_iframe.css"}
<div class="tott tott-listings module">   
   <!-- <h2><a href="{$gbURL}" target="_top"><img src="/templates/includes/gbtheme_tott/tott_logo.png" alt="The Locals Club" /></a></h2> -->
    	<div class="content">
        <h3>Receive Special Offers from your Favorite Local Businesses</h3>
        <p>Click any of the logos below and join their local loyalty club.</p>
         
         <div class="listings" id="tott_geobase">
            {getgeobaselistings type=$gbType geobaseid=$gbID assign="listings" max=$gbMax random=$gbRandom filtername=$filtername filtervalue=$filtervalue}
             {if $listings|@count > 0}
                {section name="x" loop=$listings start=$si max=24}
                {assign var="url" value=$gbURL|default:$Page->url("ssl=false")|cat:"?listing="|cat:$listings[x].id}
                 {if $listings[x].latitude==''}<img src="/core/xmlrpc.php?req=updateLatLong&id={$listings[x].id}" style="display:none;" />{/if}
                {strip}
                    <div class="client">
                    {if $listings[x].image1}{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}<img class="thumb" src="{imagesizer src=$listings[x].image1 w=80 h=80 zc=1 q=100}" alt="{$listings[x].company}" />{/trackerlink}{/if}
                        <h4>{trackerlink url=$url item="clickthrough" itemid=$listings[x].id class="geobaselink"}{$listings[x].company}{/trackerlink}{tracker item="searchresults" itemid=$listings[x].id}</h4>
                    </div>
                    {/strip}
            {/section}
            {/if}
 			<div class="clearfix"></div>
		</div>
        </div>
        {pager data=$listings rowsperpage=24}
         <a class="search-all button" target="_top" href="{$gbURL}">Search all listings &raquo;</a>
</div>