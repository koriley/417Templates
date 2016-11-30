/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


//var pathname = jQuery(location).attr('hostname');
//console.log("myPath="+pathname);
//if(pathname === "www.417mag.com"){
    jQuery('body').append('<div id="fb-root"></div>');
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=134468316683025&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
//}


