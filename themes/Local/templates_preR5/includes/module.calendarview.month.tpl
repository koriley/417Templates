{if $smarty.get.flag == 1}
    <div class="articleListTop">CALENDAR</div>
    <div class="module-box">

<div class="weekly-view module">
 
 
  <div class="calContent">
	{execModule name="OpsCalendar" view="mini_view" calendarid="$module.calendarid categoryfilter=$module.categoryfilter autoShowTodaysEvents=$module.autoShowTodaysEvents loadEventDescriptions=$module.loadEventDescriptions}
  
  </div>
</div></div>
    <div class="articleListBottom"></div>
{else}    
<div class="module-box">
<div  style="background-color:black;">
	<img alt="Nominations" src="/images/elements/headers/bar/417events.jpg" style="padding-top: 0px;" />
	</div>
<div class="weekly-view module" style="margin:5px;">
 
 <!-- <h2><b>{$module.title}</b></h2> -->
  <div class="content">
	{execModule name="OpsCalendar" view="mini_view" calendarid="$module.calendarid categoryfilter=$module.categoryfilter autoShowTodaysEvents=$module.autoShowTodaysEvents loadEventDescriptions=$module.loadEventDescriptions}
  
  </div>
</div></div>
        
{/if}        