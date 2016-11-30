{menu id=$config.secondary_nav_menu_id}

<nav id="menu_{$config.secondary_nav_menu_id}" class="">

    <ul id=""  class="ulInline">

        {foreach from=$menu key="k" item="item" name="eyebrow"}
            <li>
            {if $item.url<>''}<a{else}<span{/if}{if $item.classname<>''} class="{$item.classname}"{/if}{if $item.url<>''} href="{$item.url}"{/if}{if $item.linktarget<>''} target="{$item.linktarget}"{/if}{if $item.onclick<>''} onclick="{$item.onclick};"{/if}><span style="text-transform:uppercase;">{if $item.name|trim != ""}{$item.name|trim}{else}{$item.title|trim}{/if}{if $item.url<>''}</span></a>{else}</span>{/if}
        </li>
    {/foreach}



</ul>



</nav>

{literal}
    <script>


        jQuery('.bizFacebook span').html('<img style="width:30px; position:relative; bottom:10px; " src="/images/biz417/facebook.png" /></div>');
        jQuery('.bizTwitter span').html('<img style="width:30px; position:relative; bottom:10px;" src="/images/biz417/twitter.png" /></div>');
        jQuery('.bizLinkedin span').html('<img style="width:30px; position:relative; bottom:10px;" src="/images/biz417/linkedin.png" /></div>');
    </script>{/literal}
