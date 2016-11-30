<p class="calendar-controls">
	<a href="{$Page->path}?y={$predate|dateformat:'Y'}&m={$predate|dateformat:'m'}&d={$predate|dateformat:'d'}" class="previous" title="{$predate|dateformat:"F d, Y"}">&laquo; Previous Month</a>
	<a href="{$Page->path}?y={$now|dateformat:'Y'}&m={$now|dateformat:'m'}&d={$now|dateformat:'d'}" class="current" title="{$now|dateformat:"F d, Y"}">Current Month</a>
	<a href="{$Page->path}?y={$nextdate|dateformat:'Y'}&m={$nextdate|dateformat:'m'}&d={$nextdate|dateformat:'d'}" class="next" title="{$nextdate|dateformat:"F d, Y"}">Next Month &raquo;</a>
</p>