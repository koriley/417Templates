  {* make sure the event is viewable *}
{* see http://redmine.godengo.com/issues/1289 *}
{assign var="displayevent" value="0"}
{if $event.isapproved=='t' || ($Page->isLoggedIn() && ($event.createdby==$Page->user->id || $Page->isInGroup('super,admin,editor')))}
	{assign var="displayevent" value="1"}
{/if}
{if $displayevent=="0"}
   {$Page->setTitle($calendar.title)}
   <p>{$strings_calendar_editevent_not_yet_approved}</p>
{else}
{if isset($config.caldateformat)}
    {assign var="calendardateformat" value=$config.caldateformat}
{else}
    {assign var="calendardateformat" value="%b %e, %Y"}
{/if}
{if isset($config.timeformat)}
    {assign var="calendartimeformat" value=$config.timeformat}
{else}
    {assign var="calendartimeformat" value="%l:%M %p"}
{/if} 
{if $event.isapproved=="f"}
    <div class="messagebox_info">{$strings_calendar_editevent_for_review_only}
    </div>
    {addcss file="messagebox.css"}
{/if}
{if $event.params.titletag == ""}
    {setMeta keywords=$event.params.metakeywords description=$event.params.metadescription title=$event.title}
{else}
    {setMeta keywords=$event.params.metakeywords description=$event.params.metadescription title=$event.params.titletag}
{/if}
<div class="hideMe">
<div class="event {if $event.params.featured == 'yes'} featured {/if}" id="ko">
        <h2>{$event.title|escape:html}</h2>
		<h3>{$calendar_editevent_labels_datetime}</h3>
		<h4>{$event.startdate|dateformat:$calendardateformat}{if $event.startdate<>$event.enddate} {$strings_calendar_editevent_date_to} {$event.enddate|dateformat:$calendardateformat}{/if}<br />
		{if $event.starttime<>''}{$event.starttime|dateformat:$calendartimeformat}{/if}{if $event.endtime<>'' && $event.starttime<>$event.endtime} {$strings_calendar_editevent_date_until} {$event.endtime|dateformat:$calendartimeformat}{/if}</h4>
		{include file="caltheme_music/calendar_eventdatedetails.tpl"}
		{if $event.description<>'' || $event.image<>''}
		<h3>{$calendar_editevent_labels_description}</h3>
		<div class="event-description">
			{if $event.image<>''}
				
				{if strpos($calendar.params.eventimagesize,"%") !== false}
					{assign var=eventimagesize value=$calendar.params.eventimagesize|percentagetodecimal}
				{else}
					{assign var=eventimagesize value=.5}
				{/if}
				
        		<div class="thumbnail image-container{if $eventimagesize < 1} floated{/if}">
                	{addresponsiveimg respond_containers=$respond_containers src=$event.image alt=$article.title default=$eventimagesize percentages="480=.25" }
           			{if $event.photodescription<>''}<p>{$event.photodescription}</p>{/if}
         		</div>
			{/if}
			{if $event.description<>''}
				<div class="event-description-content">{$event.description}</div>
			{/if}
		</div>
		{/if}
		{if $event.cost<>''}
			<h3>{$strings_calendar_editevent_label_cost}</h3>
			<p>{$event.cost}</p>
		{/if}
        {if $event.location<>'' || $event.address<>'' || $event.address2<>'' || $event.city<>'' || $event.state<>'' || $event.country<>''}
		<h3>{$calendar_editevent_labels_location}</h3>
		<div class="event-location">
			{if $event.address<>''}
    	        <a class="btn" href="http://maps.google.com/maps?q={$event.address}{if $event.address2<>''}+{$event.address2}{/if}{if $event.city<>''},+{$event.city}{/if}{if $event.state<>''},+{$event.state}{/if}{if $event.countryname<>''},+{$event.countryname}{/if}+&hl=en" target="new">{$calendar_viewevent_labels_viewmap}</a>
    	    {/if}
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
    	</div>
    	{/if}
    	{* custom field check *}
    	{assign var="customFieldsExist" value=false}
    	{if $calendar.customfields|@count}
        	{foreach name="fieldcheck" from=$calendar.customfields key="fieldname" item="field"}
                {if $field.value<>''}
                	{assign var="customFieldsExist" value=true}
                	{break}
                {/if}
            {/foreach}
    	{/if}
    	{if $event.sponsor || $event.phone || $event.contactname || $event.params.contactemail || $event.url || istrue($customFieldsExist)}
		<h3>{$calendar_editevent_titles_additionalinfo}</h3>
        <div class="event-fields">
            {if $event.sponsor}<div><h4>{$calendar_editevent_labels_sponsor}</h4><p>{$event.sponsor}</p></div>{/if}
            {if $event.phone}<div><h4>{$calendar_editevent_labels_phone}</h4><p>{$event.phone|format:$calendar_viewevent_phoneformat:true}</p></div>{/if}
            {if $event.contactname}<div><h4>{$calendar_editevent_labels_contactname}</h4><p>{$event.contactname}</p></div>{/if}
            {if $event.params.contactemail}<div><h4>{$calendar_editevent_labels_contactemail}</h4><p>{$event.params.contactemail}</p></div>{/if}
            {assign var=$event.url value=$event.url|replace:'http://',''}
            {if $event.url<>'' && $event.url<>'http://'}<div><h4>{$calendar_editevent_labels_url}</h4><p><a href="{if ereg("http",$event.url)}{$event.url}{else}http://{$event.url}{/if}" target="_blank">{$event.url}</a></p></div>{/if}
                {if $calendar.customfields|@count}
                    <div class="event-fields custom-fields">
                    {foreach name="fieldlist" from=$calendar.customfields key="fieldname" item="field"}
                    {if $field.value<>''}
                        <h4>{if !empty($field.label)}{$field.label}:{/if}</h4><p>
                        {if $field.fieldtype=="yesno"}
                        	{if istrue($field.value)} {$strings_calendar_editevent_type_yes}{else}{$strings_calendar_editevent_type_no}{/if}
                        {elseif $field.fieldtype=='url'}
                                <span><a href="{$field.value}">{$field.value|truncate:40}</a></span>
                        {else}
                        	{assign var="value" value=$field.value|trim:"\n"}
             	           {"\n"|str_replace:", ":$value}
                        {/if}
                        </p>
                    {/if}
                    {/foreach}
                    </div>
                {/if}
            </div>
    	{/if}
	<p class="subcontent">{$calendar_viewevent_disclaimer}</p>
</div>
</div>
{/if}

{literal}
    <script>
       
        jQuery('.event').appendTo('#calendarPlace');
        jQuery('.eventsContainer').hide();
        
        </script>
    {/literal} 
    