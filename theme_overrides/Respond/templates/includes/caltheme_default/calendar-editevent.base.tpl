{addjs file="/admin/media/js/calendarevent_validation.js" position="footer"}
{* {addjs file="prototype.js" position="footer"} *}


<form method="post" onsubmit="return autocheckByBlur(this)" enctype="multipart/form-data"  id="event" name="event" class="form-horizontal" >
	<input type="hidden" name="action" value="" />
	<h2>{$calendar_editevent_titles_eventinfo}</h2>
	<div class="section-description">{$strings_geobase_account_required_field_legend}</div>
	<div class="control-group calendar-title">
		<label class="control-label">{$calendar_editevent_labels_calendar}:</label>
		<h3 class="controls">{$calendar.title}</h3>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"title")}required{/if}" for="ops_calendarevent_title">{$calendar_editevent_labels_nameofevent}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_title" id="ops_calendarevent_title" class="required" value="{$event.title}" size="30" maxlength="150" required /></div>
	</div>
	<div class="control-group calendarevent_categoryids">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"category")}required{/if}" for="calendarevent_categoryids">{$calendar_editevent_labels_category}:</label>
		<div class="controls">
			{if strstr($calendar_edit_requiredfields,"category")}
				{checkboxes mode="block" addlabelfor="true" label="Category" onblur="requireSingleCheckedByName(this)" name="calendarevent_categories[]" idprefix="calendarevent_categoryid" list=$calendar.categories keyfield='id' displayfield='title' selectedbyid=$event.categoryids}
			{else}
				{checkboxes mode="block" addlabelfor="true" label="Category" required="false" name="calendarevent_categories[]" idprefix="calendarevent_categoryid" list=$calendar.categories keyfield='id' displayfield='title' selectedbyid=$event.categoryids}
			{/if}
		</div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"description")}required{/if}" for="ops_calendarevent_description">{$calendar_editevent_labels_description}:</label>
		<div class="controls">
			{editor content=$event.description name="ops_calendarevent_description" height="300" htmlmode=$calendar.params.enablehtmleditor toolbarset="Calendarevent"}
		</div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"cost")}required{/if}" for="ops_calendarevent_cost">{$calendar_editevent_labels_cost}:</label>
		<div class="controls"><input type="text" id="ops_calendarevent_cost" name="ops_calendarevent_cost" value="{$event.cost}" label="{$calendar_editevent_labels_cost}"  {if strstr($calendar_edit_requiredfields,"cost")}onblur="requireValue(this);"{/if} size="50" maxlength="80" /></div>
	</div>
	<div class="control-group">
		<label class="control-label" for="eventimage">{$calendar_editevent_labels_image}:</label>
		<div class="controls"><input type="file" label="{$calendar_editevent_labels_image}" name="eventimage" id="eventimage"/></div>
	</div>

	{include file="calendar-editeventdates.base.tpl"}

	<h3>{$calendar_editevent_titles_location}</h3>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"location")}required{/if}" for="ops_calendarevent_location">{$calendar_editevent_labels_location}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_location" id="ops_calendarevent_location" label="{$calendar_editevent_labels_location}" {if strstr($calendar_edit_requiredfields,"location")}onblur="requireValue(this);"{/if} value="{$event.location}" size="30" maxlength="50" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"address")}required{/if}" for="ops_calendarevent_address">{$calendar_editevent_labels_address}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_address" id="ops_calendarevent_address" label="{$calendar_editevent_labels_address}"  {if strstr($calendar_edit_requiredfields,"address")}onblur="requireValue(this);"{/if} value="{$event.address}" size="30" maxlength="150" /></div>
	</div>
	<div class="control-group">
			<label class="control-label {if strstr($calendar_edit_requiredfields,"address2")}required{/if}" for="ops_calendarevent_address2">{$calendar_editevent_labels_address2}:</label>
			<div class="controls"><input type="text"  name="ops_calendarevent_address2" id="ops_calendarevent_address2" label="{$calendar_editevent_labels_address2}"  {if strstr($calendar_edit_requiredfields,"address2")}onblur="requireValue(this);"{/if} value="{$event.address2}" size="30" maxlength="150" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"city")}required{/if}" for="ops_calendarevent_city">{$calendar_editevent_labels_city}:</label>
		<div class="controls" valign="top"><input type="text" name="ops_calendarevent_city" id="ops_calendarevent_city" label="{$calendar_editevent_labels_city}" {if strstr($calendar_edit_requiredfields,"city")}onblur="requireValue(this);"{/if} value="{$event.city}" size="30" maxlength="150" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"state")}required{/if}" for="ops_calendarevent_state">{$calendar_editevent_labels_state}:</label>
		<div class="controls" id="state_td">{statecodepicklist name="ops_calendarevent_state" id="ops_calendarevent_state" selected=$ops_calendarevent.state|default:$config.defaultstatecode countrycode=$ops_calendarevent.country|default:$Page->config.defaultcountrycode|default:"US"}</div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"country")}required{/if}" for="ops_calendarevent_country">{$calendar_editevent_labels_country|default:"Country"}:</label>
		<div class="controls">
			{picklist table="geo_country" keyfield="countrycode" displayfield="name" id="ops_calendarevent_country" name="ops_calendarevent_country" selected=$ops_calendarevent.country|default:$Page->config.defaultcountrycode|default:"US"}
		</div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"zip")}required{/if}" for="ops_calendarevent_zip">{$calendar_editevent_labels_zip}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_zip" id="ops_calendarevent_zip" label="{$calendar_editevent_labels_zip}" {if strstr($calendar_edit_requiredfields,"zip")}onblur="requireValue(this);"{/if} value="{$event.zip}" size="10" /></div>
	</div>

	<h3>{$calendar_editevent_titles_sponsor}</h3>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"sponsor")}required{/if}" for="ops_calendarevent_sponsor">{$calendar_editevent_labels_sponsor}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_sponsor" id="ops_calendarevent_sponsor" label="{$calendar_editevent_labels_sponsor}" value="{$event.sponsor}" {if strstr($calendar_edit_requiredfields,"sponsor")}onblur="requireValue(this);"{/if} size="30" maxlength="150" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"contactname")}required{/if}" for="ops_calendarevent_contactname">{$calendar_editevent_labels_contactname}:</label>
		<div class="controls"><input type="text" label="{$calendar_editevent_labels_contactname}" name="ops_calendarevent_contactname" id="ops_calendarevent_contactname" {if strstr($calendar_edit_requiredfields,"contactname")}onblur="requireValue(this);"{/if} value="{$event.contactname}" size="13" maxlength="50" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"contactemail")}required{/if}" for="params[contactemail]">{$calendar_editevent_labels_contactemail}:</label>
		<div class="controls"><input type="email" name="params[contactemail]" id="params[contactemail]" label="{$calendar_editevent_labels_contactemail}" value="{$event.params.contactemail}" size="13" {if strstr($calendar_edit_requiredfields,"contactemail")}onblur="requireValue(this);"{/if} maxlength="128" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"phone")}required{/if}" for="ops_calendarevent_phone">{$calendar_editevent_labels_phone}:</label>
		<div class="controls"><input type="text" name="ops_calendarevent_phone" id="ops_calendarevent_phone" label="{$calendar_editevent_labels_phone}"  value="{$event.phone}"  {if strstr($calendar_edit_requiredfields,"phone")}onblur="requireValue(this);"{/if} size="13" maxlength="20" /></div>
	</div>
	<div class="control-group">
		<label class="control-label {if strstr($calendar_edit_requiredfields,"url")}required{/if}" for="ops_calendarevent_url">{$calendar_editevent_labels_url}:</label>
		<div class="controls"><input type="text" label="{$calendar_editevent_labels_url}" name="ops_calendarevent_url" id="ops_calendarevent_url" {if strstr($calendar_edit_requiredfields,"url")}onblur="requireValue(this);"{/if} value="{$event.url}" size="30" maxlength="512" /></div>
	</div>
	
	<input type="hidden" name="params[readersubmitted]" value="yes" />

	{if $calendar.customfields|@count}
		{include file="edit_custom_fields.tpl" customfields=$calendar.customfields basetablename='ops_calendarevent'}
	{/if}

	<div id="ya_formtable_actionrow">
		{toolbar formname="event" which="custom" style="button" mode="div" buttons="save|Save Event,savenew|Save / Add New,cancel,delete,spacer" listmode="false"}
	</div>
</form>


