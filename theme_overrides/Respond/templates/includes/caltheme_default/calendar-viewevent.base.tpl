<div class="row-fluid">
    <div class="span8 calendar-detail">
    	{assign var="respond_containers" value="12,8"}
		<div class="calendar-body module {$module.class}" id="{$module.htmlid}">
    	    {include file="calendar_event.tpl"}
        </div>
    </div>
    {if $Page->params.mode !="print"}
    <div class="span4 calendar-sidebar">
        {assign var="respond_containers" value="12,4"}
        <ul class="nav nav-tabs nav-stacked nav-icons hidden-phone">
        	{include file="calendar_main_links.tpl"}
		</ul>
        {loadModules position="right"}
    </div>
    {/if}
</div>
<div class="row-fluid visible-phone">
	<div class="span12 calendar-sidebar">
        <ul class="nav nav-tabs nav-stacked nav-icons">
        	{include file="calendar_main_links.tpl"}
		</ul>
    </div>
</div>

