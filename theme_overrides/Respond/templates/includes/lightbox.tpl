{addjs file="lightbox.js" position="footer"}
<div id="jquery-overlay" style="display: none;"></div>
<div id="jquery-lightbox-background" style="display: none;">
	<div id="jquery-lightbox" style="display: none;">
		<div id="lightbox-container-image-box">
			<div id="lightbox-container-image">
				<img id="lightbox-image">
				<div style="" id="lightbox-nav">
					<a href="#" id="lightbox-nav-btnPrev"><button class="btn" id="lightbox-nav-bottom-btnPrev"><i class="icon-backward"></i></button></a>
					<a href="#" id="lightbox-nav-btnNext"><button class="btn" id="lightbox-nav-bottom-btnNext"><i class="icon-forward"></i></button></a>
				</div>
				<div id="lightbox-loading">
					<a href="#" id="lightbox-loading-link">
						<div class="progress progress-striped active">
  							<div class="bar"></div>
						</div>
					</a>
				</div>
				
			</div>
		</div>
	
		<div id="lightbox-image-details" style="display:block;">
			<div id="lightbox-image-details-caption" style="display:block;"></div>
			<div id="lightbox-image-details-description"></div>
			<div id="lightbox-image-details-photo-credit"></div>
		</div>
            
		<div id="lightbox-secNav">
			<div style="" id="lightbox-nav-bottom">
				<button class="btn" id="lightbox-nav-bottom-btnPrev"><i class="icon-backward"></i></button>
				<button class="btn" id="lightbox-nav-bottom-btnNext"><i class="icon-forward"></i></button>
			</div>
			<div id="lightbox-nav-caption"><span class="plus_480">{$strings_lightbox_captions_plus_480}</span><span class="minus_480">{$strings_lightbox_captions_minus_480}</span></div>
			<button class="btn" id="lightbox-secNav-btnClose"><i class="icon-remove"></i></button>
			<div id="lightbox-image-details-currentNumber"><span class="plus_480"> {$strings_lightbox_image} </span><span id="lightbox-image-details-currentNumber-imageNumber"></span> {$strings_lightbox_image_of} <span id="lightbox-image-details-currentNumber-totalImages"></span></div>
			</div>
                            <div id="sponsershipAd" style="margin-top:3px;"> 
                           
                            {literal}
                                <script type='text/javascript'>
                                GA_googleFillSlot("ec_banner");
                                </script>
                            {/literal}
                            </div>
	</div>
</div>