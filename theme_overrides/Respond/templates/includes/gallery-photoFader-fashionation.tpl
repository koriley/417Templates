
<div class="koPhotoFader">
    <ul>
        {section name=images loop=$imagelist}
            <li><div id="item{counter name='image'}"><img src="/core/includes/phpThumb/phpThumb.php?src={$gallery.url}{$imagelist[images].image}" alt="{$imagelist[images].description|escape:'htmlall'}" /></div></li>
                {/section}
    </ul>
    <div class="span12 menu" id="menu" style="display:inline; text-align:center;"></div>
</div>
{literal}
    <script>
        var imageCount = {/literal}{$imagelist|@count}{literal}
        //alert(imageCount);
        var screenWidth = jQuery('#menu').width();
        //alert(screenWidth);
        var e = 1;
//this sets us up the menu.
        for (var i = 1; i <= imageCount; i++) {
            if (i === 1) {
                jQuery('#item' + i).addClass('show');
                jQuery('#menu').append('<div class="surrondButton"><div class="menu_' + i + ' click black" data-number="' + i + '" data-image="item' + i + '" style=""></div></div>');
            } else {

                jQuery('#menu').append('<div class="surrondButton"><div class="menu_' + i + ' click grey" data-number="' + i + '" data-image="item' + i + '" style=" "></div></div>');
            }
        }

        //this is the auto rotate controles.
        function timerRotate() {
            if (e >= imageCount) {
                e = 1;
            } else {
                e = e + 1;
            }
            //alert(e);
            jQuery('.show').removeClass('show');
            jQuery('#item' + e).addClass('show');
            jQuery('.black').addClass('grey');
            jQuery('.black').removeClass('black');
            jQuery('.menu_' + e).addClass('black');
        }
        var timer = setInterval(timerRotate, 5000);

        //This is the click controles
        jQuery('.surrondButton').click(function() {


            var iClick = jQuery(this).children('div').data('image');

            jQuery('.black').addClass('grey');
            jQuery('.black').removeClass('black');
            jQuery('.show').removeClass('show');
            jQuery('#' + iClick).addClass('show');
            jQuery(this).children('div').addClass('black');
            e = jQuery(this).children('div').data('number');
            clearInterval(timer);
            timer = setInterval(timerRotate, 5000);

        });


    </script>
{/literal}