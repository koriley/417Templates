{addjs file="pageLayout.js" position="footer"}

{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014HomeHead.tpl"}
{addcss file="2015homeArticle.css" order="99999999"}
{addjs file="417pinit.js" position="footer"}
</head>
<body>
{include file="2014HomeTop.tpl"}
<div id="articleContainer" class="page-container container-fluid">
	{include file="breadcrumb.tpl"}
        <div class="row-fluid">
            <div class="columns-container two-columns"> 
            <div class="column-middle respond-container span8">
                {assign var="respond_containers" value="12,8"}
            	{*loadModules position="middle"*}
                
                    {include file="pagetools.tpl"}
			<article class="article page-content">
					{if (!isset($article.params.showpagetitle) || istrue($article.params.showpagetitle))}<h1 class="article-title">{$article.title}</h1>{/if}
					{if $article.subtitle<>''}<h3 class="deck">{$article.subtitle}</h3>{/if}
					{if $article.author<>''}<div class="by-line"><!--{$strings_article_template_byline_intro}-->{$article.author}</div>{/if}
                    
                                 
                    
					{if istrue($config.showarticlepublishdate)}
					<div class="datepublished">{$strings_article_template_datepublished}<time datetime="{$article.datepublished|dateformat:'%Y-%m-%d %H:%M'}" pubdate>{$article.datepublished|dateformat:$config.dateformat}</time></div>
					{/if}
                    
                    
                    
                                 
					{if (!isset($article.params.showarticleimage) || istrue($article.params.showarticleimage)) && $article.image<>''}
						{if $Page->params.cparticle < 2}
							<div class="image-container">
                                                            <img src="{$article.url|cat:$article.image}" />
								{*addresponsiveimg respond_containers=$respond_containers src=$article.url|cat:$article.image q=100 alt=$article.photodescription*}
								{if $article.photodescription<>''}<p class="photo-description">{$article.photodescription}</p>{/if}
								{if $article.photocredit<>''}<p class="photo-credit">{$article.photocredit}</p>{/if}
							</div>
						{/if}
					{/if}
					{$article.body}


                        </article>
                                        {loadModules position="middle"}
                          
                                         
                                       
            </div>
            <div class="column-right respond-container span4">
                {assign var="respond_containers" value="12,4"}
            	{*loadModules position="right"*}
                {include file="articleRight"}
            </div>
        </div>
           <div class="column-middle respond-container span12">
                {assign var="respond_containers" value="12,12"}
        <div  class="fb-comments" data-href="http://www.417mag.com{$smarty.server.PHP_SELF}" data-numposts="5" data-colorscheme="light"></div>
        </div>
        </div>
        
    </div>    
        
        
        
        
       
{include file="bottom.tpl"}
</body>
</html>

