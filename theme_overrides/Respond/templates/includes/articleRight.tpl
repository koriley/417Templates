{if $Page->tags[40]<>'' || $article.tags[40]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {loadModules position="dining-right"}
    
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}  
    {loadModules position="shopping-right"}
    
{else}
    {loadModules position="right"}
{/if}    
     