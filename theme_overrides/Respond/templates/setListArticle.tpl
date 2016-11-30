{addjs file="pageLayout.js" position="footer"}

{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417SETLIST"}
<html lang="en">
    <head>
        {if $publication.url=='/417-Home/'}    
            {include file="2014HomeHead.tpl"}
        {elseif $publication.url=='/Biz417/'}
            {include file="INC_Head.tpl"}
        {else}
            {include file="2014head.tpl"}

        {/if}
        {addcss file="music.css" order="99999999"}
        {addcss file="2014Article.css" order="99999999"}
{addjs file="417pinit.js" position="footer"}
        {*addjs file="silverCookie.js" position="footer"*}
    </head>
    <body>
         {include file="micrositeStickyHeader.tpl"}

        <div class="heroImage" style="width:100%">{loadModules position="header"}</div>
        <div class="spacer" style="margin-bottom:5px;"></div>
        <div id="articleContainer" class="page-container container-fluid">




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
                </div></div>
            <div id="articleContainer" class="page-container container-fluid">
                {include file="breadcrumb.tpl"}
                <div class="row-fluid">
                    <div class="columns-container two-columns">
                        <div class="column-middle respond-container span8">
                            {assign var="respond_containers" value="12,8"}
                            {*loadModules position="middle"*}

                            {include file="pagetools.tpl"}
                            <article class="article page-content">
                                {if (!isset($article.params.showpagetitle) || istrue($article.params.showpagetitle))}<h1 class="article-title">{$article.title}</h1>{/if}
                                {if $article.subtitle<>''}<h3 class="deck">{$article.subtitle}</h3>{/if}
                                {if $article.author<>''}<div class="by-line"><!--{$strings_article_template_byline_intro}-->{$article.author}</div>{/if}



                                {if istrue($config.showarticlepublishdate)}
                                    <div class="datepublished">{$strings_article_template_datepublished}<time datetime="{$article.datepublished|dateformat:'%Y-%m-%d %H:%M'}" pubdate>{$article.datepublished|dateformat:$config.dateformat}</time></div>
                                        {/if}




                                {if (!isset($article.params.showarticleimage) || istrue($article.params.showarticleimage)) && $article.image<>''}
                                    {if $Page->params.cparticle < 2}
                                        <div class="image-container">
                                            <img src="{$article.url|cat:$article.image}" />
                                            {*addresponsiveimg respond_containers=$respond_containers src=$article.url|cat:$article.image q=100 alt=$article.photodescription*}
                                            {if $article.photodescription<>''}<p class="photo-description">{$article.photodescription}</p>{/if}
                                            {if $article.photocredit<>''}<p class="photo-credit">{$article.photocredit}</p>{/if}
                                        </div>
                                    {/if}
                                {/if}
                                {$article.body}


                            </article>
                            {loadModules position="middle"}



                        </div>
                        <div class="column-right respond-container span4">
                            {assign var="respond_containers" value="12,4"}
                            {*loadModules position="right"*}
                            {include file="articleRight"}
                        </div>
                    </div>
                    <div class="column-middle respond-container span12">
                        {assign var="respond_containers" value="12,12"}
                        <div  class="fb-comments" data-href="http://www.417mag.com{$smarty.server.PHP_SELF}" data-numposts="5" data-colorscheme="light"></div>
                    </div>
                </div>

            </div>    

        </div>

                    <div style="display:none">{loadModules position="bottomcenter"}</div>

            {include file="bottom.tpl"}
    </body>
   {literal}
    <script>
        jQuery('.menuSearch').appendTo('.searchDrop');
jQuery('#removeMe').remove();
        jQuery(".searchClick").click(function(event) {
            event.preventDefault();
            var iAm = jQuery(this).html();
            jQuery('#search').attr('placeholder', iAm);
            jQuery('.menuSearch').slideToggle("slow");
            jQuery('#search').css('height','auto');
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
   
      jQuery("form[name='searchEvent']").attr('action','/417-Live-Music-Calendar/');
      
      });
    </script>
{/literal}
</html>