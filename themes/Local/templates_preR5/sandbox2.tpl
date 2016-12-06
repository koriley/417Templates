{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="head.tpl"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="top.tpl"}
<div id="publication-container" class="page-container container-fluid">
	{include file="breadcrumb.tpl"}
	{* PAGE CONTENT AND TITLE*}
	{assign var="showpagetools" value=false}
	{pagetools}
	{if ($Page->hasfeeds && isset($article)) || istrue($addthis_toolbar) || istrue($email_icon) || istrue($print_icon) || istrue($comments_icon)}
		{assign var="showpagetools" value=true}
	{/if}
    {if (!isset($Page->pageobject->params.showpagetitle) || istrue($Page->pageobject->params.showpagetitle)) || !empty($pagecontent) || istrue($showpagetools)}
    <div class="row-fluid">
       <div class="page-content respond-container span12">
           {include file="pagetools.tpl"}
           {if !isset($Page->pageobject->params.showpagetitle) || istrue($Page->pageobject->params.showpagetitle)}<h1 class="page-title">{$Page->title}</h1>{/if}
           {if $pagecontent<>''}{$pagecontent}{/if}    	
       </div>
    </div>
    {/if}
	<div class="row-fluid publication-columns-container">
    	{*** WE CONSIDER THE VARIOUS POSSIBLE MODULE CONFIGURATIONS, AND PRODUCE THE APPROPRIATE LAYOUT. SEE NOTES BELOW ***}
    	{* ALL MODULE POSITIONS *}
        {if in_array("top",$activeModulePositions) && in_array("left",$activeModulePositions) && in_array("middle",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container top-left-middle-right">
            <div class="columns span8">
            	<div class="row-fluid">
             		 <div class="column-top respond-container span12">
            			{assign var="respond_containers" value="12,8,12"}
        				{loadModules position="top"}
            		</div>
            	</div>
            	<div class="row-fluid">
             		<div class="column-left respond-container span6">
            			{assign var="respond_containers" value="12,8,6"}
        				{loadModules position="left"}
            		</div>
            		<div class="column-middle respond-container span6">
            			{assign var="respond_containers" value="12,8,6"}
        				{loadModules position="middle"}
            		</div>
            	</div>
            </div>
            <div class="column-right respond-container span4">
            	{assign var="respond_containers" value="12,4"}
            	{loadModules position="right"}
            </div>
        </div>
        {* TOP, MIDDLE, RIGHT *}
        {elseif in_array("top",$activeModulePositions) && in_array("middle",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container top-middle-right">
            <div class="columns span8">
            	{assign var="respond_containers" value="12,8"}
                <div class="column-top respond-container">
            		{loadModules position="top"}
                </div>
                <div class="column-middle respond-container">
                	{loadModules position="middle"}
                </div>
            </div>
            <div class="column-right respond-container span4">
            	{assign var="respond_containers" value="12,6"}
            	{loadModules position="right"}
            </div>
        </div>
        {* TOP, LEFT, RIGHT *}
        {elseif in_array("top",$activeModulePositions) && in_array("left",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container top-left-right">
            <div class="columns span6">
            	{assign var="respond_containers" value="12,6"}
                <div class="column-top respond-container">
            		{loadModules position="top"}
                </div>
                <div class="column-left respond-container">
                	{loadModules position="left"}
                </div>
            </div>
            <div class="column-right respond-container span6">
            	{assign var="respond_containers" value="12,6"}
            	{loadModules position="right"}
            </div>
        </div>
        {* TOP, LEFT, MIDDLE *}
        {elseif in_array("top",$activeModulePositions) && in_array("left",$activeModulePositions) && in_array("middle",$activeModulePositions)}
        <div class="columns-container top-left-middle">
            <div class="row-fluid">
                <div class="column-top respond-container span12">
                	{assign var="respond_containers" value="12,12"}
            		{loadModules position="top"}
                </div>
            </div>
            <div class="row-fluid">
                <div class="column-left respond-container span6">
                	{assign var="respond_containers" value="12,6"}
            		{loadModules position="left"}
                </div>
                <div class="column-middle respond-container span6">
                	{assign var="respond_containers" value="12,6"}
            		{loadModules position="middle"}
                </div>
            </div>
        </div>
        {* TOP and LEFT or RIGHT or MIDDLE *}
        {elseif in_array("top",$activeModulePositions) && (in_array("left",$activeModulePositions) || in_array("middle",$activeModulePositions) || in_array("right",$activeModulePositions))}
        <div class="row-fluid">
        	{assign var="respond_containers" value="12,12"}
            <div class="respond-container span12">
        		{loadModules position="top"}
            </div>
        </div>
        <div class="row-fluid">
            <div class="respond-container span12">
            	{assign var="respond_containers" value="12,12"}
            	{if in_array("left",$activeModulePositions)}
            		{loadModules position="left"}
            	{elseif in_array("middle",$activeModulePositions)}
            		{loadModules position="middle"}
            	{elseif in_array("right",$activeModulePositions)}
            		{loadModules position="right"}
            	{/if}
            </div>
        </div>
        {* LEFT, MIDDLE, RIGHT *}
        {elseif in_array("left",$activeModulePositions) && in_array("middle",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container left-middle-right">
            <div class="column-left respond-container span4">
                {assign var="respond_containers" value="12,4"}
            	{loadModules position="left"}
            </div>
            <div class="column-middle respond-container span4">
                {assign var="respond_containers" value="12,4"}
            	{loadModules position="middle"}
            </div>
            <div class="column-right respond-container span4">
                {assign var="respond_containers" value="12,4"}
            	{loadModules position="right"}
            </div>
        </div>
        {* LEFT, MIDDLE *}
        {elseif in_array("left",$activeModulePositions) && in_array("middle",$activeModulePositions)}
        <div class="columns-container two-columns">
            <div class="column-left respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="left"}
            </div>
            <div class="column-middle respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="middle"}
            </div>
        </div>
        {* LEFT, RIGHT *}
        {elseif in_array("left",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container two-columns">
            <div class="column-left respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="left"}
            </div>
            <div class="column-right respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="right"}
            </div>
        </div>
        {* MIDDLE, RIGHT *}
        {elseif in_array("middle",$activeModulePositions) && in_array("right",$activeModulePositions)}
        <div class="columns-container two-columns">
            <div class="column-middle respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="middle"}
            </div>
            <div class="column-right respond-container span6">
                {assign var="respond_containers" value="12,6"}
            	{loadModules position="right"}
            </div>
        </div>
        {* TOP or LEFT or MIDDLE or RIGHT *}
        {elseif in_array("top",$activeModulePositions) || in_array("left",$activeModulePositions) || in_array("middle",$activeModulePositions) || in_array("right",$activeModulePositions)}
        <div class="respond-container span12">
            {assign var="respond_containers" value="12,12"}
            {if in_array("top",$activeModulePositions)}
            	{loadModules position="top"}
            {elseif in_array("left",$activeModulePositions)}
            	{loadModules position="left"}
            {elseif in_array("middle",$activeModulePositions)}
            	{loadModules position="middle"}
            {elseif in_array("right",$activeModulePositions)}
            	{loadModules position="right"}
            {/if}
        </div>
        {/if}
	</div>
</div>
{include file="bottom.tpl"}
</body>
</html>



{* NOTES FOR DEVELOPERS: Possible combinations that direct the logic above:

top,left,middle,right
-------------------
|    		|     |
------------|     |
|     |     |     |
-------------------


top,middle,right
-------------------
|           |     |
------------|     |
|           |     |
-------------------


top,left,right
-------------------
|        |        |
---------|        |
|        |        |
-------------------


top,left,middle
-------------------
|                 |
------------------|
|        |        |
-------------------


top,left
-------------------
|                 |
-------------------
|                 |
-------------------


top,right
-------------------
|                 |
-------------------
|                 |
-------------------


top,middle
-------------------
|                 |
-------------------
|                 |
-------------------


left,middle,right
-------------------
|     |     |     |
-------------------


middle,left
-------------------
|        |        |
-------------------


middle,right
-------------------
|        |        |
-------------------


left,right
-------------------
|        |        |
-------------------


top
-------------------
|                 |
-------------------


left
-------------------
|                 |
-------------------


middle
-------------------
|                 |
-------------------


right
-------------------
|                 |
-------------------

*}
