/**
 * PictureFill
 * Modified: Peter Scannell
 * Date: August 2012
 * Based on:
 *     Picturefill - Responsive Images that work today. (and mimic the proposed Picture element with divs).
 *     Author: Scott Jehl, Filament Group, 2012 | License: MIT/GPLv2
 * 
 * NOTE: Currently, this routine only works with the max-width media query.  It is linked to the php
 * function addresponsiveimg which currently only sets up for max-width.  If we decide to support
 * other media queries, then both getCurrentMediaQuery and tallyMediaQueries must be updated.
 * 
 */


var PictureFill = (function() {
	var mediaQueries = [];
	var lastMediaQuery = null;

	// Enable strict mode
	"use strict";

	/**
	 * Loop through all the picture fill data blocks and create an array with
	 * all the breakpoints we are paying attention to on the current page.
	 */
	function tallyMediaQueries() {
		mediaQueries = [];
		// Note: getAttribute is faster than jQuery.attr
		jQuery.each(jQuery("div.data-media-block"), function() {
			if (jQuery.inArray(this.getAttribute("data-media"), mediaQueries) == -1) {
				mediaQueries.push(this.getAttribute("data-media"));
			}
		});
		var start = "(max-width: ".length;
		mediaQueries.sort(function(a,b) {
			var a1 = parseInt(a.substring(start), 10);
			var b1 = parseInt(b.substring(start), 10);
			return (a1 - b1);
		});
	};

	/**
	 * Loop through the array of breakpoints to see which one applies for the
	 * current media query/resize state of the browser.
	 * 
	 * @returns matched breakpoint or empty string for no match (default)
	 */
	function getCurrentMediaQuery() {
		var currentMediaQuery = "";
		jQuery.each(mediaQueries, function(index, value) {
			if (matchMedia && matchMedia(value).matches) {
				currentMediaQuery = value;
				return false;
			}
		});
		return currentMediaQuery;
	};


	return {
		/**
		 * Check to see if we need to replace pictures based on the detected breakpoint.
		 * If so, replace the img src with the correct value for the breakpoint.
		 */
		fillPictures : function() {
			// call tally every time, in case media blocks are added/removed at runtime (<10ms on IE)
			tallyMediaQueries();
			var mediaQuery = getCurrentMediaQuery();
			if (mediaQuery == lastMediaQuery) {
				return;
			}
			lastMediaQuery = mediaQuery;

			// Note: getAttribute is faster than jQuery.attr
			jQuery.each(jQuery("div.data-picture-block"), function() {
				var match = null;
				jQuery.each(jQuery(this).find("div"), function() {
					var dataMedia = this.getAttribute("data-media");
					if (dataMedia == mediaQuery) {
						match = this.getAttribute("data-src");
						return false;
					} else if (dataMedia == null) {
						match = this.getAttribute("data-src");
					}
				});

				// Find any existing img element in the picture element
				var picImg = jQuery(this).find("img");
				if( match != null && typeof match != "undefined") {
					if(picImg.length == 0) {
						picImg = jQuery("<img />", {
							src: match,
							alt: jQuery(this).attr("data-alt")
						});
						jQuery(this).append(picImg);
					} else {
						picImg.attr('src', match);
					}
				} else if( picImg.length > 0 ) {
					picImg.remove();
				}
			});
		}


	};

})();

//jQuery(document).ready(function() {
	/* Trigger picture replacement on orientationchange or resize.
	 * Put within a timeout to prevent IE from going crazy...
	 * This time can be relatively long, as this just relates to picture
	 * sharpness, and the user probably won't notice this while resizing.
	 */
/*
var picFillTimer = null;
	jQuery(window).on('orientationchange resize', function(event) {
		window.clearTimeout(picFillTimer);
		picFillTimer = window.setTimeout(function() {
			PictureFill.fillPictures();
		}, 300);
	}).trigger("resize");

});
*/

WindowResizeResponder.register({
	"method": PictureFill.fillPictures,
	"when": "ready"
});
