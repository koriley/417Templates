{php}

function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}
$mypage=curPageURL();
//$Page->assign('togo', '$mypage');
//echo $mypage;
{/php}

{assign var="oaspos" value="Top1,Right1,x10"}
{assign var="oascat" value=$xecategory|default:$Page->category|oasname}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="http://ogp.me/ns/fb#"
      >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta property="og:image" content="http://www.417mag.com/core/includes/phpThumb/phpThumb.php?src={$article.url}{$article.image}&amp;w=563&amp;q=75&amp;aoe=0" />
        <meta property="og:image" content="http://www.417mag.com/images/elements/logo.jpg"/>
        <meta property="og:type" content="city"/>
        <meta property="og:url" content="{php}echo $mypage; {/php}"/>
        <meta property="og:site_name" content="417 Magazine"/>
        <meta property="fb:admins" content="571284244,100000807778635"/>
        <meta property="og:description" content="{$Page->description|default:$issue.description|default:$publication.description}"/>
        <meta property="og:title" content="<PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}>"/>
        <meta property="fb:app_id" content="134468316683025"/>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="http://fbcomments-email-notifications.googlecode.com/files/fbCommentsEN.js"></script>

        <title><PAGETITLE {if $cssname eq '417'}{$Page->tags[48].tag.title}{elseif $cssname eq 'home'}{$Page->tags[68].tag.title}{elseif $cssname eq 'bride'}{$Page->tags[105].tag.title}{/if}></title>
        <meta name="robots" content="all" />
        <meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}" />
        <meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}" />
        <link href="/css/Bride-417.css" rel="stylesheet" type="text/css" />
<link href="/css/bride-galleries.css" rel="stylesheet" type="text/css" />
        
        <script type="text/javascript" src="/js/popup.js"></script>
        {include file="oas_head.tpl"}
        {include file="ga.tpl"}
    </head>
    <body>

        <div id="page-container" >

            
            

                {include file="top-bride.tpl"}
                <p>{$tagSystemName}</p>
                <!-- leader board -->

                <!-- stop leaderboard -->

                <div id="page-body" style="width:620px;">

                    <div id="columns-1-2" style="width:620px; float:left;">
                        <div id="article">
                            <div id="breadcrumb">
                {section name=crumb loop=$breadcrumbs} {strip} {if $smarty.section.crumb.last} {$breadcrumbs[crumb].title} {else} <a href="{$breadcrumbs[crumb].url}" class="breadcrumblink">{$breadcrumbs[crumb].title}</a>&nbsp;/&nbsp;{/if} {/strip} {/section}
            </div>	

            <h1>{$article.title}</h1>
        {if $article.subtitle<>''}<h2>{$article.subtitle}</h2>{/if}
        <iframe src="http://www.facebook.com/plugins/like.php?href={php} echo $mypage;{/php}&amp;layout=standard&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:30px"></iframe>
    {if $article.author<>''}<div class="by-line">{$article.author}</div>{/if}	
    {if $article.body<>''}
        {$article.body}
    {/if}
    <!--<h1>{$Page->title}</h1>-->
{if $pagecontent<>''}{eval var=$pagecontent}{/if}
<MESSAGES>

    {loadModules position="middle"}
    <p><b><a href="http://417mag.com/store">Subscribe to 417 Magazine</a></b></p>
    <div style="width:600px; text-align:center; padding-top:10px;">
        
    </div>
    {include file="pagetools.tpl"}


    </div>

<!--{if $pagecontent<>''}{eval var=$pagecontent}{/if}-->





</div>			
<div id="column-3" style="float:right; margin-right:0px;">
    {if $Page->tags[51]<>'' || $article.tags[51]<>''}
        	
    {/if}
    {loadModules position="right"}
</div>
<div style="clear:both;"></div>
{include file="footer-bride.tpl"}
</div>

</div>

</body>
</html>

