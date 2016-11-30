{addjs file="bootstrap-timepicker.js"}
{addjs file="bootstrap-datepicker.js"}

{addinternaljs position="footer"}
rjQuery(document).ready(function() {ldelim}
	rjQuery("#dp1").datepicker();
	rjQuery("#dp2").datepicker();
	rjQuery(".timepicker-default").timepicker(
		{ldelim}
			"disableFocus":"true"
		{rdelim}
	);
	initRecurringChoices();
{rdelim});
{/addinternaljs}

<h3>{$strings_calendar_edit_event_date_time_title}</h3>

<div class="control-group">
	<label class="control-label" >{$strings_calendar_edit_event_recurrence}</label>
	<div class="controls recurrence">
		<div class="input-grouping">
			<input type="radio" name="params[eventtype]"  label="Type of event" class="required"  onclick="javascript:hideRecurringChoices();" id="once" value="once" {if $ops_calendarevent.params.eventtype=='once' || $ops_calendarevent.params.eventtype==''}checked{/if} />
			<label class="radio" for="once">{$strings_calendar_edit_event_one_time}</label>
		</div>
		<div class="input-grouping">
			<input type="radio" name="params[eventtype]"  label="Type of event" class="required"  onclick="javascript:setRecurringChoice();" id="recurring" {if $ops_calendarevent.params.eventtype=='recurring'}checked{/if} value="recurring" />
			<label class="radio" for="recurring">{$strings_calendar_edit_event_recurring}</label>
		</div>
	</div>

	<div id="recurringdiv" style="display:{if $ops_calendarevent.params.eventtype=='recurring'}block{else}none{/if}">
		<div class="controls recurring-selection">
			<div class="input-grouping">
				<input type="radio" name="params[recurtype]" value="daily" id="daily" {if $ops_calendarevent.params.recurtype=='daily'} checked {/if} onclick="showRecurChoices(this);">
				<label class="radio" for="daily">{$strings_calendar_edit_event_daily}</label>
			</div>
			<div class="input-grouping">
				<input type="radio" name="params[recurtype]" value="weekly" id="weekly" {if $ops_calendarevent.params.recurtype=='weekly'} checked {/if} onclick="showRecurChoices(this);">
				<label class="radio" for="weekly">{$strings_calendar_edit_event_weekly}</label>
			</div>
			<div class="input-grouping">
				<input type="radio" name="params[recurtype]" value="monthly" id="monthly" {if $ops_calendarevent.params.recurtype=='monthly'} checked {/if} onclick="showRecurChoices(this);">
				<label class="radio" for="monthly">{$strings_calendar_edit_event_monthly}</label>
			</div>
			<div class="input-grouping">
				<input type="radio" name="params[recurtype]" value="yearly" id="yearly" {if $ops_calendarevent.params.recurtype=='yearly'} checked {/if} onclick="showRecurChoices(this);">
				<label class="radio" for="yearly">{$strings_calendar_edit_event_yearly}</label>
			</div>
		</div>
	
		<div id="dailydiv" class="controls" style="display:{if $ops_calendarevent.params.recurtype=='daily'}block{else}none{/if}">
				<div class="input-grouping">
					<input type="radio" name="params[dailytype]" value="daily" id="daily_everyday" {if $ops_calendarevent.params.dailytype=='daily' || $ops_calendarevent.params.dailytype==''} checked {/if}>
					<label class="radio" for="daily_everyday">{$strings_calendar_edit_event_every_capital}</label>
					<input type="text" size="4" maxlength="2" name="params[daily_ndays]" value="{$ops_calendarevent.params.daily_ndays|default:1}"> {$strings_calendar_edit_event_every_x_days}
				</div>
				<div class="input-grouping">
					<input type="radio" name="params[dailytype]" value="weekdays" id="daily_weekdays" {if $ops_calendarevent.params.dailytype=='weekdays'} checked {/if}>
					<label class="radio" for="daily_weekdays">{$strings_calendar_edit_event_every_weekday}</label>
				</div>
		</div>

		<div id="weeklydiv" class="controls" style="display:{if $ops_calendarevent.params.recurtype=='weekly'}block{else}none{/if}">
			<div class="row-entry">
				{$strings_calendar_edit_event_recur_every} <input type="text" size="4" id="weekly_nweeks" name="params[weekly_nweeks]" maxlength="2" value="{$ops_calendarevent.params.weekly_nweeks|default:1}"> {$strings_calendar_edit_event_every_x_weeks}
			</div>
			<div class="row-entry weeklydays">
				{checkboxes mode="block" addlabelfor="true" class="inline" name="params[weekly_weekdays][]" idprefix="weekly_weekdays" values="$strings_calendar_edit_event_weekdays" selected=$ops_calendarevent.params.weekly_weekdays}
			</div>
		</div>

		<div id="monthlydiv" class="controls" style="display:{if $ops_calendarevent.params.recurtype=='monthly'}block{else}none{/if}">
			<div class="row-entry monthly_recurdom">
				<div class="input-grouping">
					<input type="radio" name="params[recurmonthly]" id="monthly_recurdom" value="dom" {if $ops_calendarevent.params.recurmonthly=='dom'}  checked {/if}>
					<label class="radio" for="monthly_recurdom">{$strings_calendar_edit_event_day_capital}</label>
					<input name="params[monthly_dom]" type="text" size="4" maxlength="2" value="{$ops_calendarevent.params.monthly_dom|default:1}">
				</div>
				<div class="input-grouping">
					{$strings_calendar_edit_event_of_every} <input type="text" size="4" maxlength="2" name="params[monthly_nmonths]" value="{$ops_calendarevent.params.monthly_nmonths|default:1}"> {$strings_calendar_edit_event_every_x_months}
				</div>
			</div>
			<div class="row-entry monthly_recurnday">
				<div class="input-grouping">
					<input type="radio" name="params[recurmonthly]" id="monthly_recurnday" value="nday" {if $ops_calendarevent.params.recurmonthly=='nday'} checked {/if} >
					<label class="radio" for="monthly_recurnday">{$strings_calendar_edit_event_the}</label>
				</div>
				{checkboxes mode="block" addlabelfor="true" class="inline" name="params[monthly_interval][]" idprefix="monthly_interval" values="$strings_calendar_edit_event_month_intervals" selected=$ops_calendarevent.params.monthly_interval}
			</div>
			<div class="row-entry monthly_weekdays">
				{checkboxes mode="block" addlabelfor="true" class="inline" name="params[monthly_weekdays][]" idprefix="monthly_weekdays" values="$strings_calendar_edit_event_weekdays" selected=$ops_calendarevent.params.monthly_weekdays}
			</div>
			<p>{$strings_calendar_edit_event_of}</p>
			<div class="row-entry monthly_months">
					{checkboxes mode="block" addlabelfor="true" class="inline" name="params[monthly_months][]" idprefix="monthly_months" values="$strings_calendar_edit_event_months" selected=$ops_calendarevent.params.monthly_months}
			</div>
		</div>

		<div id="yearlydiv" class="controls" style="display:{if $ops_calendarevent.params.recurtype=='yearly'}block{else}none{/if}">
			<div class="row-entry">
				<div class="input-grouping">
					<input type="radio" name="params[recuryearly]" id="yearly_recurdom" value="nday" {if $ops_calendarevent.params.recuryearly=='nday' || $ops_calendarevent.params.recuryearly==''}  checked {/if}>
					<label class="radio" for="yearly_recurdom">{$strings_calendar_edit_event_every_capital}</label>
					{picklist function="numbers" start="1" end="31" name="params[yearly_day]" id="yearly_day" selected=$ops_calendarevent.params.yearly_day} {$strings_calendar_edit_event_day_small}
				</div>
				<div class="input-grouping">
					of {picklist function="months" id="yearly_dommonth" name="params[yearly_dommonth]" selected=$ops_calendarevent.params.yearly_dommonth}
				</div>
			</div>
			<div class="row-entry">
				<div class="input-grouping">
					<input type="radio" name="params[recuryearly]" id="yearly_recurdoy" value="doy" {if $ops_calendarevent.params.recuryearly=='doy'}  checked {/if}>
					<label class="radio" for="yearly_recurdoy">The</label>
					{picklist values="$strings_calendar_edit_event_month_intervals" name="params[yearly_interval]" id="yearly_interval" selected=$ops_calendarevent.params.yearly_interval}
				</div>
				<div class="input-grouping">
					{picklist name="params[yearly_weekday]" id="yearly_weekday" values="$strings_calendar_edit_event_weekdays" selected=$ops_calendarevent.params.yearly_weekday}
				</div>
				<div class="input-grouping">
					 of {picklist name="params[yearly_doymonth]" id="yearly_doymonth" function="months"  selected=$ops_calendarevent.params.yearly_doymonth}
				</div>
			</div>
		</div>
	</div>
</div>

<div class="control-group">
	  <label class="control-label" for="dp1">{$strings_calendar_edit_event_start_date}</label>
	  <div class="controls"><div class="input-append date" id="dp1" data-date="{$smarty.now|dateformat:'%Y-%m-%d'}" data-date-format="yyyy-mm-dd">
		  <input class="input-small" id="startdate" name="params[startdate]" size="16" type="text" value="{$smarty.now|dateformat:'%Y-%m-%d'}"><span class="add-on"><i class="icon-th"></i></span>
	  </div></div>
  </div>

  <div class="control-group">
	  <label class="control-label" for="dp2">{$strings_calendar_edit_event_end_date}</label>
	  <div class="controls"><div class="input-append date" id="dp2" data-date="{$smarty.now|dateformat:'%Y-%m-%d'}" data-date-format="yyyy-mm-dd">
		  <input class="input-small" id="enddate" name="params[enddate]" size="16" type="text" value="{$smarty.now|dateformat:'%Y-%m-%d'}"><span class="add-on"><i class="icon-th"></i></span>
  </div></div>
</div>
<div class="control-group">
	<label class="control-label" for="params[starttimeampm]">{$strings_calendar_edit_event_start_time}</label>
	<div class="controls"><div class="input-append bootstrap-timepicker-component">
		<input type="text" name="params[starttimeampm]" id="params[starttimeampm]" class="timepicker-default input-small"><span class="add-on"><i class="icon-time"></i></span>
	</div></div>
</div>

<div class="control-group">
	<label class="control-label" for="params[endtimeampm]">{$strings_calendar_edit_event_end_time}</label>
	<div class="controls"><div class="input-append bootstrap-timepicker-component">
		<input type="text" name="params[endtimeampm]" id="params[endtimeampm]" class="timepicker-default input-small"><span class="add-on"><i class="icon-time"></i></span>
	</div></div>
</div>