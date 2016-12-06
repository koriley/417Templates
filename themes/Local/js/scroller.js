/***********************************************
* CMotion Image Gallery- � Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for source code
* Last updated Mar 15th, 04'. Added "End of Gallery" message.
* This copyright notice must stay intact for legal use
* Modified here for continuous motion by jscheuer1
***********************************************/

var restarea=6 //1) width of the "neutral" area in the center of the gallery in px
var maxspeed=8 //2) top scroll speed in pixels. Script auto creates a range from 0 to top speed.

function enlargeimage(path, optWidth, optHeight){ //function to enlarge image. Change as desired.
var actualWidth=typeof optWidth!="undefined" ? optWidth : "600px" //set 600px to default width
var actualHeight=typeof optHeight!="undefined" ? optHeight : "500px" //set 500px to  default height
var winattributes="width="+actualWidth+",height="+actualHeight+",resizable=yes"
window.open(path,"", winattributes)
}

////NO NEED TO EDIT BELOW THIS LINE////////////

var iedom=document.all||document.getElementById
var scrollspeed=0
var movestate=""

var actualwidth=''
var cross_scroll_0, cross_scroll_1, ns_scroll
var loadedyes=0

function ietruebody(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}


function getposOffset(what, offsettype){
var totaloffset=(offsettype=="left")? what.offsetLeft: what.offsetTop;
var parentEl=what.offsetParent;
while (parentEl!=null){
totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
parentEl=parentEl.offsetParent;
}
return totaloffset;
}


function moveleft(){
if (iedom&&loadedyes){
movestate="left"
if (parseInt(cross_scroll_0.style.left)<(-actualwidth))
cross_scroll_0.style.left=parseInt(cross_scroll_1.style.left)+actualwidth+"px"
if (parseInt(cross_scroll_1.style.left)<(-actualwidth))
cross_scroll_1.style.left=parseInt(cross_scroll_0.style.left)+actualwidth+"px"
cross_scroll_0.style.left=parseInt(cross_scroll_0.style.left)-scrollspeed+"px"
cross_scroll_1.style.left=parseInt(cross_scroll_1.style.left)-scrollspeed+"px"
//showhidediv("visible")
}
lefttime=setTimeout("moveleft()",10)
}

function moveright(){
if (iedom&&loadedyes){
movestate="right"
if (parseInt(cross_scroll_0.style.left)>0)
cross_scroll_1.style.left=parseInt(cross_scroll_0.style.left)-actualwidth+"px"
if (parseInt(cross_scroll_1.style.left)>0)
cross_scroll_0.style.left=parseInt(cross_scroll_1.style.left)-actualwidth+"px"
cross_scroll_0.style.left=parseInt(cross_scroll_0.style.left)+scrollspeed+"px"
cross_scroll_1.style.left=parseInt(cross_scroll_1.style.left)+scrollspeed+"px"
}
righttime=setTimeout("moveright()",10)
}

function motionengine(e){
var dsocx=(window.pageXOffset)? pageXOffset: ietruebody().scrollLeft;
var dsocy=(window.pageYOffset)? pageYOffset : ietruebody().scrollTop;
var curposy=window.event? event.clientX : e.clientX? e.clientX: ""
curposy-=mainobjoffset-dsocx
var leftbound=(menuwidth-restarea)/2
var rightbound=(menuwidth+restarea)/2
if (curposy>rightbound){
scrollspeed=Math.floor((curposy-rightbound)/((menuwidth-restarea)/2) * maxspeed)
if (window.righttime) clearTimeout(righttime)
if (movestate!="left") moveleft()
}
else if (curposy<leftbound){
scrollspeed=(leftbound-curposy)/((menuwidth-restarea)/2) * maxspeed
if (window.lefttime) clearTimeout(lefttime)
if (movestate!="right") moveright()
}
else
scrollspeed=0
}

function contains_ns6(a, b) {
while (b.parentNode)
if ((b = b.parentNode) == a)
return true;
return false;
}

function stopmotion(e){
if ((window.event&&!crossmain.contains(event.toElement)) || (e && e.currentTarget && e.currentTarget!= e.relatedTarget && !contains_ns6(e.currentTarget, e.relatedTarget))){
if (window.lefttime) clearTimeout(lefttime)
if (window.righttime) clearTimeout(righttime)
movestate=""
}
}

function fillup(){
if (iedom){
crossmain=document.getElementById? document.getElementById("motioncontainer") : document.all.motioncontainer
menuwidth=parseInt(crossmain.style.width)
mainobjoffset=getposOffset(crossmain, "left")
cross_scroll_0=document.getElementById? document.getElementById("motiongallery_0") : document.all.motiongallery_0
cross_scroll_1=document.createElement('div')
cross_scroll_1.style.position='absolute'
cross_scroll_1.style.whiteSpace='nowrap'
extra=document.createElement('nobr')
extra.innerHTML=document.all? document.all['trueContainer'].innerHTML : document.getElementById("trueContainer").innerHTML
cross_scroll_1.appendChild(extra)
crossmain.appendChild(cross_scroll_1)
actualwidth=document.all? cross_scroll_0.offsetWidth : document.getElementById("trueContainer").offsetWidth
cross_scroll_1.style.left=actualwidth+'px'
crossmain.onmousemove=function(e){
motionengine(e)
}

crossmain.onmouseout=function(e){
stopmotion(e)
}
}
loadedyes=1
}
window.onload=fillup