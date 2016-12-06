/*****

Image Cross Fade Redux
Version 1.0
Last revision: 02.15.2006
steve@slayeroffice.com

Please leave this notice intact. 

Rewrite of old code found here: http://slayeroffice.com/code/imageCrossFade/index.html

modified by Jeff Fohl on March 29, 2007

added buttons and ability to exit slide show loop

*****/

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

window.addEventListener?window.addEventListener("load",so_init,false):window.attachEvent("onload",so_init); // loads the so_init() onload

var d=document, slides = new Array(), zInterval = null, current=0, pause=false, nextSlideIncrement = null, slideIncrement = null, fadeIncrement = null;  							// establishes variables
																																											

function so_init() {																						// initialization function - runs after page load is finished
	slides = d.getElementById("photoFader-contentcontainer").getElementsByTagName("div");					// finds the slides in the slideshow, creates array, "img"
	for(i=1;i<slides.length;i++)																			// for all images in the img array, do:
	slides[i].xOpacity = 0;																					// sets the opacity of the image to 0%. xOpacity has a value of 0.0 - 1.0.
	slides[0].style.display = "block";																		// sets the display of the first image to block (images are inline by default).
	slides[0].xOpacity = .99;																				// sets the opacity of the first image to 99%
	slideIncrement = setTimeout(so_xfade,3000);																// instructs the script to run the so_xfade 1 second from now, starting the slideshow
}

function so_xfade() {																						// the cross fade function											
	cOpacity = slides[current].xOpacity;																	// new variable, which is the opacity of the current slide
	nIndex = slides[current+1]?current+1:0;																	// variable, which is the identity of the next slide in the sequence
	nOpacity = slides[nIndex].xOpacity;																		// the opacity of the next slide in the sequence
	
	cOpacity-=.05; 																							// decrease the opacity of the current slide by the value
	nOpacity+=.05;																							// increase the opacity of the next slide by the value
	
	slides[nIndex].style.display = "block";																	// set the display type of the next slide to "block"
	slides[current].xOpacity = cOpacity;																	// apply the value
	slides[nIndex].xOpacity = nOpacity;																		// apply the value
	
	setOpacity(slides[current]); 																			// run the setOpacity function on the current item
	setOpacity(slides[nIndex]);																				// run the setOpacity function on the current item
	if(cOpacity<=0) {																						// if the current slide's opacity is less than or = 0,
		slides[current].style.display = "none";																// make it disappear,
	
		var tabID = slides[current].getAttribute("id");
		for (var n=0; n < links.length; n++) {
			var tabTitle = links[n].getAttribute("title");
			if (tabID == tabTitle) {
				clearTab(links[n]);
			}
		}
		
		current = nIndex;																					// and make the next slide the current slide, and
		
		var tabID = slides[current].getAttribute("id");
		for (var n=0; n < links.length; n++) {
			var tabTitle = links[n].getAttribute("title");
			if (tabID == tabTitle) {
				showTab(links[n]);
			}
		}
		
		slideIncrement = setTimeout(so_xfade,3000);															// run the setTimeout method to start it all over in 1 second. 
	} else {																								// otherwise, continue to fade in 50 milliseconds (.05 seconds)
		fadeIncrement = setTimeout(so_xfade,50);
	}
}		

function setOpacity(obj) {																					// this function sets the opacity of the the slide passed to it
		if(obj.xOpacity>.99) {																				// if the opacity is already greater than .99 (100%), return nothing
			obj.xOpacity = .99;
			return;
		}
		obj.style.opacity = obj.xOpacity;																	// set the opacity of the slide, for (Firefox?)
		obj.style.MozOpacity = obj.xOpacity;																// Mozilla
		obj.style.filter = "alpha(opacity=" + (obj.xOpacity*100) + ")";										// Internet Exploder
	}


function prepareMenus() {
	menu = d.getElementById("photoFaderMenu");																// the menu
	links = menu.getElementsByTagName("a");																	// the link array
	for (var m=0; m < links.length; m++) {
		links[m].onclick = function() {
			showItem(this);
			return false;
		}
	}
	showTab(links[0]);
}

function clearTab(tab) {
	tab.className = "unselected";
	tab.parentNode.className = "unselected";
}

function showTab(tab) {
	tab.className = "selected";
	tab.parentNode.className = "selected";
}

function showItem(menuItem) {
	if (fadeIncrement) {
	clearTimeout(fadeIncrement);
	};
	if (slideIncrement) {
	clearTimeout(slideIncrement);
	};
	for (var a=0; a < links.length; a++) {
		clearTab(links[a]);
		var titles = links[a].getAttribute("title");
		hiddenContent = document.getElementById(titles);
		hiddenContent.style.display = "none";	
		hiddenContent.style.opacity = 0;																	// set the opacity of the slide, for (Firefox?)
		hiddenContent.style.MozOpacity = 0;																	// Mozilla
		hiddenContent.style.filter = "alpha(opacity=0)";
		}
	showTab(menuItem);
	var thisSlide = menuItem.getAttribute("title");
	visibleContent = document.getElementById(thisSlide);
	visibleContent.style.display = "block";	
	visibleContent.style.opacity = 1;																		// set the opacity of the slide, for (Firefox?)
	visibleContent.style.MozOpacity = 1;																	// Mozilla
	visibleContent.style.filter = "alpha(opacity=100)";
}

addLoadEvent(prepareMenus);