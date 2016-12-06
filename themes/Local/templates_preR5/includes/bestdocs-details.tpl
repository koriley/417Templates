<style type="text/css">
<!--
@import url("/media/css/database-restaurant.css");
-->
</style>
{assign var="title" value=$data.name|cat:" - "|cat:$data.city|default:"Springfield"|cat:", MO"}{$Page->setTitle($title)}
<p><a href="javascript:history.go(-1);"><< Back to the list</a></p>
<div id="restaurant-details">
	<table id="restaurant-tab" cellpadding="0" cellspacing="0">
		<tr>
		<td class="tab-left"><img src="{$images}/blank.gif" alt="" width="9" height="1" /></td>
		<td class="tab-center"><h2>{$data.name} - {$data.starrating}</h2></td>
		<td class="tab-right"><img src="{$images}/blank.gif" alt="" width="9" height="1" /></td>
		</tr>
	</table>
	<div class="listing-info">
			<table border="0" width="100%" id="restaurant-details-table" cellspacing="0" cellpadding="0">
			<tr><td valign="top" class="data-title">Address:</td><td class="data">{$data.address}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">City:</td><td class="data"> {$data.city}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">Phone:</td><td class="data"> {$data.phone|format:"ddd-ddd-dddd"}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			{if $data.url<>''}<tr><td valign="top" class="data-title">Physician's Website:</td><td class="data"><a href="{$data.url}" target="_blank">{$data.url}</a></td></tr><tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.url2<>''}<tr><td valign="top" class="data-title">2nd Physician's Website:</td><td class="data"><a href="{$data.url2}" target="_blank">{$data.url2}</a></td></tr><tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			<tr><td valign="top" class="data-title">Hospital:</td><td class="data"> {$data.location}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			{if $data.clinic<>''}<tr><td valign="top" class="data-title">Clinic:</td><td class="data"> {$data.clinic}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.additionalinfo<>''}<tr><td valign="top" class="data-title">Specialty:</td><td class="data"> {$data.additionalinfo}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.degree<>''}<tr><td valign="top" class="data-title">Degree:</td><td class="data"> {$data.degree}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.certification<>''}<tr><td valign="top" class="data-title">Certification:</td><td class="data"> {$data.certification}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.school<>''}<tr><td valign="top" class="data-title">School:</td><td class="data"> {$data.school}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.residency<>''}<tr><td valign="top" class="data-title">Residency:</td><td class="data"> {$data.residency}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
 			{if $data.description<>''}<tr><td valign="top" class="data-title">Editor's Notes:</td><td class="data">{$data.description}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">Map:</td><td class="data"><a href="http://maps.google.com/maps?hl=en&q={$data.address},+{$data.city|default:"Springfield"},+{$data.state|default:"MO"},+{$data.zip|default:"65801"}&" target="_blank">Click to map the location of {$data.name}</a></td></tr>
			</table>
	</div>
</div>
