<!-- 417mag analytics -->
{literal}
    <script type="text/javascript">


        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-69300113-1', 'auto');
        ga('send', 'pageview');



    </script>

    <script type='text/javascript'>
        var googletag = googletag || {};
        googletag.cmd = googletag.cmd || [];
        (function () {
            var gads = document.createElement('script');
            gads.async = true;
            gads.type = 'text/javascript';
            var useSSL = 'https:' == document.location.protocol;
            gads.src = (useSSL ? 'https:' : 'http:') +
                    '//www.googletagservices.com/tag/js/gpt.js';
            var node = document.getElementsByTagName('script')[0];
            node.parentNode.insertBefore(gads, node);
        })();
    </script>

    <script type='text/javascript'>
        googletag.cmd.push(function () {
            googletag.defineSlot('/6345887/bizBanner_1', [468, 60], 'div-gpt-ad-1443025537204-0').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizBanner_2', [468, 60], 'div-gpt-ad-1443025537204-1').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizBanner_3', [468, 60], 'div-gpt-ad-1443025537204-2').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizBanner_4', [468, 60], 'div-gpt-ad-1443025537204-3').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizIsland_1', [300, 250], 'div-gpt-ad-1443025537204-4').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizIsland_2', [300, 250], 'div-gpt-ad-1443025537204-5').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizIsland_3', [300, 250], 'div-gpt-ad-1443025537204-6').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizIsland_4', [300, 250], 'div-gpt-ad-1443025537204-7').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizLeaderboard_1', [728, 90], 'div-gpt-ad-1443025537204-8').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizLeaderboard_2', [728, 90], 'div-gpt-ad-1443025537204-9').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizLeaderboard_3', [728, 90], 'div-gpt-ad-1443025537204-10').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizLeaderboard_4', [728, 90], 'div-gpt-ad-1443025537204-11').addService(googletag.pubads());
            googletag.defineSlot('/6345887/powerfulWomenGateway', [600, 400], 'div-gpt-ad-1443025537204-12').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizBigPencil', [1200, 245], 'div-gpt-ad-1443025537204-13').addService(googletag.pubads());
            googletag.defineSlot('/6345887/bizSmPencil', [1200, 35], 'div-gpt-ad-1443025537204-14').addService(googletag.pubads());
            googletag.pubads().enableSingleRequest();
            googletag.enableServices();
        });
    </script>
{/literal}

{literal}
    <script>

        if (typeof jQuery != 'undefined') {
            jQuery(document).ready(function ($) {
                var filetypes = /\.(zip|exe|pdf|doc*|xls*|ppt*|mp3)$/i;
                var baseHref = '';
                if (jQuery('base').attr('href') != undefined)
                    baseHref = jQuery('base').attr('href');
                jQuery('a').each(function () {
                    var href = jQuery(this).attr('href');
                    if (href && (href.match(/^https?\:/i)) && (!href.match(document.domain))) {
                        jQuery(this).click(function () {
                            var extLink = href.replace(/^https?\:\/\//i, '');
                            _gaq.push(['_trackEvent', 'External', 'Click', extLink]);
                            if (jQuery(this).attr('target') != undefined && jQuery(this).attr('target').toLowerCase() != '_blank') {
                                setTimeout(function () {
                                    location.href = href;
                                }, 200);
                                return false;
                            }
                        });
                    }
                    else if (href && href.match(/^mailto\:/i)) {
                        jQuery(this).click(function () {
                            var mailLink = href.replace(/^mailto\:/i, '');
                            _gaq.push(['_trackEvent', 'Email', 'Click', mailLink]);
                        });
                    }
                    else if (href && href.match(filetypes)) {
                        jQuery(this).click(function () {
                            var extension = (/[.]/.exec(href)) ? /[^.]+$/.exec(href) : undefined;
                            var filePath = href;
                            _gaq.push(['_trackEvent', 'Download', 'Click-' + extension, filePath]);
                            if (jQuery(this).attr('target') != undefined && jQuery(this).attr('target').toLowerCase() != '_blank') {
                                setTimeout(function () {
                                    location.href = baseHref + href;
                                }, 200);
                                return false;
                            }
                        });
                    }
                });
            });
        }

    </script>
{/literal}


