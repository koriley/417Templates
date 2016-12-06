// Set of utility functions in namespace Util
var Util = (function() {
	return {
		getUrlParams: function() {
			var params = {};
			var pairs = [];
			var pair = [];
			var pairs = window.location.search.substring(1).split('&');
			for(var i = 0, len = pairs.length; i < len; i++) {
				pair = pairs[i].split("=");
				params[pair[0]] = pair[1];
			}
			return params;
		},
		
		getUrlParam: function(name) {
			if (typeof name == "undefined" || name == null) {
				return null;
			}
			var params = Util.getUrlParams();
			if (params.hasOwnProperty(name)) {
				return params[name];
			} else {
				return null;
			}
		},

		getCookie: function(cookieName) {
			var nameEQ = cookieName + "=";
			var cookies = document.cookie.split(";");
			var cookieVal = null;
			jQuery.each(cookies, function(index, cookie) {
				cookie = jQuery.trim(cookie);
				if (cookie.indexOf(nameEQ) == 0) {
					cookieVal = cookie.substring(nameEQ.length, cookie.length);
					return false;
				}
			});
			return cookieVal;
		},
		
		setCookie : function(cookieName, value, hours) {
			var expires = "";
			if (typeof days != "undefined") {
				var date = new Date();
				date.setTime(date.getTime()+(days*60*60*1000));
				var expires = "; expires="+date.toGMTString();
			}
			document.cookie = escape(cookieName)+"="+escape(value)+expires+"; path=/";
		}

	};
})();


/**
 * Provide our own debugging console to write to:
 * a) the Javascript console if it exists - enabled by a
 *    browser's Javascript debugger.
 * b) our own div on the page - when this is turned
 *    on by including "texterityDebugConsole=true" in the url.
 * If neither case is true, the message is thrown away.
 */
var Console = (function(){
	var position = {};

	/**
	 * Check to see if we want to use the Texterity Debug Console.
	 * If yes, then check to see if it already exists in the
	 * document body.  If not, then create it.
	 * Note: The debug console will not appear on the page until
	 * the first debug statement enables it.
	 * 
	 * @returns true - "texterityDebugConsole=true" in the url
	 *     false - "texterityDebugConsole=true" NOT in the url
	 */
	function debugConsole() {
		var enableConsole = Util.getUrlParam("texterityDebugConsole") == "true";
		if (enableConsole && jQuery("#texterityDebugConsole").size() == 0) {
			var style=
				"display: block;" +
				"position: fixed;" +
				"right: 10px;" +
				"bottom: 10px;" +
				"height: 200px;" +
				"width: 300px;" +
				"background-color: #FFFFFF;" +
				"border: 1px solid #999999;" +
				"font-size: 11px;" +
				"padding: 2px;" +
				"overflow: auto;"
			jQuery(document.body).append('<div id="texterityDebugConsole" style="'+style+'"></div>');

			// enable simple drag of the console
			jQuery("#texterityDebugConsole").on("mousedown", function(e) {
				position.left = e.pageX;
				position.top = e.pageY;
				jQuery("#texterityDebugConsole").on("mousemove", function(event) {
					var left = jQuery(this).offset().left - (position.left - event.pageX);
					var top = jQuery(this).offset().top - (position.top - event.pageY);
					jQuery(this).offset({ top: top, left: left})
					position.left = event.pageX;
					position.top = event.pageY;
				});
			});
			jQuery("#texterityDebugConsole").off("mouseup").on("mouseup", function(event) {
				jQuery("#texterityDebugConsole").off("mousemove");
				position = {};
			});
		}
		jQuery("#texterityDebugConsole").show();
		return enableConsole;
	};

	function consoleZ(consoleDiv) {
		var elements = jQuery("*");
		var zindex = 0;
		jQuery.each(elements, function(index, element) {
			var indexCurrent = parseInt(jQuery(element).css("z-index"), 10);
			zindex = (indexCurrent > zindex) ? indexCurrent : zindex;
		});
		if (zindex == consoleDiv.css("z-index")) {
			return zindex;
		} else {
			return zindex++;
		}
	};

	function outputToConsole(logType, message) {
		var consoleDiv = jQuery("#texterityDebugConsole");
		consoleDiv
			.append("<div>"+logType+": "+message+"</div>")
			.scrollTop(consoleDiv.prop("scrollHeight"))
			.css({"z-index":consoleZ(consoleDiv)});
	};

	return {
		log: function(message) {
			if (window.console && window.console.log) {
				window.console.log(message);
			}
			if (debugConsole()) {
				outputToConsole("LOG", message);
			}
		},

		warn: function(message){
			if (window.console && window.console.warn) {
				window.console.warn(message);
			} else {
				Console.log(message);
			}
			if (debugConsole()) {
				outputToConsole("WARN", message);
			}
		},

		error: function(message){
			if(window.console && window.console.error) {
				window.console.error(message);
			} else {
				Console.log(message);
			}
			if (debugConsole()) {
				outputToConsole("ERROR", message);
			}
		},

		debug: function(message){
			if(window.console && window.console.debug) {
				window.console.debug(message);
			} else {
				Console.log(message);
			}
			if (debugConsole()) {
				outputToConsole("DEBUG", message);
			}
		},

		trace: function(message){
			if(window.console && window.console.trace) {
				window.console.trace(message);
			} else {
				Console.log(message);
			}
			if (debugConsole()) {
				outputToConsole("TRACE", message);
			}
		}
	};

})();

var ResponsiveDebug = (function() {
	
	return {
		enableResponsiveDetection: function() {
			var enableResponsiveDetection =
					Util.getUrlParam("responsiveDetection") == "true" ||
					Util.getCookie("responsiveDetection") != null;
			if (enableResponsiveDetection && jQuery("#responsive-detection-block").size() == 0) {
				jQuery(document.body).append('<div id="responsive-detection-block" />');
			}
		}
	};
	
})();

jQuery(document).ready(function() {
	ResponsiveDebug.enableResponsiveDetection();
});

