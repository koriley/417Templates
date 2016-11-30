{tagged tagid=$Page->params.tagID what="article" order='core_page.datepublished DESC' }
{section name="t" loop=$taglist max=1}
<html lang="en">
<head>
{include file="2014HomeHead.tpl"}
{addcss file="2015homeArticle.css" order="99999999"}
{addjs file="417pinit.js" position="footer"}
</head>
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014HomeTop.tpl"}
<div id="article-container" class="page-container container-fluid">
	{include file="breadcrumb.tpl"}
        <div class="row-fluid">
            <div class="columns-container two-columns">
            <div class="column-middle respond-container span8">
                {assign var="respond_containers" value="12,8"}
               <div class="header-silver"><h6 class="large">Archive - {$taglist[t].title}</h6></div>
               <div id="column-1">
			<form method="post" name="departmentList" action="">
			    
					
			{section name="a" loop=$taglist[t].articles start=$si max="10"}
				<div class="image-container" style="text-align:center; margin:auto;">	
                           
				     {if $taglist[t].articles[a].image<>''}
                                         <a href="{$taglist[t].articles[a].url}">
                                             <img src="/core/includes/phpThumb/phpThumb.php?src={$taglist[t].articles[a].url}{$taglist[t].articles[a].image}" alt="{$taglist[t].articles[a].title}" style="max-width:600px;"/>
                                         </a>
				     {/if}
                                                
                                </div>
                                <div class="archiveContent" style="max-width:600px; margin:auto;">         
						<h4><a href="{$taglist[t].articles[a].url}">{$taglist[t].articles[a].title}</a></h4>
						<p>{$taglist[t].articles[a].summary|truncate:200:"...":false}</p>
						{if $taglist[t].articles[a].author<>''}<p class="article-byline">{$taglist[t].articles[a].author}</p>{/if}
						
                                </div>                
                                <div style="width:100%; border-bottom:1px solid #B0B0B0; margin-bottom:5px;"></div>     
					{/section}
                                              
					
			</form>
			{pager style="link" formname="departmentList" data=$taglist[t].articles rowsperpage="10"}
		</div>
            </div>
            <div class="column-right respond-container span4">
                {assign var="respond_containers" value="12,4"}
            	{*loadModules position="right"*}
                {include file="articleRight"}
            </div>
        </div>
        
        
        </div>
        
    </div>    
        
        
        
        
      
{include file="bottom.tpl"}
{if $Page->params.qrx == fnpt}{debug}{/if}
</body>
</html>
{/section}