/*   Slideshow                                  */
/*   by Jeff Fohl                               */
/*   Copyright, Godengo, Inc. - July 19, 2007   */

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      oldonload();
      func();
    }
  }
}

next = null;
cp= null;
galleryId = null;
pageModuleId = null;

function galleryPopup(popupURL,popupSpecs) {
	var slideshowPopup=window.open(popupURL,'popupGallery',popupSpecs);
	slideshowPopup.focus();
	slideshowPopup.opener.name = "main";
}

function nextSlide(nextSlideURL) {
	var slideshowPopup=window.open(nextSlideURL,'popupGallery');
}

function play() {
	next = "index.php?mode=popup&cp="+cp+"&view=slideshow&play=1";
	if(galleryId) { next = next + "&gallery=" + galleryId; }
	if(pageModuleId) { next = next + "&pagemoduleid=" + pageModuleId; }
    player = setTimeout("nextSlide(next);",5000);
	var playButton = document.getElementById("playButton");
	var pauseButton = document.getElementById("pauseButton");
	playButton.setAttribute("className","on");
	pauseButton.setAttribute("className","off");
	playButton.setAttribute("class","on");
	pauseButton.setAttribute("class","off");
}

function pause() {
	next = "index.php?mode=popup&cp="+(cp-1)+"&view=slideshow&play=0";
	if(galleryId) { next = next + "&gallery=" + galleryId; }
	if(pageModuleId) { next = next + "&pagemoduleid=" + pageModuleId; }
    clearTimeout(player);
	var playButton = document.getElementById("playButton");
	var pauseButton = document.getElementById("pauseButton");
	playButton.setAttribute("className","on");
	pauseButton.setAttribute("className","off");
	playButton.setAttribute("class","off");
	pauseButton.setAttribute("class","on");
	var slideshowPopup=window.open(next,'popupGallery');
}