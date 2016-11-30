function getSelected() {
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
           
jQuery(document).ready(function(){
    var myUrl = window.location.pathname;
    myUrl = myUrl.replace(/\//g,'%2f');
    jQuery('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com'+myUrl+'%23.UTpMJRuqbfc.facebook"><img src="http://www.417mag.com/images/elements/share.png" /></a>');
    var toPin = jQuery('img').attr('data-pin');
    
    if((toPin === 'yes') || (toPin === '')){
    jQuery(".article img").each( function(index){ 
        var imgSrc = jQuery(this).attr('src');
        var myText = getSelected();
        var pathname = window.location.pathname;
        pathname = pathname.replace(/\//g,'%2f');
                 
        jQuery(this).parent().css('position','relative'); 
        jQuery(this).after('<div id="img'+index+'" style="display:none; width:40px; height:20px; position:absolute; top:0;"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com'+pathname+'&media='+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img id="img'+index+'pin" style="position:absolute; left:0; top:0;" src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div>');
                 
        jQuery(this).parent().mouseenter(function(){
                     
            jQuery("#img"+index).show("slide", {
                easing:"swing", 
                direction: "left"
            });
            jQuery("#img"+index+"pin").click(function(){
                myText = getSelected();
                jQuery('#img'+index+' a').attr('href', '//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417mag.com'+pathname+'&media='+imgSrc+'&description='+myText);
            });
        });
        jQuery(this).parent().mouseleave(function(){
            jQuery("#img"+index).hide("slide", {
                easing:"swing", 
                direction:"left"
            });
        });
    });
    }
});