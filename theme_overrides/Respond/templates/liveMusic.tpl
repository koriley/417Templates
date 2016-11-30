 {addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417SETLIST"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {if $publication.url=='/417-Home/'}    
            {include file="2014HomeHead.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="INC_Head.tpl"}
        {else}
            {include file="2014head.tpl"}

        {/if}
        {*addjs file="silverCookie.js" position="footer"*}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}" >
        {include file="micrositeStickyHeader.tpl"}

        <div class="heroImage" style="width:100%">{loadModules position="header"}</div>

        <div id="index-container" class="page-container container-fluid">
            <!--<div class="breadTitle">{*include file="breadcrumb.tpl"*}</div>-->
            <div class="spacer" style="margin-bottom:5px;"></div>
            <div class="columns-container">
 



                <div class="row-fluid" id="topLeftandRight">
                    <div class="column-left respond-container span9 reSizeMe">
                        <div class="row-fluid" id="topLeftandRight">
                            <div class="column-left respond-container span12 hidden-phone" style='text-align:center;'>
                                <div id="primary_nav_wrap">
                                    <ul>
                                        <li class=""><a href="http://www.417mag.com/417-Live-Music-Calendar/">HOME</a></li>
                                        <li><a href="#">GENRE</a>
                                            <ul>
                                                <li>
                                                    <div  class='hoverOverDiv span12'></div>
                                                    {assign var="respond_containers" value="12,12"}

                                                </li>
                                            </ul>
                                        </li>

                                        <li>
                                            <a href="#" class="searchClick">VENUE</a>
                                        </li>
                                        <li ><a href="fake" >TODAY</a></li>
                                        <li><a href="#" class="searchClick">SEARCH</a></li>
                                    </ul>
                                </div>

                                <div class='searchDrop'></div>    
                            </div>
                            <div class="visible-phone">
                                <div class='searchDrop' style="display: block;"></div>
                            </div>
                        </div>
                        <div style="text-align: center;"> {include file="sponsorship.tpl"}</div>
                        {assign var="respond_containers" value="12,9"}
                        
                        {loadModules position="top"}
                        <div id="calendarPlace">
                        
                    </div>
                       
                    {if $pagecontent<>''}{$pagecontent}{/if}
                    <div id="removeMe" style="margin-top:40px;"> {loadModules position="middle"}</div>


                </div>
                <div class="column-left respond-container span3 newResize">
                    {assign var="respond_containers" value="12,3"}
                     
                    {loadModules position="right"}
                </div>


            </div> 
        </div>

        {include file="bottom.tpl"}
</body>
</html>

{literal}
    <script>
        jQuery('.menuSearch').appendTo('.searchDrop');
//jQuery('#removeMe').remove();
        jQuery(".searchClick").click(function(event) {
            event.preventDefault();
            var iAm = jQuery(this).html();
            jQuery('#search').attr('placeholder', iAm);
            jQuery('.menuSearch').slideToggle("slow");
        });
        var gen = jQuery('#toHover').html();
        jQuery('.hoverOverDiv').html(gen);
        /*jQuery(document).mouseleave(function(){
            alert('dont leave me :(');
        });*/
    jQuery('.hideMe').hide();
     jQuery('.calendar-sidebar').removeClass('span4');
            jQuery('.calendar-sidebar').addClass('span12');
    jQuery(document).ready(function(){
        var d = new Date();
        var day = d.getDate();
        var month = d.getMonth()+1;
        var year = d.getFullYear();
        var fullDate = year+"-"+month+"-"+day;
        var todayUrl ="http://www.417mag.com/417-Live-Music-Calendar/?date_range=Specific+Date+Range&startdate="+fullDate+"&enddate="+fullDate+"&show_reader_submitted=on&calendarfilters_genre=&view=search_event&search=&submit=Search";
        jQuery('a[href=fake]').attr("href",todayUrl);
      // alert(todayUrl);
    
    /*  jQuery('.eventsContainer').ready(function(){
       var dayData = jQuery('.eventsContainer').html();
    jQuery('#calendarPlace').html(dayData);
    });
    //jQuery('.eventsContainer').appendTo('#calendarPlace');
    jQuery('.load_calendar').click(function(){
        jQuery('.eventsContainer').ready(function(){
        dayData = jQuery('.eventsContainer').html();
    jQuery('#calendarPlace').html(dayData);
    });
    });*/
        
        //this is to fix the show more articles button on the blog carasol 
   var archive="/417-Magazine/Department-Archive/index.php?tagID=376";
   jQuery('.archive').attr('href', archive);
      
      
      });
    </script>
{/literal}
 