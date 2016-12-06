/* AJAX code for connecting to PowerPlay Mobile */

jQuery(document).ready(function() { 
    var ppm_options = { 
        target:        '#ppm_response'
    }; 
    // bind form using 'ajaxForm' 
    jQuery('#ppm_form').ajaxForm(ppm_options); 
}); 