<style type="text/css">
<!--
@import url("/media/css/database-restaurant.css");
-->
</style>
{assign var="title" value=$data.name|cat:" - "|cat:$data.city|default:"San Diego"|cat:", CA"}{$Page->setTitle($title)}
<p><a href="javascript:history.go(-1);"><< Back to the list</a></p>
<div id="restaurant-details">
	<table id="restaurant-tab" cellpadding="0" cellspacing="0">
		<tr>
		<td class="tab-left"><img src="{$images}/blank.gif" alt="" width="9" height="1" /></td>
		<td class="tab-center"><h2>{$data.name}</h2></td>
		<td class="tab-right"><img src="{$images}/blank.gif" alt="" width="9" height="1" /></td>
		</tr>
	</table>
	<div class="listing-info">
			<table border="0" width="100%" id="restaurant-details-table" cellspacing="0" cellpadding="0">
			<tr><td valign="top" class="data-title" width="100">Address:</td><td class="data">{$data.address}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">City:</td><td class="data"> {$data.city}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">Phone:</td><td class="data"> {$data.phone}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			{if $data.url<>''}<tr><td valign="top" class="data-title">URL:</td><td class="data"><a href="http://{$data.url}" target="_blank">{$data.url}</a></td></tr><tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			<tr><td valign="top" class="data-title">Category:</td><td class="data"> {$data.additionalinfo}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">Price:</td><td class="data"> {$data.price}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			{if $data.specialty<>''}<tr><td valign="top" class="data-title">Specialty:</td><td class="data">{$data.specialty}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
 			{if $data.description<>''}<tr><td valign="top" class="data-title">Description:</td><td class="data">{$data.description}</td></tr>
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			{if $data.travelnow<>''}<tr><td valign="top" class="data-title">Make a reservation:</td><td class="data"><a href="{$data.travelnow}" parent="_blank">Make a reservation for {$data.name} &raquo;</a></td></tr><tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>{/if}
			<tr><td colspan="2" class="rule"><img src="{$images}/blank.gif" alt="" width="1" height="1" /></td></tr>
			<tr><td valign="top" class="data-title">Map:</td><td class="data"><a href="http://maps.google.com/maps?hl=en&q={$data.address},+{$data.city|default:"California"},+{$data.state|default:"CA"},+{$data.zip|default:"92122"}&" target="_blank">Click to map the location of {$data.name}</a></td></tr>
			</table>
	</div>
</div>
