<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link href="/themes/Local/css/mobile.css" rel="stylesheet" type="text/css" />
 {include file="jqueryLatest.tpl"}
{include file="417ga.tpl"}

</head>
<body>
<div style="" id="mainFrame">
    <div id="menuButton"></div>
        <div id="dropMenu" style="visibility:hidden;">           
         
                      <a href="/mobile-site/mobile-dining/"><div class="navItem">EAT</div></a>
                      <a href="/mobile-site/mobile-shopping/"><div class="navItem">SHOP</div></a>
                      <a href="/mobile-site/mobile-calendar/"><div class="navItem">DO</div></a>
                      <a href="http://www.417mag.com/mobile-site/mobile-peoplePics/"><div class="navItem">PEOPLE PICS</div></a>
                      <a href="/mobile-site/mobile-blog/"><div class="navItem">BLOGS</div></a>
                     
				<div class="navItem"><form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
    <input type="hidden" name="ie" value="UTF-8" />
    <input type="text" name="q" size="20" />
    <input type="submit" name="sa" value="Search 417" />
  </div>
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script></div>
                    </div>
<div class="middle">
    <div class="middleContent">
        <a href="http://www.417mag.com/mobile-site/"><img src="http://www.417mag.com/images/mobile/MobileSiteElements_07.png"  class="headerImage"/></a>
        {loadModules position="middle"}
    




<div class="bannerAd">
{literal}
  <script>  
      
      $(document).ready(function(){
      $("#dropMenu").removeAttr("style");
          $("a").each(function(){
              var _href = $(this).attr("href");
              $(this).attr("href", _href + "?flag=1");
          });
              $('.fullSite').click(function(){
                     
                     myURL = document.URL;
                     url =  window.location.href.replace('?flag=1', '?flag=0');
                         switch (myURL){
                             case 'http://www.417mag.com/mobile-site/?flag=1':
                                 url = 'http://www.417mag.com/?flag=0';
                                 break;
                         
                             case 'http://www.417mag.com/mobile-site/mobile-dining/?flag=1':
                                 url = 'http://www.417mag.com/417-Magazine/417-Dining/?flag=0';
                                 break;
                             
                             case 'http://www.417mag.com/mobile-site/mobile-shopping/?flag=1':
                                 url = 'http://www.417mag.com/417-Magazine/417-Shopping/?flag=0';
                                 break;   
                               
                            case 'http://www.417mag.com/mobile-site/mobile-calendar/?flag=1':
                                 url = 'http://www.417mag.com/417-Magazine/417-Calendar/?flag=0';
                                 break;
                                     
                            case 'http://www.417mag.com/mobile-site/mobile-peoplePics/?flag=1':
                                 url = 'http://www.417mag.com/417-Magazine/People-Pics/?flag=0';
                                 break;
                                     
                            case 'http://www.417mag.com/mobile-site/mobile-blog/?flag=1':
                                 url = 'http://www.417mag.com/Blogs/417-Blog/?flag=0';
                                 break;         
                         }
                            window.location.href = url;
                        
                  });
          $("#dropMenu").hide();
          $("#menuButton").click(function(){
              
              $("#dropMenu").toggle("slide", { direction: "up" });
      });
          });
    </script>
    
    

   

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://secure421.hostgator.com/~gocoupon/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=18");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a3860731&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a3860731' border='0' alt='' /></a></noscript>
{/literal}</div>
    
<div class="fullSite"><div class="fullSiteButton">Full Site</div></div>	
</div></div></div>
</body>
</html>

