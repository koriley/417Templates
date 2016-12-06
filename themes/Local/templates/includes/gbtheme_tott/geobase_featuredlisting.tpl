<div class="geobase featured listing">
        <div class="geobase-listing-header">
          {* ESSENTIALS *}
          {strip}
<div class="essential-information">
			{if $gb_listing_essentialinfo<>''}<h2>{$gb_listing_essentialinfo}</h2>{/if}
			{if $ops_geobasedata.contactname <>''}
			<div class="essential-item">
				<span class="eit">{if $ma_gb_listing_contact<>''}{$ma_gb_listing_contact}{/if}</span><span class="ei">{$ops_geobasedata.contactname}</span>
			</div>
			{/if}
			<div class="essential-item">
				<span class="eit">{if $ma_gb_listing_address1<>''}{$ma_gb_listing_address1}{/if}</span>
	            <span class="ei">
	            {if $ops_geobasedata.address<>''}
	            	{$ops_geobasedata.address}
	            {/if}
	            {if $ops_geobasedata.address2<>''}
	            	 {if $ops_geobasedata.address<>''}<br />{/if}{$ops_geobasedata.address2}{/if}
	            {if $ops_geobasedata.city<>'' || $ops_geobasedata.state<>'' || $ops_geobasedata.zipcode<>''}
	            	{if $ops_geobasedata.address<>'' || $ops_geobasedata.address2<>''}
	            		<br />
	                {/if}
	                {if $ops_geobasedata.city<>''}{$ops_geobasedata.city}{/if}{if $ops_geobasedata.state<>''}{if $ops_geobasedata.city<>''}, {/if}{$ops_geobasedata.state}{/if}{if $ops_geobasedata.zipcode<>''}  {$ops_geobasedata.zipcode}
	                {/if}
	            {/if}
	            {if $ops_geobasedata.country<>''}
	            	{if $ops_geobasedata.address<>'' || $ops_geobasedata.address2<>'' || $ops_geobasedata.city<>'' || $ops_geobasedata.state<>'' || $ops_geobasedata.zipcode<>''}
	            		<br />
	                {/if}
	                {if $listings[x].country<>'US'}{$listings[x].country}{/if}
	            {/if}
	            </span>
			</div>
			{if $ops_geobasedata.phone <>''}
			<div class="essential-item">
				<span class="eit">{if $ma_gb_listing_phone<>''}{$ma_gb_listing_phone}{/if}</span><span class="ei">{$ops_geobasedata.phone|format:"ddd-ddd-dddd dddddd"}</span>
			</div>
			{/if}
			{if $ops_geobasedata.fax <>''}
			<div class="essential-item">
				<span class="eit">{if $ma_gb_listing_fax<>''}{$ma_gb_listing_fax}{/if}</span><span class="ei">{$ops_geobasedata.fax|format:"ddd-ddd-dddd dddddd"}</span>
			</div>
			{/if}
			{if $ops_geobasedata.url <>''}
			<div class="essential-item">{assign var="url" value=$ops_geobasedata.url|replace:'http://':''}
				<span class="eit">{if $ma_gb_listing_url<>''}{$ma_gb_listing_url}{/if}</span><span class="ei">{if istrue($geobase.params.linksnewwindow)} {assign var="target" value="_new"} {else}{assign var="target" value="_top"}{/if} {trackerlink url="http://"|cat:$url class="geobaselink" item="weblinkclick" itemid=$ops_geobasedata.id target=$target}{$url|truncate:25:"...":true}{/trackerlink}</span>
			</div>
			{/if}
</div>
{/strip}
{* END ESSENTIALS *}
       		{include file="gb_listing_companyname.tpl"}
            <div class="starbox-wrapper">{include file="gb_listing_ratings.tpl"}</div>
          <a class="return button" href="{$Page->path}">&laquo;&nbsp;Return to search</a>
          <div class="clear"></div>
        </div>
        <div class="columns">
            <div class="column-1">
            
            {* gallery check *}
            {assign var="cf_gallery_check" value="false"}
            {section loop=20 name="cf_gallery_check"}
            	{assign var="gallery_count" value="gallery_image_"|cat:$smarty.section.cf_gallery_check.iteration}
            	{assign var="gallery_image" value=$ops_geobasedata.params.$gallery_count|json_decode}
                {if $gallery_image[0]<>''}
                	{assign var="cf_gallery_check" value="true"}
                {/if}
            {/section}
            {if $cf_gallery_check === "true"}
            <div class="cf_gallery" id="lightbox_gallery">
            <h2>Gallery</h2>
           	
            {addjs file="/core/media/js/lightbox.js"}
            <div class="content">
                {section loop=20 name="cf_gallery"}
                    {assign var="gallery_count" value=""}
                    {assign var="gallery_image" value=""}
                    {assign var="gallery_count" value="gallery_image_"|cat:$smarty.section.cf_gallery.iteration}
                    {if !empty($ops_geobasedata.params.$gallery_count)}
                         {assign var="gallery_image" value=$ops_geobasedata.params.$gallery_count|json_decode}
                         {if !empty($gallery_image[0])}
                            <div class="gallery-images">
                            <a href="{imagesizer src=$gallery_image[0] h=700 aoe=0 q=100}" rel="lightbox" title="{$gallery_image[1]}" description="" photo_credit=""><img src="{imagesizer src=$gallery_image[0] w=200 h=200 zc=1 q=100}" title="{$gallery_image[1]}" border="0"/></a></div>
                         {/if}
                     {/if}
                {/section}
                </div>
            </div>
            {/if}
            
          
			
			  {if !empty($ops_geobasedata.params.video)}
            <div class="cf_video">
            <h2>Video</h2>
             <div class="content">
                    {$ops_geobasedata.params.video}
              </div>
            </div>
            {/if}
            
            {* sweepstakes *}
            
            {if !empty($ops_geobasedata.params.sweepstakes)}
            <div class="cf_sweepstakes">
            <h2>Sweepstakes!</h2>
             <div class="content">
             		{$ops_geobasedata.company} is offering a sweepstakes! <a href="{$ops_geobasedata.params.sweepstakes}">Find out more here!</a>
              </div>
            </div>
             {/if}
             
              {* editorial review *}
            
            {if !empty($ops_geobasedata.params.review)}
            <div class="cf_review">
            <h2>Review</h2>
             <div class="content">
             		<a href="{$ops_geobasedata.params.review}">Read our review of {$ops_geobasedata.company} &raquo;</a>
              </div>
            </div>
             {/if}
          
             
             
             {if $ops_geobasedata.description <>''}
            <div class="description-wrapper">
             <h2>Description</h2>
             <div class="content">
                {include file="gb_listing_description.tpl"}
             </div>
             </div>
             {/if}
             {if is_array($config.showlistingrecommendations) && in_array($ops_geobasedata.listingtype,$config.showlistingrecommendations)}
				{if istrue($ops_geobasedata.enablerecommendations)} {*are recommendations enabled for this particular listing?*}
                 <div class="recommendations-wrapper">
                 <h2>Recommendations</h2>
                     <div class="content">
                     {include file="gb_listing_recommendations.tpl"}
                     </div>
                 </div>
                 {/if}
             {/if}
            </div>
            <div class="column-2">
            	{include file="googlemap-single.tpl"}
                {* mobile offers *}
                {if !empty($ops_geobasedata.params.ppm)}
                <div class="tott-offers">
                    {* PowerPlay Mobile Form *}
                        {addjs file="jquery-1.6.2.min.js" order = -3}
                        {addjs file="jquery-noconflict.js" order = -2}
                        {addjs file="jquery.form.js" order = -1}
                        {addjs file="/templates/includes/gbtheme_tott/ppm_handler.js"}
                    <h2>Mobile Offers</h2>
                        <div class="content">
                        <p>Sign up for {if !empty($ops_geobasedata.params.sign_up)}{$ops_geobasedata.params.sign_up}{else}great offers{/if} from {$ops_geobasedata.company} by texting <strong>{$ops_geobasedata.params.ppm}</strong> to 90947.</p>
                        <p>You can also enter your 10 digit mobile phone number here (twice for verification) to sign up for great offers and information:</p>
                        <form id="ppm_form" action="/templates/includes/gbtheme_tott/ppm.php" method="post">
                        <div class="form-row"><label for="phone">Mobile Phone Number: </label><input type="text" name="phone" /></div>
                        <div class="form-row last"><label for="phone2">Mobile Phone Number: </label><input type="text" name="phone2" /></div>
                        <input type="hidden" name="message" value="{$ops_geobasedata.params.ppm_interactive|default:$ops_geobasedata.params.ppm}" />
<p class="fineprint">Powered by PPM</a>                        
<p class="fineprint">Note: Messaging and data rates apply. You can opt-out or terminate the mobile coupon service at anytime, by texting <strong>STOP to 90947</strong>. For help, text <strong>HELP to 90947</strong>.  Max 8 msg/month.</p>
						<p class="fineprint">When you click the Submit button below we will send a text message to your phone. To confirm that you received the message and that you will receive coupons, text YES to 90947.</p>
                        </p>
                        <div class="form-row last"><input type="checkbox" name="terms[]" value="accept" />I accept the <a target="_blank" href="/Springfields-Best/Terms-and-Conditions/">terms &amp; conditions and privacy policy</a>.</div>
                        <input type="submit" class="button" value="Submit" /> 
                        </form>
                        <div id="ppm_response"></div>
                        </div>
        		</div>
                {/if}
                {if count($ops_geobasedata.quickfacts)}
               {include file="gb_listing_quickfacts.tpl"}
               {/if}
            </div>
        </div>
</div>