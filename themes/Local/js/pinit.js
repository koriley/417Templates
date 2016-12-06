/*function getSelected() {
    if(window.getSelection) {
        return window.getSelection();
    }
    else if(document.getSelection) {
        return document.getSelection();
    }
    else {
        var selection = document.selection && document.selection.createRange();
        if(selection.text) {
            return selection.text;
        }
        return false;
    }
    return false;
}
           
$(document).ready(function(){
    var myUrl = window.location.pathname;
    myUrl = myUrl.replace(/\//g,'%2f');
    $('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com'+myUrl+'%23.UTpMJRuqbfc.facebook"><img src="http://www.417mag.com/images/elements/share.png" /></a>');
           
    $("#article img").each( function(index){ 
        var parentStyle = $(this).parent().attr('style');
        var canPin = $(this).attr('id');
        var imgSrc = $(this).attr('src'); 
        var thisWidth = $(this).width();
        var thisHeight = $(this).height();
        var thisAlign = $(this).attr('align');
        var thisHspace = $(this).attr('hspace');    
        var imgStyle = $(this).attr('style');
        var myText = getSelected();
        var thisFloat;
        var myMargin;
        var pathname = window.location.pathname;
        pathname = pathname.replace(/\//g,'%2f');
        if(typeof parentStyle != 'undefined'){
            if(parentStyle === 'text-align: center;'){
                imgStyle = imgStyle+' margin:0 auto;'
            }
                         
                             
        }
        if(canPin != 'nopin'){  
            //console.log(imgStyle);
            if(typeof thisAlign === 'undefined'){
                thisFloat = 'float:none;';
            }
            if (thisAlign === 'right'){
                thisFloat = 'float:right;';
            }
            if (thisAlign === 'left'){
                thisFloat = 'float:left;';
            }     
            if(typeof thisHspace === 'undefined'){
                myMargin = '';
            }
            else{
                myMargin = 'margin:'+thisHspace+'px;';
            }    
            if((thisWidth >= '100')&&(thisHeight>='100')){
                if(typeof imgStyle === 'undefined'){
                    $(this).replaceWith('<div class="imgContainer" style="'+myMargin+'width:'+thisWidth+'px; height:'+thisHeight+'px; '+thisFloat+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com'+pathname+'&media=http%3A%2F%2Fwww.417mag.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="width:'+thisWidth+'px; height:'+thisHeight+'px;" /></div>');
                                      
                }else{
                    $(this).replaceWith('<div class="imgContainer" style="'+imgStyle+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com'+pathname+'&media=http%3A%2F%2Fwww.417mag.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="'+imgStyle+'" /></div>');
                }
            }       
            $('#my_'+index+'_pinhover').hide(); 
        }
                 
    });
               
                
              
    $('.imgContainer img').each(function(){
        var myStyle = $(this).attr('style');
        $(this).css({
            'margin':'0',
            'margin-left':'0px',
            'margin-right':'0px',
            'margin-top':'0px',
            'margin-bottomt':'0px'
        },myStyle);
                  
    });   
          
    $('.imgContainer').mouseenter(function(){
        var myId=$(this).find('div').attr('id');
        var imgId= $(this).find('.myImage').attr('id'); 
                     
        $('#'+myId).click(function(){
            var myText = getSelected();
            var imgSrc = $('#'+imgId).attr('src');
            var pathname = window.location.pathname;
            pathname = pathname.replace(/\//g,'%2f');
                         
            $('#'+myId+' a').attr('href', '//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com'+pathname+'&media=http%3A%2F%2Fwww.417mag.com'+imgSrc+'&description='+myText);
        });
        $('#'+myId).show("slide", {
            easing:"swing", 
            direction: "left"
        });
                     
    });
                 
    $('.imgContainer').mouseleave(function(){                     
        var myId=$(this).find('div').attr('id');
                    
        $('#'+myId).hide("slide", {
            easing:"swing", 
            direction:"left"
        });
    });
                   
             
                 
});*/