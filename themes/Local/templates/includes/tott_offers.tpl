{addcss file="tott.css"}
{assign var="aboutPagePath" value="/Springfields-Best/About-Springfields-Best/"}
{assign var="ppmKeyword" value="BEST"}
<div class="tott tott-offers">   
    <h2>Mobile Offers<a href="/Springfields-Best/"><img src="/images/module-logo.png" alt="Springfield's Best" /></a></h2>
    	<div class="content">
                {* PowerPlay Mobile Web Form *}
                {addjs file="jquery-noconflict.js" order = -2}
                {addjs file="jquery.form.js" order = -1}
                {addjs file="/templates/includes/gbtheme_tott/ppm_handler.js"}
                <p>Sign up for outstanding offers from leading businesses by texting <strong>{$ppmKeyword}</strong> to 90947, or enter your 10 digit mobile number (twice for verification) below.</p>
                <form id="ppm_form" action="/templates/includes/gbtheme_tott/ppm.php" method="post">
                    <div class="form-row"><label for="phone">Mobile Phone Number: </label><input type="text" name="phone" /></div>
					<div class="form-row"><label for="phone">Mobile Phone Number: </label><input type="text" name="phone2" /></div>


 <div style="visibility:hidden" class="form-row first"><input type="checkbox" name="message[]" value="bestAll" checked="checked"  />BEST</div>
                    
                   
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