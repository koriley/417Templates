{* 
Includes-template, renders the recurrence information of a calendar event.
Part of he calendarevent details view.
@see calendar_recurinfo_inc.tpl
@see calendar-viewevent.base.tpl
*}
{if 'recurring' == $event.params.eventtype}
	<p class="recurrence"><img src="/core/media/images/recur.png" height="26" width="31"/>
	{strip}
	{if $no_intro_text <> true}{$strings_calendar_occurrence_intro} {/if}
	{if 'daily' == $event.params.recurtype} {$strings_calendar_occurrence_daily}, 
		{if 'daily' == $event.params.dailytype} {$strings_calendar_occurrence_every} {$event.params.daily_ndays} {$strings_calendar_occurrence_day}.{/if}
		{if 'weekdays' == $event.params.dailytype} {$strings_calendar_occurrence_every} {$strings_calendar_occurrence_weekday}.{/if}
	{elseif 'weekly' == $event.params.recurtype}
		{if $event.params.weekly_nweeks == 1} {$strings_calendar_occurrence_weekly},
		{else} {$strings_calendar_occurrence_every} {$event.params.weekly_nweeks} {$strings_calendar_occurrence_week}
		{/if}
		{$strings_calendar_occurrence_on} {$event.params.weekly_weekdays|@englishList}.
	{elseif 'monthly' == $event.params.recurtype} {$strings_calendar_occurrence_monthly}, 
		{if 'dom' == $event.params.recurmonthly} {$strings_calendar_occurrence_on_day} {$event.params.monthly_dom} {$strings_calendar_occurrence_of_every} {$event.params.monthly_nmonths} {$strings_calendar_occurrence_month}.
		{elseif 'nday' == $event.params.recurmonthly} {$strings_calendar_occurrence_on_the} 
			{$event.params.monthly_interval|@englishList} 	
			{$event.params.monthly_weekdays|@englishList} {$strings_calendar_occurrence_of} 
			{$event.params.monthly_months|@monthNumberToMonthName}.
		{/if}
	{elseif 'yearly' == $event.params.recurtype} {$strings_calendar_occurrence_yearly}, 
		{if 'nday' == $event.params.recuryearly} {$strings_calendar_occurrence_every} {$event.params.yearly_day} {$strings_calendar_occurrence_day_of} {$event.params.yearly_dommonth|monthNumberToMonthName}.{/if}
		{if 'doy' == $event.params.recuryearly} {$strings_calendar_occurrence_the} {$event.params.yearly_interval} {$event.params.yearly_weekday} {$strings_calendar_occurrence_of} {$event.params.yearly_doymonth|monthNumberToMonthName}.{/if}
	{/if}
	{/strip}
	</p>
{/if}