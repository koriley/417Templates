{* make sure the event is viewable *}
{* see http://redmine.godengo.com/issues/1289 *}
{assign var="displayevent" value="0"}
{if $event.isapproved=='t' || ($Page->isLoggedIn() && ($event.createdby==$Page->user->id || $Page->isInGroup('super,admin,editor')))}
	{assign var="displayevent" value="1"}
{/if}
{if $displayevent=="0"}
{$Page->setTitle($calendar.title)}
<p>The calendar event requested is not yet approved.</p>
{else}

{if $event.isapproved=="f"}
<div class="messagebox_info">This event is not yet approved.  It is displayed here only for your review.  It is not publicly visible yet.
</div>
{addcss file="messagebox.css"}
{/if}

<h1>{$event.title|escape:html}</h1>
		<table class="event">
		<tr>
			<th>{$calendar_editevent_titles_datetime}</th>
			<td><h4>{$event.startdate|dateformat:"M j, Y"}{if $event.startdate<>$event.enddate} to {$event.enddate|dateformat:"M j, Y"}{/if}<br />
		{if $event.starttime<>''}{$event.starttime|dateformat:"g:i a"}{/if}{if $event.endtime<>'' && $event.starttime<>$event.endtime} until {$event.endtime|dateformat:"g:i a"}{/if}</h4>
		{if $display_recur_info}{include file="calendar_eventdatedetails.tpl"}{/if}
		</td>
		</tr>
		{if $event.description<>'' || $event.image<>''}
		<tr>
			<th>{$calendar_editevent_labels_description}</th>
			<td>
				<p class="event-description">{if $event.image<>''}
				<div class="right-justify-pic image-container">
				{if isset($calendar.params.eventimagesize)}
					{assign var="eventimagesize" value=$calendar.params.eventimagesize}
				{else}
					{assign var="eventimagesize" value="150"}
				{/if}
   				<img src="{imagesizer src=$event.image w=$eventimagesize}" alt="{$event.title}" />
   				{if $event.photodescription<>''}<p>{$event.photodescription}</p>{/if}
 				</div>
				{/if}{$event.description}</p>
			</td>
		</tr>
		{/if}
		{if $event.cost<>''}
		<tr>
			<th>Cost</th>
			<td>{$event.cost}</td>
		</tr>
		{/if}
        {if $event.location<>'' || $event.address<>'' || $event.address2<>'' || $event.city<>'' || $event.state<>'' || $event.country<>''}
		<tr>
		<th>{$calendar_editevent_labels_location}</th>
		<td>
		    <p class="event-description">
		    {if $event.location<>''}{$event.location}<br />{/if}
	        {if $event.address<>''}{$event.address}<br />{/if}
	        {if $event.address2<>''}{$event.address2}<br />{/if}
	        {if $event.country<>'' and $event.country<>'US' and $event.country<>'CA'}
	          {* if there is no state selected and country is not US or Canada, display City, Country *}
	          {if $event.city<>''}{$event.city}, {/if}{$event.countryname}<br/>
	        {else}
	          {* otherwise, display City, State (used as province in Canada) *}
	          {* in cases where country is US or Canada and no state is selected, just display City if it exists *}
	          {$event.city}{if $event.state<>''}{if $event.city<>''}, {/if}{$event.state}{/if}<br />
	        {/if}
	        {if $event.address<>''}
	            <a href="http://maps.google.com/maps?q={$event.address}{if $event.address2<>''}+{$event.address2}{/if}{if $event.city<>''},+{$event.city}{/if}{if $event.state<>''},+{$event.state}{/if}{if $event.countryname<>''},+{$event.countryname}{/if}+&hl=en" target="new">{$calendar_viewevent_labels_viewmap}</a>
	        {/if}
	        </p>
		</td>
		</tr>
        {/if}
		<tr>
		<th>{$calendar_editevent_titles_additionalinfo}</th>
		<td>
            {if $event.sponsor || $event.phone || $event.contactname || $event.params.contactemail || $event.url}
            <table class="event-fields">
            {if $event.sponsor}<tr><th>{$calendar_editevent_labels_sponsor}</th><td>{$event.sponsor}</td></tr>{/if}
            {if $event.phone}<tr><th>{$calendar_editevent_labels_phone}</th><td>{$event.phone|format:$calendar_viewevent_phoneformat}</td></tr>{/if}
            {if $event.contactname}<tr><th>{$calendar_editevent_labels_contactname}</th><td>{$event.contactname}</td></tr>{/if}
            {if $event.params.contactemail}<tr><th>{$calendar_editevent_labels_contactemail}</th><td>{$event.params.contactemail}</td></tr>{/if}
            {assign var=$event.url value=$event.url|replace:'http://',''}
            {if $event.url<>'' && $event.url<>'http://'}<tr><th>{$calendar_editevent_labels_url}</th><td><a href="{if ereg("http",$event.url)}{$event.url}{else}http://{$event.url}{/if}" target="_blank">{$event.url}</a></td></tr>{/if}
            </table>
            {/if}
            {if $calendar.customfields|@count}
            <table class="event-fields custom-fields">
            {foreach name="fieldlist" from=$calendar.customfields key="fieldname" item="field"}
            {if $field.value<>''}
            <tr>
                <th>{$field.label}:</th><td>
                {if $field.fieldtype=="yesno"}
                	{if istrue($field.value)}Yes{else}No{/if}
                {else}
     	           {"\n"|str_replace:", ":$field.value}
                {/if}
</td>
            </tr>
            {/if}
            {/foreach}
            </table>
            {/if}
		</td>
		</tr>
		</table>
		<p class="subcontent">{$calendar_viewevent_disclaimer}</p>

{/if}
