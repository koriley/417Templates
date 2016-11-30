{getpagedata id=$Page->pageid}

{php}
require_once 'inc/MCAPI.class.php';
$apikey="625fe830ae378113cdfa0d1686e685a6-us1";
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['NominatorEmail'];
$deal_on=$_POST['Subscribe'];
echo $deal_on;
if($email != ""){
	$api = new MCAPI($apikey);
	$merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'INTERESTS'=>'');	
	
	
	if($deal_on=='on'){$retval = $api->listSubscribe( "50e0803d24", $email, $merge_vars );}
	

} 


{/php}
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

{loadModules position="top"}

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta property="og:image" content="http://417mag.com{$Page->path}{if $pagedata.image <> '' }{$pagedata.image}{/if}" />
<meta property="og:image:width" content="400">
<meta property="og:image:height" content="250">
<meta property="og:type" content="city"/>
<meta property="og:url" content="http://417mag.com/whiskeyfest{$smarty.server.REQUEST_URI}"/>
<meta property="og:site_name" content="417 Magazine"/>
<meta property="fb:admins" content="100000807778635"/>
<meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
<meta property="og:title" content="<PAGETITLE>"/>
<meta property="fb:app_id" content="134468316683025"/>
<meta name="viewport" content="width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />


<script src="//code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript" src="/themes/Local/js/fbCommentsEN.js"></script>

<title><PAGETITLE></title>
<meta name="robots" content="all" />
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
<link href="/themes/Local/css/bootstrap3.min.css" rel="stylesheet" media="screen">
<link href="/themes/Local/css/417-2010.css" rel="stylesheet" type="text/css" media="only screen and (min-device-width:900px)" />
<link href="/themes/Local/css/417-2013.css" rel="stylesheet" type="text/css" media="only screen and (min-device-width:900px)"/>
<link href="/themes/Local/css/417-index.css" rel="stylesheet" type="text/css" />
<link href="/themes/Local/css/whiskey2014.css" rel="stylesheet" type="text/css" />
{*addjs file="bootstrap-overrides.js" order=51 position="footer"*}
<script src="/themes/Local/js/bootstrap3.min.js"></script>
<script src="/themes/Local/js/scrollTo-min.js"></script>
<script src="/themes/Local/js/localscroll-min.js"></script>
<!-- instagram add in, controled by module -->
<script type="text/javascript" language="JavaScript" src="/themes/Local/js/instagram.js"></script> 
<script type="text/javascript" language="JavaScript" src="/themes/Local/js/jQueryGatewayAd.js"></script> 
{include file="jqueryLatest.tpl"}
{include file="417ga.tpl"}
{addcss file="2014top.css" order="500"}

</head>
<body>
   
    
    
    <!--<div id="page-container">
        
        <div class="visible-lg">
    {*include file="top-417-2013.tpl"*}
        </div></div></div><!-- extra div here, seems to be something broken in the header; also page container needs to end here -->
    <div class="topFullBar visible-lg"></div>
    
    
    <div class="container">
    <div id="blackBar" class="hidden-sm hidden-xs hidden-md hidden-lg" >
        <div class="centerNav navBar">
        <nav class="navbar navbar-default navBar" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse navBar">
    <ul class="nav navbar-nav pull-left">
      <li><a href="#ov">OVERVIEW</a></li>
      <!--<li><a href="#sponsors">SPONSORS</a></li>-->
      <li><a href="#tickets">TICKETS</a></li>
      <li><a href="#spiritsList">SPIRITS LIST</a></li>
      
      <li><a href="#faq">FAQ</a></li>
      <li><a href="#gallery">GALLERY</a></li>
      
    </ul>
     
      <ul class="nav navbar-nav navbar-right">
          <li ><div class="fbShare popup" link="fb" style="margin-top:10px; margin-right:-10px;"></div></li>
          <li ><div class="tweet popup" link="https://twitter.com/intent/tweet?button_hashtag=417WhiskeyFest" style="margin-top:10px; margin-right:-5px;"></div></li>
          <li ><a href="http://www.417mag.com" target="_blank"><img src="/images/whisky/2014/417magDotcom_stacked.png" /></a></li>
      </ul>
    
  </div><!-- /.navbar-collapse -->
</nav>
    </div>
    
    </div>
    
       <div class="jumps" id="ov" name="ov">
	</div>
         <div class="row">
             <div class="col-md-12" >
                 <img class="img-responsive" src="/images/whisky/2014/WhiskeyFest14_header.png" style="width:100%">
             </div>
         </div>
        
           
            <nav class="navbar navbar-default navBar" role="navigation" id="stickyheader">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
      <p class="navbar-text visible-xs" style="padding-left:10px;">MENU<span class="glyphicon .glyphicon-arrow-right"></span></p>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse" id="menu">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse navBar" >
      
    <ul class="nav navbar-nav pull-left mobileRight" style="width:100%;">
      <li><a href="#ov">OVERVIEW</a></li>
      <!--<li><a href="#sponsors">SPONSORS</a></li>-->
      <li><a href="#tickets">TICKETS</a></li>
      <li><a href="#spiritsList">SPIRITS LIST</a></li>
      
      <li><a href="#faq">FAQ</a></li>
      <li><a href="#gallery">GALLERY</a></li>
      
      
   
      <div class="nav navbar-nav navbar-right mobileRight">
          <li ><div class="fbShare popup" link="fb" style="margin-top:10px;"></div></li>
          <li ><div class="tweet popup" link="http://twitter.com/share" style="margin-top:10px;"></div></li>
          <li ><a href="http://www.417mag.com" target="_blank"><img src="/images/whisky/2014/417magDotcom_stacked.png" /></a></li>
      </div></ul>
    
  </div><!-- /.navbar-collapse -->
</nav>
               
        <div id="stickyalias" class="jumps">
             
        
        </div>
</div>
        <div class="container topFix">
        <div class="row">
            <div class="col-md-12" id="mainBody">
                
		{if $pagecontent<>''}{eval var=$pagecontent}{/if}
		<MESSAGES>
		{loadModules position="middle"}
            </div>
        </div>
        </div>
            <div class="footer">©2015 <i>417 Magazine’s</i> Whiskey Fest | Please Enjoy Responsibly.</div>
              {literal}
            <script type="text/javascript">
               var screenWidth = $(window).width();
               
               if(screenWidth <=720){
                  $('.mobileRight').removeClass('navbar-nav').css('margin-left','15px') ;
                  
               }
               //$('.footer').html(screenWidth);
               $('.nav a').click(function(){
                   $('#menu').addClass('collapsed');
                   $('.navbar-collapse').removeClass('in');
                   $('.navbar-collapse').addClass('collapse');
               });    
                    
            $(document).ready(function(){ 
                
                    
                $('#mainbody table').each(function(){
                    $(this).removeAttr("width");
                    $(this).removeAttr("height");
                    $(this).removeAttr("style");
                    $(this).addClass("table");
                    $(this).wrap('<div class="table-responsive"></div>');    
                });
                 
                $('#mainBody img').each(function(){
                    //$(this).removeAttr("width");
                    //$(this).removeAttr("height");
                    //$(this).removeAttr("style");
                    $(this).addClass("img-responsive");
                  }); 
                     
                  
                      $('#gallery td.image').css('background-color', 'transparent');
                          
                      $('.nav').localScroll();    
                //twitter and fb share stuff          
                var myUrl = window.location.pathname;
                myUrl = myUrl.replace(/\//g,'%2f');
            $('.fbShare').html('<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.417mag.com'+myUrl+'%23.UTpMJRuqbfc.facebook"><img src="/images/whisky/2014/WhiskeyFest14_FB.png" class="img-responsive"></a>');

        $('.tweet').html('<a href="https://twitter.com/intent/tweet?button_hashtag=417WhiskeyFest" class="twitter-hashtag-button"><img src="/images/whisky/2014/WhiskeyFest14_twitter.png" class="img-responsive"></a>');
            $('.popup').click(function(event) {
    var width  = 575,
        myService= 'twitter',
        height = 400,
        left   = ($(window).width()  - width)  / 2,
        top    = ($(window).height() - height) / 2,
        url    = ($(this).attr('link')),
        opts   = 'status=1' +
                 ',width='  + width  +
                 ',height=' + height +
                 ',top='    + top    +
                 ',left='   + left;
                     
    if(url === "fb"){ url = 'https://www.facebook.com/sharer/sharer.php?app_id=113869198637480&sdk=joey&u=http%3A%2F%2Fwww.417mag.com'+myUrl+'&display=popup&ref=plugin';
                     myService='facebook-share-dialog';
    };
    window.open(url, myService, opts);
 
    return false;
  });
       
                var is_touch_device = ("ontouchstart" in window) || window.DocumentTouch && document instanceof DocumentTouch;
                        $('[data-toggle="popover"]').popover({
                            trigger: is_touch_device ? "click" : "hover",
                            'placement':'top'    
                        });



 });
    
      $(window).load(function(){
          
          $('#blackBar').hide();
          
        $(function(){
        // Check the initial Poistion of the Sticky Header
        var stickyHeaderTop = $('#stickyheader').offset().top;
 
        $(window).scroll(function(){
                if( $(window).scrollTop() > stickyHeaderTop ) {
                        
                        //$('#stickyheader').css({position: 'fixed', top: '0px', height: '60px'});
                        //$('#stickyheader').addClass('sticky');
                        $('#stickyalias').css({display: 'block'});
                        $('#blackBar').css('display','block');
                        $('#blackBar').removeClass('hidden-lg');
                        $('#blackBar').addClass('visible-lg');
                        
                        
                } else {
                        //$('#stickyheader').css({position: 'static', top: '0px', height: '60px'});
                        //$('#stickyheader').removeClass('sticky');
                        $('#stickyalias').css('display', 'none');
                        $('#blackBar').css('display','none');
                        $('#blackBar').addClass('hidden-lg');
                        $('#blackBar').removeClass('visible-lg');    
                }
        });
  });   
       });
       
       </script>
              {/literal}
</body>
</html>