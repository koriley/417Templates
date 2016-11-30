<div class="tanBar"></div>
<div class="brandBar">
    <div class="container-fluid">
        <div class="row-fluid">

            <div class="brideLogo">
                <a class="" href="{$publication.params.logolinkurl}" alt="{$publication.title}">
                    <!--<a class="logo" href="http://417mag.com/r5/" alt="{$publication.title}">-->
                    <img src="{$publication.params.logopath}" alt="{$publication.title}" />
                </a>
            </div>
          <div class="socialStuff">
                
                <div>
                    <div  class="input-append"><input type="text" id="googleSearch" />
                        <span class="add-on" id="googleSearchButton">search</span>
                    </div>
                </div>
              <div class="fb"><img src="/images/bride/2016/417Bride_facebook.png" /></div>
                <div class="fb"><img src="/images/bride/2016/417Bride_pinterest.png" /></div>
                
            </div> 

        </div>
    </div>
</div>
<div class="menuItems">
    <div class="container-fluid">
        <div class="row-fluid ">
            <div class="innerMenu">
                {include file="brideMainMenu.tpl"}
            </div>
        </div>
    </div>
</div>
<div >{literal}
    <script>
        (function () {
            var cx = '014450523068865561052:xf9re-okfhu';
            var gcse = document.createElement('script');
            gcse.type = 'text/javascript';
            gcse.async = true;
            gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                    '//cse.google.com/cse.js?cx=' + cx;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(gcse, s);
        })();
    </script>
    <gcse:search></gcse:search>{/literal}</div>
        {literal}
    <script>
        jQuery(document).ready(function () {
            jQuery('table[class="gsc-search-box"]').hide();
        });
        jQuery('#googleSearchButton').click(function () {
            var mySearch = jQuery("#googleSearch").val();
            jQuery('.gsc-input').val(mySearch);
            jQuery('.gsc-search-box input[title="search"]').click();
            //jQuery('gsc-result-info').show();
            jQuery('.gsc-results-wrapper-overlay').addClass('gsc-results-wrapper-visible');
        });
    </script>
{/literal}