{menu id=$config.secondary_nav_menu_id}

<nav id="menu_{$config.secondary_nav_menu_id}" class="eyebrow menu-container nav-collapse collapse">

    <ul id="eyebrow-list"  class="nav">

        {foreach from=$menu key="k" item="item" name="eyebrow"}
            <li class="checkClick" style="float:none;">
            {if $item.url<>''}<a{else}<span{/if}{if $item.classname<>''} class="{$item.classname}"{/if}{if $item.url<>''} href="{$item.url}"{/if}{if $item.linktarget<>''} target="{$item.linktarget}"{/if}{if $item.onclick<>''} onclick="{$item.onclick}"{/if}><span style="text-transform:uppercase;">{if $item.name|trim != ""}{$item.name|trim}{else}{$item.title|trim}{/if}{if $item.url<>''}</span></a>{else}</span>{/if}
        </li>
    {/foreach}

    <li class="visible-desktop" style="width:200px;">
        {*}<form action="http://www.417mag.com/417-Magazine/Search-Results/" class="">
        <div class="input-append" >
        <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
        <input type="hidden" name="cof" value="FORID:11" />
        <input type="hidden" name="ie" value="UTF-8" />
        <input type="text" name="q" class="input-medium" id="appendedInputButtons" placeholder="search" />
        <button type="submit" class="btn" style="display:inline"><span class="icon-search"></span></button>
        </div>
        </form>{*}
        {if $publication.url=='/417-Home/'}  
            {literal}
                <script>

                    (function () {
                        var cx = '014450523068865561052:umjoemm-uju';
                        var gcse = document.createElement('script');
                        gcse.type = 'text/javascript';
                        gcse.async = true;
                        gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                                '//cse.google.com/cse.js?cx=' + cx;
                        var s = document.getElementsByTagName('script')[0];
                        s.parentNode.insertBefore(gcse, s);
                    })();
                </script>
            <gcse:search></gcse:search> 

        {/literal}
    {else}
        {literal}
            <script>
                (function () {
                    var cx = '014450523068865561052:cfhjwqykide';
                    var gcse = document.createElement('script');
                    gcse.type = 'text/javascript';
                    gcse.async = true;
                    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                            '//cse.google.com/cse.js?cx=' + cx;
                    var s = document.getElementsByTagName('script')[0];
                    s.parentNode.insertBefore(gcse, s);
                })();
            </script>
            <gcse:search></gcse:search>
            {/literal}
        {/if}
    </li>

</ul>



</nav>
