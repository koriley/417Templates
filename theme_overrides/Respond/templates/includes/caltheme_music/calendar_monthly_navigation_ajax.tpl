   <p class="calendar-controls btn-group">
	<a href="#" class="load_calendar previous btn" loadEventDescriptions="{$loadEventDescriptions}" calendar_request_date="{$predate|dateformat:"Y:m:d"}" calendar_view="mini_view" title="{$predate|dateformat:"F d, Y"}">{$strings_calendarview_monthly_previous_month_button}</a>
	<a href="#" class="load_calendar current btn" template="{$calendarTemplate}" calendar_request_date="{$now|dateformat:"Y:m:d"}" calendar_view="day_view" title="{$now|dateformat:"F d, Y"}">{$strings_calendarview_monthly_current_month_button}</a>
	<a href="#" class="load_calendar next btn" loadEventDescriptions="{$loadEventDescriptions}" calendar_request_date="{$nextdate|dateformat:"Y:m:d"}" calendar_view="mini_view" title="{$nextdate|dateformat:"F d, Y"}">{$strings_calendarview_monthly_next_month_button}</a>
</p>
 
