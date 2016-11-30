{* 
Includes-template, renders the recurrence information of a calendar event.
Part of he calendarevent details view.
@see calendar_recurinfo_inc.tpl
@see calendar-viewevent.base.tpl
*}
{if 'recurring' == $event.params.eventtype}
<p class="recurrence">
{strip}
This event occurs
    {if 'daily' == $event.params.recurtype} daily,
    	{if 'daily' == $event.params.dailytype} every {$event.params.daily_ndays} day(s).{/if}
    	{if 'weekdays' == $event.params.dailytype} every weekday.{/if}
    {elseif 'weekly' == $event.params.recurtype}
        {if $event.params.weekly_nweeks == 1} weekly 
        {else} every {$event.params.weekly_nweeks} week(s) {/if}
        on {$event.params.weekly_weekdays|@englishList}.
    {elseif 'monthly' == $event.params.recurtype} monthly,
	    {if 'dom' == $event.params.recurmonthly} on day {$event.params.monthly_dom} of every {$event.params.monthly_nmonths} month(s).
	    {elseif 'nday' == $event.params.recurmonthly} on the 
            {$event.params.monthly_interval|@englishList} 	
            {$event.params.monthly_weekdays|@englishList} of 
            {$event.params.monthly_months|@monthNumberToMonthName}.
        {/if}
    {elseif 'yearly' == $event.params.recurtype} yearly,
        {if 'nday' == $event.params.recuryearly} every {$event.params.yearly_day} day of {$event.params.yearly_dommonth|monthNumberToMonthName}.{/if}
        {if 'doy' == $event.params.recuryearly} the {$event.params.yearly_interval} {$event.params.yearly_weekday} of {$event.params.yearly_doymonth|monthNumberToMonthName}.{/if}
    {/if}
{/strip}	
</p>
{/if}