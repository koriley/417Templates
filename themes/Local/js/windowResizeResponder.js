/**
 * WindowResizeResponder
 * 
 * Javascript to put all resize responses in one place
 * to make it easier to make changes to the response.
 * 
 */
var WindowResizeResponder = (function() {


	function isRegistered(parameters) {
		var isRegistered = false;
		jQuery.each(WindowResizeResponder.callbacks, function(index, callback) {
			if (JSON.stringify(callback) == JSON.stringify(parameters) &&
					callback.method.toString() == parameters.method.toString()) {
				isRegistered = true;
				return false;
			}
		});
		return isRegistered;
	};

	return {

		callbacks: [],

		/**
		 * Add a function to the resize array, including
		 * when we expect its first reponse to be ("ready" or "load")
		 * and any optional parameters to pass to the function
		 * 
		 * @param parameters
		 *     function - the function to call
		 *     when - when to do the first call of the function
		 *         "ready" - call on document ready
		 *         "load" - call on window load
		 *     params - optional parameter(s) to pass to the function
		 *         NOTE: params must be a single item, either one
		 *             parameter or structured as an object {}
		 * 
		 */
		register: function(parameters) {
			parameters = jQuery.extend({
				"method": null,			// required; the function to call on resize
				"callerClass": "",		// optional; method's class; if the method could be called to register more than once
				"when": "ready",		// initial call on document.ready or window.load
				"startDelay": 0,		// delay initial call by nnn milliseconds
				"startupLoop": false,	// put the callback in a loop at startup until return value is constant (no further change)
				"params": null			// optional parameters to pass to the callback function
			}, parameters || {});

			if (!isRegistered(parameters)) {
				parameters.when = parameters.when.toLowerCase() == "load" ? "load" : "ready";    // if not "load" then "ready"
				parameters.startDelay = parseInt(parameters.startDelay, 10);
				parameters.callerClass = parameters.callerClass.toString();
				WindowResizeResponder.callbacks.push(parameters);
			}
		},

		/**
		 * Remove function call from callbacks array.
		 * Count down to keep array start the same.
		 */
		deregister: function(func) {
			for (var len = (WindowResizeResponder.callbacks.length - 1), index = len; index >= 0; --index) {
				if (func == WindowResizeResponder.callbacks[index].method) {
					WindowResizeResponder.callbacks.splice(index, 1);
				}
			}
		},

		/**
		 * Called on resize or orientationchange
		 */
		executeCallbacks: function() {
			jQuery.each(WindowResizeResponder.callbacks, function(index, callback) {
				// execute the callback, passing parameters as necessary
				callback.method(callback.params);
			});
		},

		/**
		 * Called only on initial window load event
		 * 
		 * @param callback the callback function
		 */
		executeLoadCallback: function(callback) {
			// execute the callback, passing parameters as necessary
			if (callback.startDelay > 0) {
				window.setTimeout(function() {
					callback.method(callback.params);
				}, callback.startDelay);
			} else {
				callback.method(callback.params);
			}
		},

		/**
		 * Called only on inital document ready event
		 * 
		 * @param callback the callback function
		 */
		executeReadyCallback: function(callback) {
			// execute the callback, passing parameters as necessary
			if (callback.startDelay > 0) {
				window.setTimeout(function() {
					callback.method(callback.params);
				}, callback.startDelay);
			} else {
				callback.method(callback.params);
			}
		},

		/**
		 * For those callbacks that register to go through an initial
		 * loop before finally settling down, callback to them until
		 * the return value does not change.
		 * 
		 * @param callback the callback function
		 * @param previousValue value from previous call to compare
		 */
		executeStartupLoop: function(callback, previousValue) {
			var newValue = callback.method(callback.params);
			if (previousValue != newValue) {
				window.setTimeout(function() {
					WindowResizeResponder.executeStartupLoop(callback, newValue);
				}, 1000);
			} else {
				window.setTimeout(function() {
					WindowResizeResponder.finalStartupLoop(callback, previousValue);
				}, 1000);
			}
		},

		/**
		 * After things settle down from executeStartupLoop,
		 * try (hopefully) one final time to make sure.
		 * 
		 * @param callback the callback function
		 * @param previousValue value from previous call to compare
		 */
		finalStartupLoop: function(callback, previousValue) {
			var newValue = callback.method(callback.params);
			if (previousValue != newValue) {
				window.setTimeout(function() {
					WindowResizeResponder.executeStartupLoop(callback, newValue);
				}, 1000);
			}
		}

	};

})();


/**
 * Setup resize/orientationchange listen on document ready.
 * Check for old windowWidth and windowHeight to work around
 * IE8 bug where resize event is thrown whenever an element
 * is resized (as well as on window resize).
 * 
 * Put resize/orientationchange call in a timeout (20ms) to handle
 * IE problem with too many resize events on window resize.
 * 
 * Call any callbacks that have registered to be called on
 * document ready
 */
jQuery(document).ready(function() {
	var windowWidth = 0;
	var windowHeight = 0;
	var resizeTimer = null;
	jQuery(window).on('orientationchange resize', function(event) {
		window.clearTimeout(resizeTimer);
		resizeTimer = window.setTimeout(function() {
			if (windowWidth != jQuery(window).width() || windowHeight != jQuery(window).height()) {
				WindowResizeResponder.executeCallbacks();
				windowWidth = jQuery(window).width();
				windowHeight = jQuery(window).height();
			}
		}, 20);
	});

	jQuery.each(WindowResizeResponder.callbacks, function(index, callback) {
		if (callback.when == "ready") {
			WindowResizeResponder.executeReadyCallback(callback);
			if (callback.startupLoop == true) {
				window.setTimeout(function() {
					WindowResizeResponder.executeStartupLoop(callback, null);
				}, (1000 + callback.startDelay));
			}
		}
	});
});	

/**
 * Call any callbacks that have registered to be called on
 * window load
 */
jQuery(window).load(function() {
	jQuery.each(WindowResizeResponder.callbacks, function(index, callback) {
		if (callback.when == "load") {
			WindowResizeResponder.executeLoadCallback(callback);
			if (callback.startupLoop == true) {
				window.setTimeout(function() {
					WindowResizeResponder.executeStartupLoop(callback, null);
				}, (1000 + callback.startDelay));
			}
		}
	});
});

