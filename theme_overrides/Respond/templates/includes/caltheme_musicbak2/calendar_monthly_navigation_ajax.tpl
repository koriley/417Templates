	<p class="calendar-controls">
		<a href="#" class="load_calendar previous" calendar_request_date="{$predate|dateformat:"Y:m:d"}" calendar_view="mini_view" title="{$predate|dateformat:"F d, Y"}">&laquo; Previous Month</a>
		<a href="#" class="load_calendar current" calendar_request_date="{$now|dateformat:"Y:m:d"}" calendar_view="mini_view" title="{$now|dateformat:"F d, Y"}">Current Month</a>
		<a href="#" class="load_calendar next" calendar_request_date="{$nextdate|dateformat:"Y:m:d"}" calendar_view="mini_view" title="{$nextdate|dateformat:"F d, Y"}">Next Month &raquo;</a>
	</p>