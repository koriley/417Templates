{addjs file="photoFader.class.js"}
{addcss file="/themes/Local/css/gallery-miniFader-re.css"}
<div class="mini-fader whitebox" style="background-color:#ededed;">
	<div class="right-header"><h2>{$mini_fader_title}</h2></div>
  <div class="boxcontent"  style="padding-left:5px; padding-right:5px;">
  {getarticles tagids=$mini_fader_tag what="article" order="ops_article.datepublished desc" max=$mini_fader_max}
	<div class="photoFader-gallery">
		<div class="photoFader-contentcontainer" >
		{counter name='mininumber' print=false start=0}
		{counter name='miniimage' print=false start=100}
		{counter name='miniextra' print=false start=100}
		{counter name='miniitem' print=false start=100}
			{section name=images loop=$articles}
			<div id="item{counter name='miniimage'}" class="photo"><a href="{$articles[images].url}"><img src="/core/includes/phpThumb/phpThumb.php?src={$articles[images].url}{$articles[images].image}&h=175&w=165&q=80&zc=1" alt="{$articles[images].title}" /></a></div>
			<div id="extraitem{counter name='miniextra'}" class="content">
				<h4><a href="{$articles[images].url}">{$articles[images].title}</a></h4>
				<p class="description">{$articles[images].summary}</p>
			</div>	
			{/section}
		</div>
		 <div class="mini-menu-wrapper">
		<ul class="photoFaderMenu">
			{section name=links loop=$articles}
			<li><a href="" name="item{counter name='miniitem'}">{counter name='mininumber'}</a></li>
			{/section}
		</ul>
		</div>
	</div>
  </div>
</div>