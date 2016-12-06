{if $ishome<>''}
    {assign var='tagSystemName' value='homepage'}
    {assign var='nav1' value='-on'}
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
    {assign var='tagName' value='Best Of Article'}
    {assign var='tagSystemName' value='best-article'}        
{elseif $Page->tags[325]<>'' || $article.tags[325]<>''}
    {assign var='tagName' value='10mbPage'}
    {assign var='tagSystemName' value='10mbPage'}		
{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'} 
{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
    {assign var='tagname' value='Stuff to Do'}
    {assign var='tagSystemName' value='calendar'}
    {assign var='nav3' value='-on'}		
{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}		
{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
    {assign var='tagname' value='Best of 417'}
    {assign var='tagSystemName' value='best-of'}
    {assign var='nav5' value='-on'}
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Shopping'}
    {assign var='tagSystemName' value='shopping'}
    {assign var='nav6' value='-on'}	
{elseif $Page->tags[162]<>'' || $article.tags[162]<>''}
    {assign var='tagname' value='Services'}
    {assign var='tagSystemName' value='services'}
    {assign var='nav11' value='-on'}
{elseif $Page->tags[166]<>'' || $article.tags[167]<>''}
    {assign var='tagname' value='Wheres 417'}
    {assign var='tagSystemName' value='wheres-417'}
{elseif $Page->tags[327]<>'' || $article.tags[327]<>''}
    {assign var='tagname' value='Restaurant Month'}
    {assign var='tagSystemName' value='restaurantMonth'}
    {assign var='nav6' value='-on'}
{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}

{/if}
<div class="PencilBanner" >
{literal}
<script type='text/javascript'>
GA_googleFillSlot("PencilBanner");
</script>
{/literal}
</div>
<div class="container">
    <!-- Top bar, social, sites, search -->
    <div class="row" style="background-color:black;">
       <div class="col-md-3 pull-left" style="padding-top:10px;"> 
        <div class="pull-left">
            <a href="http://itunes.apple.com/us/app/417-magazine/id384340110?mt=8"><img class="" style="padding-top:1px;" src="/images/2013%20social%20bar/socialbar1_0001_App-Store.png" /></a>
        </div>
        <div class="pull-left">
            <a href="http://www.facebook.com/417mag"><img src="/images/2013 social bar/socialbar1_0002_Facebook.png" /></a>
        </div>
        <div class="pull-left">
            <a href="http://twitter.com/417_magazine"><img src="/images/2013 social bar/socialbar1_0003_Twitter.png" /></a>
        </div>
        <div class="pull-left">
            <a id="pintrest-pin" class="pinit" href='{literal}javascript:void((function(){var e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)})());{/literal}'><img src="/images/2013 social bar/socialbar1_0004_Pinterest.png" /></a>
        </div>
       </div> 
       <div class="col-md-4 pull-right" style=""> 
        <div class="pull-right">
            <form action="http://www.417mag.com/417-Magazine/Search-Results/" roll="search" class="navbar-form navbar-right" >
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search" name="q" >
                    <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
                    <input type="hidden" name="cof" value="FORID:11" />
                    <input type="hidden" name="ie" value="UTF-8" />
                </div>
                    <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
       </div>
       <div class="col-md-5 pull-right" style="margin-top:5px;"> 
        <div class="pull-right" style="padding:5px;">
            <a href="http://www.417bride.com"><img style="border:0px;" alt="417 Bride" src="/images/2013 social bar/socialbar1_0006_Bride.png"></a>
        </div>
        <div class="pull-right" style="padding:5px;">
            {if $publication.url=='/417-Home/'} <a href="http://417mag.com"><img style="border:0px;" alt="417 Magazine" src="/images/elements/tab_02alt.gif"></a> 
                            {else}
                            <a href="http://417homemagazine.com"><img style="border:0px;" alt="417 Home" src="/images/2013 social bar/socialbar1_0007_Home.png"></a> 
                            {/if}
        </div>
        <div class="pull-right" style="padding:5px;">
            <a href="http://417magdeals.com"><img style="border:0px;" alt="417 Deal of the Day" src="/images/2013 social bar/socialbar1_0005_DOD.png"></a>
        </div>
        
       </div>  
    </div>
        <!-- end top bar -->
        <!-- AD -->
        <div class="row">
            
            <div class="col-md-12 visible-lg">
                <div class="centered">
                {include file="sponsorship.tpl"}
                </div>
            </div>
            <div class="col-md-12 visible-sm">
                <div class="centered">
                {include file="banner-sponsor.tpl"}
                </div>
            </div>    
            
        </div>
       <!-- end ad -->
       <!-- logo -->
        <div class="row">   
            
                <div class="pull-left" ><a href="http://www.417mag.com/" ><img style="width:100%; height:100%" class="img-responsive" src="/images/elements/logo.png" alt="417 Magazine" /></a> </div>
                    
        </div>    
       <!-- end logo -->
</div>