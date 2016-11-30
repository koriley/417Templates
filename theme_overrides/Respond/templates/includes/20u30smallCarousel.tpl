{getarticles tagids=$tagID what="article" max=$max order="ops_article.displayorder asc,ops_article.datepublished desc"}				

{if isset($articles)}	







    <div class="article-list">
        <div class="content">
            <div class="row">
                <div class="span8" style="padding-left:5px; margin-bottom:10px;"><a href="{$link}"><img src="{$headImage}" /></a></div>	
                <!--<div class="hidden-phone" style="border-top:7px solid black; width:auto; margin-top:17px; margin-left:10px;"></div>-->
            </div>
            <div id="carousel{$tagID}" class="koHelper touchcarousel black-and-white fullCarousel {$size}" style="display:none; width:350px; height:auto;">
                <ul class="touchcarousel-container">
                    {foreach name="a" from=$articles key="key" item="article"}


                        <li style="margin-right:20px;" class="carousel-image touchcarousel-item article-item {section loop=$article.tags name="tag"} tag_{$article.tags[tag].tagid}{/section}">
                    {if $article.image<>''}<a href="{$article.url}"><img src="{$article.url|cat:$article.image}" alt="{$article.title}"  /></a>{else}&nbsp;{/if}
                    <div style="margin-top:10px; text-align:center;"><a href="{$article.url}"><b>{$article.title}</b></a></div>

                {if $article.summary<>''}<p>{$article.summary|truncate:115:"...":false}</p>{/if}
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
    jQuery(document).ready(function(){
	var myID = {/literal} {$tagID} {literal}
        
    jQuery("#carousel"+myID).touchCarousel({
        /* carousel options go here see Javascript Options section for more info */
            
            scrollbar:false,
            loopItems:true,
            
            directionNavAutoHide:true,
            autoplay:true,
            autoplayDelay:3000,
            autoplayStopAtAction:true  
            
    });
        jQuery("#carousel"+myID+"").show();
});
        
    {/literal}
    
</script>  
