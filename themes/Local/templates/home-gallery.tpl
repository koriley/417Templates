{php}

function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}
$mypage=curPageURL();
//$Page->assign('togo', '$mypage');
//echo $mypage;
{/php}
{assign var="oaspos" value="Top1,Right1,x01,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta property="og:image" content="http://www.417homemag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
<meta property="og:image" content="http://www.417homemag.com/images/elements/logo.jpg"/>
<meta property="og:type" content="city"/>
<meta property="og:url" content="{php}echo $mypage; {/php}"/>

<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta property="og:site_name" content="417 Magazine"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="Description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="Keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" />
        <link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
{include file="jqueryLatest.tpl"}
{include file="oas_head.tpl"}
{include file="417ga.tpl"}
</head>
<body>
<div id="page-container">

{include file="top-417-2013.tpl"}
   
            <div id="page-body">
                <!--<div id="breadcrumb">
                
                </div>	-->	
                <!--<div id="column-1">				
                                
                                        
                </div>-->
                
                <div id="columns-1-2" style="width:600px;">
                    {if $Page->tags[316]<>''}
                    <img alt="" src="/Galleries/Home/bathrooms.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[317]<>''}
                    <img alt="" src="/Galleries/Home/bedrooms.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[318]<>''}
                    <img alt="" src="/Galleries/Home/diningrooms.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[319]<>''}
                    <img alt="" src="/Galleries/Home/kitchens.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[320]<>''}
                    <img alt="" src="/Galleries/Home/extraspaces.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[321]<>''}
                    <img alt="" src="/Galleries/Home/kids.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[322]<>''}
                    <img alt="" src="/Galleries/Home/livingrooms.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[323]<>''}
                    <img alt="" src="/Galleries/Home/outside.png" style="width: 600px; height: 100px; " />
                    {elseif $Page->tags[324]<>''}
                    <img alt="" src="/Galleries/Home/uniqueideas.png" style="width: 600px; height: 100px; " />
                    
                    {/if}
                    <a id="pintrest-pin" class="pinit" href='{literal}javascript:void((function(){var e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)})());{/literal}'><img src="/images/elements/pinit.jpg" style="margin-right:5px;" /></a><iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=standard&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:30px"></iframe>
                    {if $pagecontent<>''}
                        {$pagecontent}	
                    {/if}
                </div>  
                    <div id="column-3">							  				  				  		
                        {loadModules position="right"}
                    </div>

                </div>
                        {include file="footer-417.tpl"}
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
                    $(this).replaceWith('<div class="imgContainer" style="'+myMargin+'width:'+thisWidth+'px; height:'+thisHeight+'px; '+thisFloat+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417homemag.com'+pathname+'&media=http%3A%2F%2Fwww.417homemag.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="width:'+thisWidth+'px; height:'+thisHeight+'px;" /></div>');
                                      
                 }else{
                    $(this).replaceWith('<div class="imgContainer" style="'+imgStyle+'"><div class="pinhover" id="my_'+index+'_pinhover"><a target="_blank" data-pin-config="beside" href="//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417homemag.com'+pathname+'&media=http%3A%2F%2Fwww.417homemag.com'+imgSrc+'&description='+myText+'" data-pin-do="buttonPin" ><img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" /></a></div><img class="myImage"  id="img_'+index+'" src="'+imgSrc+'" style="'+imgStyle+'" /></div>');
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
                         
                             $('#'+myId+' a').attr('href', '//pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.417homemag.com'+pathname+'&media=http%3A%2F%2Fwww.417homemag.com'+imgSrc+'&description='+myText);
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
