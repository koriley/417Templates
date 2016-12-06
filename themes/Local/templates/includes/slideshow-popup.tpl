{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}
        {addcss file="2014Article.css" order="99999999"}
    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file="2014Top.tpl"}
        <div id="publication-container" class="page-container container-fluid">
            <div class="row-fluid" style="border-bottom:0px;">
              <div class="column-top respond-container span12" id="removeBorder" style="border-right:0px; padding-right:0px; border-bottom:0px;">
                  {assign var="respond_containers" value="12,12"}
	
		{include file="pagetools.tpl"}
	
        </div></div>
            <div class="columns-container">
                <div class="row-fluid" >
                    <div class="column-middle respond-container span12" style="border:0px;">
                        {assign var="respond_containers" value="12,12"}
                        <h1 class="ab hidden-phone galHead" style="text-align:center; width:100%;">{$imagelist[0].title}</h1>
                        <div style="text-align:center; width:100%;"><img src="{imagesizer src=$gallery.url|cat:$imagelist[0].image}" alt="{$imagelist[0].title}" /></div>
                        <h1 class="ab hidden-desktop galHead" style="text-align:center; width:100%;">{$imagelist[0].title}</h1>
                        <div id="description" style="line-height:20px;">
                       
                    {if $imagelist[0].description <>''}<p>{$imagelist[0].description}</p>{/if}
                {if $imagelist[0].photocredits <>''}<p class="photo-credit">{$imagelist[0].photocredits}</p>{/if}
                <p><img src="{imagesizer src=$gallery.url|cat:$imagelist[0++].image w=600 h=382 q=100}" /></p>
            </div>
            
    </div>
     <div style="text-align:center">       
    {pager formname="gallery" style="button" recordcount=$imgcount rowsperpage=1 maxpages=7}<a href="#" onclick="play(); return false;" class="{if $play==1}on{elseif $play==0}off{/if}" id="playButton">Play</a>&nbsp;<a href="#" onclick="pause(); return false;" class="{if $play==1}off{elseif $play==0}on{/if}" id="pauseButton">Pause</a>
    </div>
    <div id="ad">
        {if $publication.id == 90}
            {literal}
                <script type='text/javascript'>
                GA_googleFillSlot("peoplePics_leaderboard");
                </script>
            {/literal}
        {/if}
        {if $publication.id == 96}
            {literal}
                <script type='text/javascript'>
                GA_googleFillSlot("peoplePics_leaderboard");
                </script>
            {/literal}
        {/if}


    </div>
    {*** uncomment this before going live ***}
    {***{include file="tracking.tpl"}***}
    {literal}    
        <script>
                jQuery(document).ready(function(){
                   jQuery(".uilconText").hide();  
                    jQuery('.pagination').css('margin-top','1px');     
                  });
        
        </script>
    {/literal}         
</div>    
</div>



<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
        </script>
    {/literal}
{/if}    

<script type="text/javascript">
    <!--
    pageModuleId = {$gallery.pagemoduleid};
        {if $Page->params.cp < $imgcount}
    cp = {math equation='x + 1' x=$Page->params.cp};
    {else}
    cp = 1;
    {/if}
    {if $play == 1}
    addLoadEvent(play);
    {/if}
    -->
</script>