{assign var="oaspos" value="Top1,Right1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta property="og:image" content="http://www.417bride.com{$article.url}{$article.image}" />
        
        <meta property="og:type" content="city"/>
        <meta property="og:url" content="{php}echo $mypage; {/php}"/>
        <meta property="og:site_name" content="417 Bride Magazine"/>
        <meta property="fb:admins" content="100000807778635"/>
        <meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
        <meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
        <meta property="fb:app_id" content="134468316683025"/>
        {include file="jqueryLatest.tpl"}
        <script type="text/javascript" src="http://fbcomments-email-notifications.googlecode.com/files/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/css/Bride-417.css" rel="stylesheet" type="text/css" />
      
        {include file="oas_head.tpl"}
    </head>
    <body>
        <div id="page-container">

            {include file="top-bride.tpl"}
            <div id="page-body">
                <!--<div id="breadcrumb">
                
                </div>	-->	
                <!--<div id="column-1">				
                                
                                        
                </div>-->
                <div id="columns-1-2" style="width:600px;">
                    {if $pagecontent<>''}
                        {$pagecontent}
                        
                    {/if}
                </div>  
                    <div id="column-3">							  				  				  		
                        {loadModules position="right"}
                    </div>

                </div>
                        {include file="footer-bride.tpl"}
            </div>
            {literal}    
<script>
    function getSelected() {
    if(window.getSelection) { return window.getSelection(); }
        else if(document.getSelection) { return document.getSelection(); }
                    else {
                            var selection = document.selection && document.selection.createRange();
                                selection.test = selection.test.replace(/;/g,',');
                            if(selection.text) {  return selection.text; }
                return false;
            }
            return false;
        }
        $(document).ready(function(){
           $("p img").each( function(index){ 
                 
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
                    $(this).replaceWith('<div class="imgContainer" style="'+myMargin+'width:'+thisWidth+'px; height:'+thisHeight+'px; '+thisFloat+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417bride.com'+pathname+'&media=http%3A%2F%2Fwww.417bride.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="width:'+thisWidth+'px; height:'+thisHeight+'px;" /></div>');
                                      
                 }else{
                    $(this).replaceWith('<div class="imgContainer" style="'+imgStyle+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417bride.com'+pathname+'&media=http%3A%2F%2Fwww.417bride.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="'+imgStyle+'" /></div>');
                   }
                }       
             $('#my_'+index+'_pinhover').hide(); 
                
                 
                });
               
                
              
                $('.imgContainer img').each(function(){
                  var myStyle = $(this).attr('style');
                  $(this).css({'margin':'0','margin-left':'0px','margin-right':'0px','margin-top':'0px','margin-bottomt':'0px'},myStyle);
                  
               });   
          
              $('.imgContainer').mouseenter(function(){
                 var myId=$(this).find('div').attr('id');
                 var imgId= $(this).find('.myImage').attr('id'); 
                     
                    $('#'+myId).click(function(){
                         var myText = getSelected();
                         var imgSrc = $('#'+imgId).attr('src');
                         var pathname = window.location.pathname;
                 pathname = pathname.replace(/\//g,'%2f');
                         
                             $('#'+myId+' a').attr('href', '//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417bride.com'+pathname+'&media=http%3A%2F%2Fwww.417bride.com'+imgSrc+'&description='+myText);
                         });
                 $('#'+myId).show("slide", {easing:"swing", direction: "left" });
                     
                   });
                 
                $('.imgContainer').mouseleave(function(){                     
                    var myId=$(this).find('div').attr('id');
                    
                 $('#'+myId).hide("slide", {easing:"swing", direction:"left"});
                    });
                   
                 
          });
  </script>
  {/literal}
    </body>
</html>
