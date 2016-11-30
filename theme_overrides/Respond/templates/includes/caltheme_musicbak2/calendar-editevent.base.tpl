{addcss file="calendar.css"}
{addjs file="/admin/media/js/CalendarPopup.js"}
{addjs file="/admin/media/js/calendarevent_validation.js"}
{addcss file="calendarpopup.css"}
{addjs file="prototype.js"}
{addjs file="StateOptionsSwitcher.class.js"}

<div id="caldiv" style="position:absolute;visibility:hidden;background-color:white;layer-background-color:white;"></div>
<script type="text/javascript" id="jscal1x">
var popcal = new CalendarPopup("caldiv");
popcal.setCssPrefix("CAL");
</script>
<form method="post" onsubmit="return autocheckByBlur(this)"  enctype="multipart/form-data"  id="event" name="event"  >
    <input type="hidden" name="action" value="" />
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<th colspan="2">{$calendar_editevent_titles_eventinfo}</th>
		</tr>
		<tr>
			<td width="125" class="ya_formtable_descrow">{$calendar_editevent_labels_calendar}:</td>
			<td width="353" valign="top" class="ya_formtable_contentrow"><b>{$calendar.title}</b></td>
	   </tr>
				<tr>
					<td width="125" class="ya_formtable_descrow">{$calendar_editevent_labels_nameofevent}:{if strstr($calendar_edit_requiredfields,"title")}*{/if}</td>
					<td width="353" valign="top" class="ya_formtable_contentrow"><input type="text" label="{$calendar_editevent_labels_nameofevent}" name="ops_calendarevent_title" id="ops_calendarevent_title" class="required" value="{$event.title}" size="30" maxlength="150" onblur="requireValue(this)"/></td>
				</tr>
				<tr>
  					<td class="ya_formtable_descrow">{$calendar_editevent_labels_category}:{if strstr($calendar_edit_requiredfields,"category")}*{/if}</td>
  					<td class="ya_formtable_contentrow" valign="top">
  					{if strstr($calendar_edit_requiredfields,"category")}
  						{checkboxes onblur="requireSingleCheckedByName(this)" name="calendarevent_categories[]"  id="calendarevent_categoryids" label="Category" list=$calendar.categories keyfield='id' displayfield='title' selectedbyid=$event.categoryids}
  					{else}
  						{checkboxes required="false" name="calendarevent_categories[]"  id="calendarevent_categoryids" label="Category" list=$calendar.categories keyfield='id' displayfield='title' selectedbyid=$event.categoryids}
  					{/if}
   					</td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_description}:{if strstr($calendar_edit_requiredfields,"description")}*{/if}</td>
					<td class="ya_formtable_contentrow" valign="top">
{editor content=$event.description name="ops_calendarevent_description" width="400" height="200" htmlmode=$calendar.params.enablehtmleditor toolbarset="Calendarevent"}</td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_cost}:{if strstr($calendar_edit_requiredfields,"cost")}*{/if}</td>
					<td class="ya_formtable_contentrow" valign="top"><input type="text" name="ops_calendarevent_cost" value="{$event.cost}" label="{$calendar_editevent_labels_cost}"  {if strstr($calendar_edit_requiredfields,"cost")}onblur="requireValue(this);"{/if} size="50" maxlength="80" /></td>
				</tr>
<tr>
   <td>{$calendar_editevent_labels_image}:</td><td valign="top"><input type="file" label="{$calendar_editevent_labels_image}" name="eventimage" /></td> </tr>

			{include file="calendar-editeventdates.base.tpl"}

				<tr>
  					<th colspan="2">{$calendar_editevent_titles_location}</th>
				</tr>
<tr>
<td class="ya_formtable_descrow">{$calendar_editevent_labels_location}:{if strstr($calendar_edit_requiredfields,"location")}*{/if}</td>
<td class="ya_formtable_contentrow"><input type="text" name="ops_calendarevent_location" id="ops_calendarevent_location" label="{$calendar_editevent_labels_location}" {if strstr($calendar_edit_requiredfields,"location")}onblur="requireValue(this);"{/if} value="{$event.location}" size="30" maxlength="50" /></td>
</tr>
				<tr>
					<td width="125" class="ya_formtable_descrow">{$calendar_editevent_labels_address}:{if strstr($calendar_edit_requiredfields,"address")}*{/if}</td>
					<td width="353" valign="top" class="ya_formtable_contentrow"><input type="text" name="ops_calendarevent_address" label="{$calendar_editevent_labels_address}"  {if strstr($calendar_edit_requiredfields,"address")}onblur="requireValue(this);"{/if} value="{$event.address}" size="30" maxlength="150" /></td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_address2}:{if strstr($calendar_edit_requiredfields,"address2")}*{/if}</td>
					<td class="ya_formtable_contentrow" valign="top"><input type="text" name="ops_calendarevent_address2" label="{$calendar_editevent_labels_address2}"  {if strstr($calendar_edit_requiredfields,"address2")}onblur="requireValue(this);"{/if} value="{$event.address2}" size="30" maxlength="150" /></td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_city}:{if strstr($calendar_edit_requiredfields,"city")}*{/if}</td>
					<td class="ya_formtable_contentrow" valign="top"><input type="text" name="ops_calendarevent_city" label="{$calendar_editevent_labels_city}" {if strstr($calendar_edit_requiredfields,"city")}onblur="requireValue(this);"{/if} value="{$event.city}" size="30" maxlength="150" /></td>
				</tr>
                <tr>
                    <td class="ya_formtable_descrow">{$calendar_editevent_labels_state}:{if strstr($calendar_edit_requiredfields,"state")}*{/if}<span id="state_spinner" style="display:none"><img src="/admin/media/images/ajax-loader.gif"></td>
                    <td valign="top" class="ya_formtable_contentrow" id="state_td">{statecodepicklist name="ops_calendarevent_state" id="ops_calendarevent_state" selected=$ops_calendarevent.state|default:$config.defaultstatecode countrycode=$ops_calendarevent.country|default:$Page->config.defaultcountrycode|default:"US"}</td>
                </tr>
                <tr>
					<td nowrap class="ya_formtable_descrow">{$calendar_editevent_labels_country|default:"Country"}:{if strstr($calendar_edit_requiredfields,"country")}*{/if}</td>
					<td class="ya_formtable_contentrow">
            			{picklist table="geo_country" keyfield="countrycode" displayfield="name" id="ops_calendarevent_country" name="ops_calendarevent_country" selected=$ops_calendarevent.country|default:$Page->config.defaultcountrycode|default:"US"}
        			</td>
        		</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_zip}:{if strstr($calendar_edit_requiredfields,"zip")}*{/if}</td>
					<td class="ya_formtable_contentrow" valign="top"><input type="text" name="ops_calendarevent_zip" label="{$calendar_editevent_labels_zip}" {if strstr($calendar_edit_requiredfields,"zip")}onblur="requireValue(this);"{/if} value="{$event.zip}" size="10" /></td>
				</tr>
				<tr>
				  <th colspan="2">{$calendar_editevent_titles_sponsor}</th>
				</tr>
				<tr>
					<td width="125" class="ya_formtable_descrow">{$calendar_editevent_labels_sponsor}:{if strstr($calendar_edit_requiredfields,"sponsor")}*{/if}</td>
					<td width="353" valign="top" class="ya_formtable_contentrow"><input type="text" name="ops_calendarevent_sponsor" label="{$calendar_editevent_labels_sponsor}" value="{$event.sponsor}" {if strstr($calendar_edit_requiredfields,"sponsor")}onblur="requireValue(this);"{/if} size="30" maxlength="150" /></td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_contactname}:{if strstr($calendar_edit_requiredfields,"contactname")}*{/if}</td><td class="ya_formtable_contentrow" valign="top"><input type="text" label="{$calendar_editevent_labels_contactname}" name="ops_calendarevent_contactname" {if strstr($calendar_edit_requiredfields,"contactname")}onblur="requireValue(this);"{/if} value="{$event.contactname}" size="13" maxlength="50" /></td>
				</tr>
<tr>
<td class="ya_formtable_descrow">{$calendar_editevent_labels_contactemail}:{if strstr($calendar_edit_requiredfields,"contactemail")}*{/if}</td><td class="ya_formtable_contentrow" valign="top"><input type="text" name="params[contactemail]" label="{$calendar_editevent_labels_contactemail}" value="{$event.params.contactemail}" size="13" {if strstr($calendar_edit_requiredfields,"contactemail")}onblur="requireValue(this);"{/if} maxlength="128" /></td>
</tr>
				<tr>
					<td class="ya_formtable_descrow">{$calendar_editevent_labels_phone}:{if strstr($calendar_edit_requiredfields,"phone")}*{/if}</td><td class="ya_formtable_contentrow" valign="top"><input type="text" name="ops_calendarevent_phone" label="{$calendar_editevent_labels_phone}"  value="{$event.phone}"  {if strstr($calendar_edit_requiredfields,"phone")}onblur="requireValue(this);"{/if} size="13" maxlength="20" /></td>
				</tr>
				<tr>
					<td class="ya_formtable_descrow" style="border-bottom:none;">{$calendar_editevent_labels_url}:{if strstr($calendar_edit_requiredfields,"url")}*{/if}</td><td class="ya_formtable_contentrow" valign="top" style="border-bottom:none;"><input type="text" label="{$calendar_editevent_labels_url}" name="ops_calendarevent_url" {if strstr($calendar_edit_requiredfields,"url")}onblur="requireValue(this);"{/if} value="{$event.url}" size="30" maxlength="512" /></td>
				</tr>
				{if $calendar.customfields|@count}
				{include file="edit_custom_fields.tpl" customfields=$calendar.customfields basetablename='ops_calendarevent'}
				{/if}
			</table>
		<div id="ya_formtable_actionrow">
			<div align="center">
            {toolbar formname="event" which="custom" style="button" buttons="save|Save Event,savenew|Save / Add New,cancel,delete,spacer" listmode="false"}
			</div>
		</div>
</form>
{literal}
<script type="text/javascript">
	/* @global */
	stateSwitcher = new StateOptionsSwitcher('ops_calendarevent_country', 'ops_calendarevent_state','state_td', {'spinner':'state_spinner','blankoption':false});
</script>
{/literal}
