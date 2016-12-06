var ClientsCDE = Class.create({

	initialize: function(cdeid,screenshotURLs) {
		this.cde = $(cdeid);
		this.screenshotURLs = screenshotURLs
		this.clients = this.cde.select('.client');
		for (var i=0;i<this.clients.length;i++) {
			Element.extend(this.clients[i]);
			this.clients[i].screenshot = this.clients[i].select('.screenshot')[0];
			this.clients[i].screenshot.img = this.clients[i].screenshot.select('img')[0];
			this.clients[i].screenshot.img.hiddenImage = new Image();
			this.clients[i].screenshot.img.hiddenImage.url = this.screenshotURLs[i];
			this.clients[i].observe('mousemove', this.moveScreenshot);
			this.clients[i].observe('mouseover', this.showScreenshot);
			this.clients[i].observe('mouseout', this.hideScreenshot);
		}
	},
	
	moveScreenshot : function (e) {
		offsetParent = this.screenshot.getOffsetParent();
		this.offset = offsetParent.cumulativeOffset();
		this.screenshot.style.top = Event.pointerY(e)-this.offset['top']-182+"px";
		this.screenshot.style.left = Event.pointerX(e)-this.offset['left']+10+"px";
	},
	
	
	showScreenshot : function (e) {
		this.screenshot.style.display = "block";
		offsetParent = this.screenshot.getOffsetParent();
		this.offset = offsetParent.cumulativeOffset();
		this.screenshot.style.top = Event.pointerY(e)-this.offset['top']-182+"px";
		this.screenshot.style.left = Event.pointerX(e)-this.offset['left']+10+"px";
		this.screenshot.style.opacity = 1;
		this.screenshot.img.onload = function() {this.className = 'loaded';}
		this.screenshot.img.hiddenImage.onload = function() {this.screenshot.img.src = this.screenshot.img.hiddenImage.src}.bind(this);
		this.screenshot.img.hiddenImage.src = this.screenshot.img.hiddenImage.url;	
	},
	
	hideScreenshot : function () {
		this.screenshot.style.display = "none";
		this.screenshot.style.opacity = 0;
	}
	
});


