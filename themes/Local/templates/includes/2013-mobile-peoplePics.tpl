<!-- list 14 galleries in mobile -->
<div class="articleListTop">PEOPLE PICS</div>
<div class="peoplePicContainer">
{getarticles tagids="51" what="article" order="ops_article.datepublished desc" max="14"}
{section name=images loop=$articles}
    <a href="{$articles[images].url}"><div class="listBox"><table cellpadding="0" cellspacing="0"><tr>
        <td><div  class="eventImage"><img src="/core/includes/phpThumb/phpThumb.php?src={$articles[images].url}{$articles[images].image}&h=125&w=140&q=80&zc=1" alt="{$articles[images].title}"  /></div></li>
        <td><div  class="eventTitle">{$articles[images].title}</div></td>
    </tr></table></div></a>
    
{/section}
</div>
<div class="articleListBottom"></div>

 