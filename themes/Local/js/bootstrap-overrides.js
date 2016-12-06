/* ************************* START ************************* /
 * 
 * OVERRIDEN FILE: bootstrap-collapse.js
 * 
 * ************************* START **************************/

// override after document ready
jQuery(document).ready( function() {

	/* =============================================================
	 * Override the Twitter Bootstrap's Collapse module show function
	 * to generalize the active menus.
	 * 
	 * change from:
	 *    actives = this.$parent && this.$parent.find('> .accordion-group > .in')
	 * 
	 * change to:
	 *    actives = this.$parent && this.$parent.find('.in')
	 * 
	 * ============================================================ */
	jQuery.fn.collapse.Constructor.prototype.show  = function () {
	    var dimension
	    , scroll
	    , actives
	    , hasData

	  if (this.transitioning) return

	  dimension = this.dimension()
	  scroll = jQuery.camelCase(['scroll', dimension].join('-'))
	  actives = this.$parent && this.$parent.find('.in')	// CHANGED

	  if (actives && actives.length) {
	    hasData = actives.data('collapse')
	    if (hasData && hasData.transitioning) return
	    actives.collapse('hide')
	    hasData || actives.data('collapse', null)
	  }

	  this.$element[dimension](0)
	  this.transition('addClass', jQuery.Event('show'), 'shown')
	  jQuery.support.transition && this.$element[dimension](this.$element[0][scroll])
	}


	/* =============================================================
	 * Extends Twitter Bootstrap's Collapse module.
	 *     Override current click functionality.
	 *     Add toggle class switching to the collapse activators.
	 *     Add ignore functionality to selected parts of accordion
	 * ============================================================ */
	!(function ($) {
		// remove current functionality
		$(document).off('click.collapse.data-api');

		// add new functionality
		$(document).on('click.collapse.data-api', '[data-toggle=collapse]', function (e) {

			// if clicking on an ignore target, just return
			if (jQuery(e.target).attr("data-target-ignore") == "ignore") {
				return;
			}

			var $this = $(this);
			var href;
			var target = $this.attr('data-target')
					|| e.preventDefault()
					|| (href = $this.attr('href')) 
					&& href.replace(/.*(?=#[^\s]+$)/, ''); //strip for ie7
			var option = $(target).data('collapse') ? 'toggle' : $this.data();

			// bootstrap 2.2.1 functionality
			$this[$(target).hasClass('in') ? 'addClass' : 'removeClass']('collapsed')
			$(target).collapse(option)

			// Added data-parent functionality
			// find all elements with the same data-parent and remove "open" class
			// then, if current is not "open", add "open" class to current
			var dataParent = $this.attr('data-parent');
			if ($this.hasClass('open')) {
				$("*[data-parent='"+dataParent+"']").removeClass('open');
			} else {
				$("*[data-parent='"+dataParent+"']").removeClass('open');
				$this.addClass('open');
			}
		});
	})(window.jQuery);


});



/* ************************* END ************************* /
 * 
 * OVERRIDEN FILE: bootstrap-collapse.js
 * 
 * ************************* END **************************/



/* ************************* START ************************* /
 * 
 * EXTENSION OF FILE: bootstrap-dropdown.js
 * 
 * See: https://github.com/twitter/bootstrap/commit/ed74992853054c57f33ef5d21941f0869e287552
 * and: https://github.com/twitter/bootstrap/issues/4550
 * 
 * Extended on 12/12/2012 in order to fix problem of dropdown links not working on touch devices.
 * 
 * ************************* START **************************/

jQuery(document).ready(function() {
	  jQuery(document)
	    .on('touchstart.dropdown.data-api', '.dropdown-menu', function (e) { e.stopPropagation() });
});

/* ************************* END ************************* /
 * 
 * OVERRIDEN FILE: bootstrap-dropdown.js
 * 
 * ************************* END **************************/
