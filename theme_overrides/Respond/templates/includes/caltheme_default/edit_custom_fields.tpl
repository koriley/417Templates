{assign var="hasCustomFields" value="0"}
{* basically we just need to loop through first and check our non static fields *}
{* if we don't have any non static fields, then dont display the additional info *}
{* section of fields. *}
{foreach name="fieldlist" from=$customfields item="field"}
	{if $field.staticfield=="false"}
		{assign var="hasCustomFields" value="1"}
	{/if}
{/foreach}
{if $hasCustomFields==1}
	<h3>{$calendar_editevent_titles_additionalinfo}</h3>
{/if}

<div class="calendar-custom-fields control-group">
{foreach name="fieldlist" from=$customfields item="field"}
	{if $field.staticfield=="false"}
		{assign var="hidden" value=$field.hidden}
		{assign var="readonly" value=$field.readonly}
	
		{if istrue( $field.required) || istrue($field.params.isrequired)}
			{assign var="cls" value="frmReadOnly"}
			{assign var="required" value="true"}
		{else}
			{assign var="cls" value=""}
			{assign var="required" value="false"}
		{/if}
		{assign var="defaultvalue" value=$field.defaultvalue}
		{if $field.fieldtype=='checkbox'}
			{assign var="name" value=$basetablename|cat:"_"|cat:$field.fieldname|cat:"[]"}
		{else}
			{assign var="name" value=$basetablename|cat:"_"|cat:$field.fieldname}
		{/if}
	
		{if !$smarty.foreach.fieldlist.first}
			{if $Page->isadmin}
				<div class="calendar-custom-admin-start" style="background: {$adminimages}/orange_dot.gif;">
					<img src="{$images}/blank.gif" width="1" height="1">
				</div>
			{/if}
		{/if}
		<div class="control-group">
			<label class="control-label {if istrue($field.required) || istrue($field.params.isrequired)}required{/if}">{$field.label}</label>
			<div class="controls">
				{if $field.fieldtype=='text'}
					<input type="text" size='25' label="{$field.label}" {if istrue($field.required)} onblur="requireValue(this);"{/if} name="{$name}" value="{$field.value|default:$defaultvalue|escape}">
				{elseif $field.fieldtype=='url'}
					<input type="text" size='65' label="{$field.label}" {if istrue($field.required)} onblur="requireValue(this);"{/if} name="{$name}" value="{$field.value|default:$defaultvalue|escape}" onblur="fixUrl(this);">
				{elseif $field.fieldtype=='email'}
					<input type="text" size='65' label="{$field.label}" {if istrue($field.required)} onblur="requireValue(this);"{/if} name="{$name}" value="{$field.value|default:$defaultvalue|escape}" onblur="checkEmail(this);">
				{elseif $field.fieldtype=='yesno'}
					{if istrue($required)}
						{yesno name=$name label=$field.label onblur="requireSingleCheckedByName(this)" selected=$field.value|default:$defaultvalue}
					{else}
						{yesno name=$name label=$field.label selected=$field.value|default:$defaultvalue}
					{/if}
				{elseif $field.fieldtype=='list'}
					{picklist name=$name label=$field.label required=$required values=$field.options selected=$field.value|default:$defaultvalue ignorecomma="true"}
				{elseif $field.fieldtype=='radio'}
					{if istrue($required)}
						{radiobuttons name=$name label=$field.label onblur="requireSingleCheckedByName(this)" values=$field.options selected=$field.value|default:$defaultvalue}
					{else}
						{radiobuttons name=$name label=$field.label values=$field.options selected=$field.value|default:$defaultvalue}
					{/if}
				{elseif $field.fieldtype=='checkbox'}
					{if istrue($field.params.isrequired)}
						{checkboxes name=$name label=$field.label  onblur="requireSingleCheckedByName(this)" values=$field.options selected=','|explode:$field.value|default:$defaultvalue}
					{else}
						{checkboxes name=$name label=$field.label  values=$field.options selected=','|explode:$field.value|default:$defaultvalue}
					{/if}
				{elseif $field.fieldtype=='image'}
					{if $field.value==""}
						<img src="{$adminimages}/noimage.gif" alt="Upload an image for this position" width="140" height="170">
					{else}
						<a href="{$field.value}" target="_new"  title="{$field.params.alt}"><img src="/core/includes/phpThumb/phpThumb.php?src={$field.value}&w=170" border=0 alt="{$field.params.alt|default:$field.value}"></a><br>
						{$strings_custom_fields_image_set_size}<br>
					{/if}<br>
					{$strings_custom_fields_upload_image} <input class="frmReadOnly" type=file name="params_{$field.fieldname}"><br />
					{$strings_custom_fields_image_alt_text} <input ty$e="text" width="35" name="params[_{$field.fieldname}_alt]" value="{$field.params.alt}" /><br />
					{$strings_custom_fields_image_link_url} <input type="text" width="35" name="params[_{$field.fieldname}_url]" value="{$field.params.url}" />
					{if $field.value!=""}
						<br/><input type="checkbox" value="1" name="delfile[{$field.fieldname}]">{$strings_custom_fields_remove_image}
					{/if}
					<input type="hidden" name="{$name}" value="{$field.value}">
				{elseif $field.fieldtype=='file'}
					{downloadlink  file=$field.value title=$field.params.alt showimage="false"}<br>
					{$strings_custom_fields_upload_file} <input class="frmReadOnly" type=file name="params_{$field.fieldname}">
					{if $field.value!=""}
						&nbsp;<input type="checkbox" value="1" name="delfile[{$field.fieldname}]">{$strings_custom_fields_remove_file}
					{/if}
					Caption: <input type="text" width="35" name="params[_{$field.fieldname}_alt]" value="{$field.params.alt}" />
					<input type="hidden" name="{$name}" value="{$field.value}">
				{elseif $field.fieldtype=='pdf'}
					{downloadlink  file=$field.value title=$field.params.alt showimage="true"}<br>
					{$strings_custom_fields_upload_pdf} <input class="frmReadOnly" type=file name="params_{$field.fieldname}"><br />
					{$strings_custom_fields_caption} <input type="text" width="35" name="params[_{$field.fieldname}_alt]" value="{$field.params.alt}" />
					{if $field.value!=""}
						&nbsp;<input type="checkbox" value="1" name="delfile[{$field.fieldname}]">{$strings_custom_fields_remove_file}
					{/if}
					<input type="hidden" name="{$name}" value="{$field.value}">
				{elseif $field.fieldtype=='htmlarea'}
					{editor content=$field.value|default:$defaultvalue name=$name height="300" toolbarset="Geobase2"}
				{elseif $field.fieldtype=='textarea'}
					<textarea name="{$name}" id="customfield_{$field.fieldname|replace:" ":""}" label="{$field.label}" rows="5" cols="45">{$field.value|default:$defaultvalue|escape}</textarea>
				{elseif $field.fieldtype=='multichoice'}
					<select name="{$name}[]" id="customfield_{$field.fieldname|replace:" ":""}" label="{$field.label}" multiple size="15">
					{foreach from=$field.params.mc_options item="choice"}
						{assign var="test" value=":"|cat:$choice.title|trim|cat:":"}
						{if strstr($field.value,$test)}
							<option selected value=":{$choice.title}:">{$choice.title}</option>
						{else}
							<option value=":{$choice.title}:">{$choice.title}</option>
						{/if}
						{foreach from=$choice.options item="option"}
							{assign var="test" value=":"|cat:$choice.title|cat:"__"|cat:$option|trim|cat:":"}
							{if strstr($field.value,$test)}
								<option selected value=":{$choice.title}__{$option|trim}:">--{$option|trim}</option>
							{else}
								<option value=":{$choice.title}__{$option|trim}:">--{$option|trim}</option>
							{/if}
						{/foreach}
					{/foreach}
					</select>
				{/if}
			</div>
			{if $Page->isadmin}
			<div class="calendar-custom-admin-end">
				{tooltip text=$field.description|default:$field.label}
			</div>
			{/if}
		</div>
	{/if}
{/foreach}
</div>
