/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




          
          
      /*    jQuery('#newHeader').hide();
        jQuery(function(){
        // Check the initial Poistion of the Sticky Header
        var stickyHeaderTop = jQuery('#stickyheader').offset().top;
 
        jQuery(window).scroll(function(){
                if( jQuery(window).scrollTop() > stickyHeaderTop ) {
                        
                        //jQuery('#stickyheader').css({position: 'fixed', top: '0px'});
                        //jQuery('#stickyheader').addClass('sticky');
                        jQuery('#stickyheader').css({display: 'none'}); 
                        jQuery('#newHeader').css({display: 'table'});
                        
                } else {
                        //jQuery('#stickyheader').css({position: 'static', top: '0px'});
                        //jQuery('#stickyheader').removeClass('sticky');
                        jQuery('#newHeader').css({display: 'none'});  
                        jQuery('#stickyheader').css({display: 'table'});
                }
        });
  });   */

jQuery(".monthly-calendar").css('margin-top','10px');
    var winsWidth = jQuery(window).width();  
    jQuery('div').each(function(){
        var phone = jQuery(this).attr('data-phone');
        if((phone == "no")&& (winsWidth <= "760")){
            jQuery(this).remove();
        }
    });
    
   
 
     
     
var phone = jQuery(this).attr('data-phone');
      if((winsWidth >=770) && (winsWidth <= 1200)){ 
          jQuery('#hideMeTablet').each(function(){
              jQuery(this).remove();
          });
      }
      
      
//jQuery('iframe').wrap('<div class="video-container"></div>');      


jQuery(document).ready(function() {
    var offset = 220;
    var duration = 500;
    jQuery(window).scroll(function() {
        if (jQuery(this).scrollTop() > offset) {
            jQuery('.back-to-top').fadeIn(duration);
        } else {
            jQuery('.back-to-top').fadeOut(duration);
        }
    });
    
    jQuery('.back-to-top').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
    });
    
    
});
    
    

window.addEventListener("orientationchange", function(){
    window.location.reload();
}, false);