/*document.onmousemove = getPosition;

function getPosition(args) 
{
   var X = 0;
   var Y = 0;
   var e = (!e) ? window.event : e;
   if (e.pageX || e.pageY) {
      X = e.pageX;
      Y = e.pageY;
   }
   else if (e.clientX || e.clientY) {
      if (document.body.scrollLeft || document.body.scrollTop) {
         X = e.clientX + document.body.scrollLeft;
         Y = e.clientY + document.body.scrollTop;
      }
      else {
         X = e.clientX + document.documentElement.scrollLeft;
         Y = e.clientY + document.documentElement.scrollTop;
      }
   }
   //document.getElementById("blah").style.left = posX;
   //document.getElementById("blah").style.top = posY;
}



function backgroundFilter()
{
    var div;
    
    if(document.getElementById)
    // Standard way to get element
    div = document.getElementById('backgroundFilter'); 
    else if(document.all) 
    // Get the element in old IE's 
    div = document.all['backgroundFilter']; 
    
    // if the style.display value is blank we try to check it out here 
    if(div.style.display==''&&div.offsetWidth!=undefined&&div.offsetHeight!=undefined)
    {
        div.style.display = (div.offsetWidth!=0&&div.offsetHeight!=0)?'block':'none'; 
    }
    
    // If the background is hidden ('none') then it will display it ('block').
    // If the background is displayed ('block') then it will hide it ('none').
    div.style.display = (div.style.display==''||div.style.display=='block')?'none':'block';
}

function popUp()
{
    var div;
    
    if(document.getElementById)
    // Standard way to get element
    div = document.getElementById('popupWindow'); 
    else if(document.all) 
    // Get the element in old IE's 
    div = document.all['popupWindow']; 
    
    // if the style.display value is blank we try to check it out here 
    if(div.style.display==''&&div.offsetWidth!=undefined&&div.offsetHeight!=undefined)
    {
        div.style.display = (div.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none'; 
    }
    
    // If the PopUp is hidden ('none') then it will display it ('block').
    // If the PopUp is displayed ('block') then it will hide it ('none').
    div.style.display = (div.style.display==''||div.style.display=='block')?'none':'block';
    
    // Off-sets the X position by 15px
    X = X + 15;
    
    // Sets the position of the DIV
    div.style.left = (X)+'px';
    div.style.top = (Y)+'px';
}

function popUp2()
{
    var div;
    
    if(document.getElementById)
    // Standard way to get element
    div = document.getElementById('popupWindow2'); 
    else if(document.all) 
    // Get the element in old IE's 
    div = document.all['popupWindow2']; 
    
    // if the style.display value is blank we try to check it out here 
    if(div.style.display==''&&div.offsetWidth!=undefined&&div.offsetHeight!=undefined)
    {
        div.style.display = (div.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none'; 
    }
    
    // If the PopUp is hidden ('none') then it will display it ('block').
    // If the PopUp is displayed ('block') then it will hide it ('none').
    div.style.display = (div.style.display==''||div.style.display=='block')?'none':'block';
    
    // Off-sets the X position by 15px
    X = X + 15;
    
    // Sets the position of the DIV
    div.style.left = (X)+'px';
    div.style.top = (Y)+'px';
}

function popUp3()
{
    var div;
    
    if(document.getElementById)
    // Standard way to get element
    div = document.getElementById('popupWindow3'); 
    else if(document.all) 
    // Get the element in old IE's 
    div = document.all['popupWindow3']; 
    
    // if the style.display value is blank we try to check it out here 
    if(div.style.display==''&&div.offsetWidth!=undefined&&div.offsetHeight!=undefined)
    {
        div.style.display = (div.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none'; 
    }
    
    // If the PopUp is hidden ('none') then it will display it ('block').
    // If the PopUp is displayed ('block') then it will hide it ('none').
    div.style.display = (div.style.display==''||div.style.display=='block')?'none':'block';
    
    // Off-sets the X position by 15px
    X = X + 15;
    
    // Sets the position of the DIV
    div.style.left = (X)+'px';
    div.style.top = (Y)+'px';
}

function popUp4()
{
     var div;
    
    if(document.getElementById)
    // Standard way to get element
    div = document.getElementById('popupWindow4'); 
    else if(document.all) 
    // Get the element in old IE's 
    div = document.all['popupWindow4']; 
    
    // if the style.display value is blank we try to check it out here 
    if(div.style.display==''&&div.offsetWidth!=undefined&&div.offsetHeight!=undefined)
    {
        div.style.display = (div.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none'; 
    }
    
    // If the PopUp is hidden ('none') then it will display it ('block').
    // If the PopUp is displayed ('block') then it will hide it ('none').
    div.style.display = (div.style.display==''||div.style.display=='block')?'none':'block';
    
    // Off-sets the X position by 15px
    X = X + 15;
    
    // Sets the position of the DIV
    div.style.left = (X)+'px';
    div.style.top = (Y)+'px';
}*/

function popUp(){
$(document).ready(function(){
$('#article .popupLink').each(function(){
var whichPopUp = $(this).attr('onmouseover');
 //$('.popupLink').removeAttr('onmouseover');
 //alert(whichPopUp);
 switch(whichPopUp){
     case 'javascript:popUp()':
         
         $(this).hover(function(){
             $('#popupWindow').show();
             $(document).mouseup(function(){
                 $('#popupWindow').hide();
             });
         });
         break;
         case 'javascript:popUp2()':
         
         $(this).hover(function(){
             $('#popupWindow2').show();
             $(document).mouseup(function(){
                 $('#popupWindow2').hide();
             });
         });
         break;
         case 'javascript:popUp3()':
         
         $(this).hover(function(){
             $('#popupWindow3').show();
             $(document).mouseup(function(){
                 $('#popupWindow3').hide();
             });
         });
         break;
         case 'javascript:popUp4()':
         
         $(this).hover(function(){
             $('#popupWindow4').show();
             $(document).mouseup(function(){
                 $('#popupWindow4').hide();
             });
         });
         break;
 }
    
});
});

}
function popUp2(){ popUp(); }
function popUp3(){
    popUp();
}
function popUp4(){ popUp(); }