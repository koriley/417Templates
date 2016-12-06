{getarticles tagids=$tagID what="article" order="ops_article.displayorder asc,ops_article.datepublished desc" issueid=$publication.issue.id}				

{if isset($articles)}	
	  
	
	
	
	
		
        
        <div id="carousel" class="touchcarousel black-and-white">
                <ul class="touchcarousel-container">
		{section name="t" loop=$articles }
                 
                   
				<li class="touchcarousel-item">
                                            {if $articles[t].image<>''}<a href="{$articles[t].url}"><img src="{if $articles[t].image<>''}/core/includes/phpThumb/phpThumb.php?src={$articles[t].url}{$articles[t].image}&w=250&q=100{else}/images/blank.gif{/if}" border="0" width="250px" {if $articles[t].image<>''}{else}  {/if}alt="{$articles[t].title}" class="article-list-image" /></a>{else}&nbsp;{/if}
                                            <!--<p class="m-caption" style="width:250px;">
						{*if $articles[t].title==$articles[t].title}<a href="{$articles[t].url}">{$articles[t].title}</a>{else}<a href="{$articles[t].url}">{$articles[t].title}</a>{/if}
						
						{if $isDEPT<>''}
						<!--<a href="/417-Magazine/Department-Archive/index.php?tagID={$articles[t].id}">Archive&nbsp;&raquo;</a>-->
						{/if}
						
						<p>{$articles[t].summary|truncate:200:"...":false}</p>
						<p class="article-byline">{if $articles[t].author<>''}{$articles[t].author}{/if*}</p>
						</p>-->
			
                              </li>
	    {/section}	
            </ul>
		</div>
	

{/if}
{assign var="iscontent" value=""}
 {literal}
        <script>
    jQuery(document).ready(function($){
	
    $("#carousel").touchCarousel({
        /* carousel options go here see Javascript Options section for more info */			
    });
});
        

    
</script>  
{/literal}