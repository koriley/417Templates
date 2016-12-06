/**
 * rivistaPhoto.class.js
 * 
 * automatically creates markup from a photo
 * 
 * requires jQuery
*/
jQuery(document).ready(function($) {
	var $photos = jQuery(".photo-caption");
	jQuery.each($photos, function(index, photo) {
		var $newPhoto = jQuery(photo).clone().removeClass();
		var $newCaption = jQuery("<p>"+jQuery(photo).attr("alt")+"</p>");
		var $newDiv = jQuery("<div></div>")
			.addClass(jQuery(photo).attr("class"))
			.width(jQuery(photo).width())
			.append($newPhoto)
			.append($newCaption);
		jQuery(photo).after($newDiv).remove();
	});
});

