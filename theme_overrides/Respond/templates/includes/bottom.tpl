
<footer>
    <div class="container-fluid">
        <div class="row-fluid">
            {if $config.primary_nav_menu_id<>''}
                <div class="span2" id="footer-main-menu">
                    {include file="menu-footer-main.tpl"}
                    {loadModules position="bottomleft"}
                </div>
            {/if}
            {if $config.secondary_nav_menu_id<>''}
                <div class="span2" id="footer-eyebrow-menu">
                    {include file="menu-footer-eyebrow.tpl"}
                    {loadModules position="bottomcenter"}
                </div>
            {/if}
            <div class="span8">
            {if $publication.params.footermoduleid<>''}{contentitem id=$publication.params.footermoduleid}{/if}

<p><!--<span class="rivistaLink"><a href="http://www.godengo.com/Rivista-Content-Management-System/"><img src="{$strings_footer_rivista_logo_path}" alt="{$strings_footer_powered_by_rivista}" /></a></span>{if $publication.params.privacypolicypath<>''}<span class="privacyPolicy">{$strings_footer_divider}<a href="{$publication.params.privacypolicypath}">{$strings_footer_privacy_policy}</a></span>{/if}--></p>
            {loadModules position="bottomright"}<br/>
            <div class="copywiteAddress"> Whitaker Publishing<br/>
                <a href="https://www.google.com/maps/place/417+Magazine/@37.1737183,-93.2234129,15z/data=!4m2!3m1!1s0x0:0x8335c468a3f0422d?sa=X&ved=0ahUKEwibsKnPsorPAhVFKiYKHVs7AG4Q_BIIbjAN"> 2111 S. Eastgate Ave.<br/> Springfield, MO<br/></a>
            417-883-7417<br/>
            </div>

        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
        <p>{$strings_footer_copyright}{$smarty.now|date_format:"%Y"}{if $config.publishername<>''}&nbsp;{$config.publishername}{/if}{$strings_footer_rights_reserved}</p>
    </div>
</div>
</footer>
    
    {literal}
        <script>
            jQuery('#footer-main-menu .dropdown').hide();
            jQuery('#footer-main-menu .deskSearch').hide();
        </script>
    {/literal}    