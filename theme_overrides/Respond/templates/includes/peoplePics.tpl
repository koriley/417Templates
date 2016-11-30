{tagged tagid=$id what="article" }
<ul style="list-style-type: none;">
{section name="t" loop=$taglist max=3}
{section name="a" loop=$taglist[t].articles start=$si max=$max}
    <li>
        <div style="width:100%; margin-bottom:25px; text-align:center; margin-left:-15px; border-bottom:1px solid #A6A6A6;"><a href="{$taglist[t].articles[a].url}">
            <img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}" alt="{$taglist[t].articles[a].title}" />
        </a><br/>
        <h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
           {if $title === "yes"} <p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>{/if}
           </div>
    </li>
 {/section}
 {/section}   
</ul> 
 <div style="width:100%; text-align:center;">
{if $id == "47"}
    <a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=51" class="din">SEE MORE 417 PEOPLE PICS GALLERIES</a>
{/if}
{if $id == "167"}
    <a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=167" class="din">SEE MORE WHERE'S 417?</a>
{/if} 

</div>