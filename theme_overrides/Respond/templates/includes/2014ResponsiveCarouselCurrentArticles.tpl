{getarticles tagids=$tagID what="article" max=$max order="ops_article.displayorder asc,ops_article.datepublished desc"}				

{if isset($articles)}	






    <div class="mySize"></div>
    <div class="article-list">
        <div class="content">
            <div class="row">
                <div class="span8 bizCar" style="margin-bottom:10px;"><a href="{$link}"><img src="{$headImage}" /></a></div>	
                <div class="hidden-phone" id="carDivBar" ></div>
            </div>
            <div id="carousel{$tagID}" class="touchcarousel black-and-white fullCarousel {$size}" style="">
                <ul class="touchcarousel-container">
                    {foreach name="a" from=$articles key="key" item="article"}


                        <li style="margin-right:20px;" class="carousel-image touchcarousel-item article-item {section loop=$article.tags name="tag"} tag_{$article.tags[tag].tagid}{/section}">
                    {if $article.image<>''}<a href="{$article.url}"><img src="{$article.url|cat:$article.image}" alt="{$article.title}"  /></a>{else}&nbsp;{/if}
                    <div style="margin-top:10px; text-align:center;"><a href="{$article.url}"><b>{$article.title}</b></a></div>

                {if $article.summary<>''}<p style="width:250px;">{$article.summary|truncate:115:"...":false}</p>{/if}
<!--{if $article.author<>''}<p class="article-byline">{$article.author}</p>{/if}-->


<!--<p class="article-date">{$article.datepublished|dateformat:$articledateformat}</p>-->


            </li>
        {/foreach}	
    </ul>
</div>
</div></div>

{/if}
{assign var="iscontent" value=""}

<script>
    {literal}
        
        //<div style="width:250px; height:250px; background:url('http://417mag.com/{$article.url|cat:$article.image}') center center;" alt="{$article.title}"  ></div>
    jQuery(document).ready(function(){
	var myID = {/literal} {$tagID} {literal}
        
    jQuery("#carousel"+myID).touchCarousel({
        /* carousel options go here see Javascript Options section for more info */
            
            scrollbar:false,
            loopItems:true,
            
            directionNavAutoHide:true,
            autoplay:false,
            autoplayDelay:3000,
            autoplayStopAtAction:true  
            
    });
         var parentWidth = jQuery("#carousel"+myID).parent().width();
        jQuery("#carousel"+myID).width(parentWidth);
        jQuery("#carousel"+myID+"").show();
});
var $window = jQuery(window);
function checkWidth() {
   
var windowsize = $window.width();
        //jQuery('.mySize').html(windowsize);
      
        
    }
    checkWidth();
    // Bind event listener
    jQuery(window).resize(checkWidth);
    {/literal}
    
</script>  
