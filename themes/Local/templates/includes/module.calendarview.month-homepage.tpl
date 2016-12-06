<div class="module-box" style="border:0px;">
<div  style="background-color:black;">
	<img alt="Nominations" src="/images/elements/headers/bar/417events.jpg" style="padding-top: 0px;" />
	</div>
<div class="weekly-view module" style="margin:5px;">
 
 <!-- <h2><b>{$module.title}</b></h2> -->
  <div class="content">
    {execModule name="OpsCalendar" view="mini_view" calendarid=$module.calendarid categoryfilter=$module.categoryfilter autoShowTodaysEvents=$module.autoShowTodaysEvents loadEventDescriptions=$module.loadEventDescriptions}
  </div>
</div></div>


			<div id="calendar-search">
			<!-- <h2>Search -> {$calendar.title}</h2> -->
			<form name="event" method="get" action="/417-Magazine/417-Calendar/Calendar/">
			<table>
				<tr>
					<td>Search for:</td><td><input type="input" id="search" name="search" value="{$Page->params.search}" /></td>
				</tr>
				<tr>
					<td>Category:</td><td>{picklist name="categoryfilter" list=$categories selected=$category displayfield="title" keyfield="title"}</td>
				</tr>
				<tr>	
					<td colspan="2" class="last">
					<input type=hidden name="view" value="search_event">
					<input type="submit" name="submit" value="Search" id="formbutton">
					</td>
				</tr>
			</table>
			</form>
			</div>
			