  <div class="row-fluid">
    <div class="span8 calendar-detail">
        {assign var="respond_containers" value="12,8"}
        <div class="calendar-body module {$module.class}" id="{$module.htmlid}">
            {include file="caltheme_music/calendar_event.tpl"}
        </div>
    </div>
   {if $Page->params.mode !="print"}
    <div class="span4 calendar-sidebar">
        <div class="search-filter module hidden-phone">
            <h2>{$calendar_filters_action} {$calendar.title}</h2> 
            <div class="content">
            	{include file="caltheme_music/calendar_search_filters.tpl"}
            </div>
        </div>
        <ul class="nav nav-tabs nav-stacked nav-icons hidden-phone">
            {*include file="calendar_main_links.tpl"*}
        </ul>
        {loadModules position="right"}
    </div>
    {/if}
</div>
<div class="row-fluid visible-phone">
    <div class="span12 calendar-sidebar">
        <ul class="nav nav-tabs nav-stacked nav-icons">
            {include file="caltheme_music/calendar_main_links.tpl"}
           
        </ul>
    </div>
</div>

{literal}
    <script>
       
            //jQuery('.reSizeMe').removeClass('span9');
            //jQuery('.reSizeMe').addClass('span12');
            jQuery('.calendar-detail').hide();
            jQuery('.calendar-sidebar').removeClass('span4');
            jQuery('.calendar-sidebar').addClass('span12');
       
    </script>
{/literal}

 
