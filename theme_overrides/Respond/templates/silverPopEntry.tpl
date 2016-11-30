{addcss file="silverPop.css" order="900"}
<div id="silverPop1" style="display:none; background-color:#A6A7AB">
    <form method="post" action="" pageId="6236374" siteId="212068" parentPageId="6236373" >
        <div>
            <input type="text" placeholder="Email Address" name="Email" id="control_EMAIL" label="Email" class="textInput defaultText" style="margin: 0 3px 5px 3px; height: 20px; width: 294px;">
        </div>

        <div style="margin: 0px 0px 0px 3px;">
            <div class="subscribeuestion">Do you subscribe to the magazine?</div>
            <input style="display: inline-block" type="radio"  style="margin: 0px 4px 0px 0px; width: 13px;"  name="PrintSubscriber" id="control_COLUMN24_0" label="Do you Subscribe to 417 Magazine?" value="yes"></td>
            <div style="display: inline-block" >Yes</div>
            <input style="display: inline-block"  type="radio" style="margin: 0px 4px 0px 0px; width: 13px;"  name="PrintSubscriber" id="control_COLUMN24_1" label="Do you Subscribe to 417 Magazine?" value="no"></td>
            <div style="display: inline-block" >No</div>
        </div>

<div style="text-align: right; margin-right:5px;">
        <input type="submit" class="defaultText buttonStyle" value="Submit" id="subButton">
</div>
        <input type="hidden" name="417 Magazine Club 417" id="control_COLUMN15" value="yes">

        <input type="hidden" name="formSourceName" value="StandardForm">
        <!-- DO NOT REMOVE HIDDEN FIELD sp_exp --><input type="hidden" name="sp_exp" value="yes">

    </form>
    {literal}
        <script>
            jQuery('#subButton').click(function(e) {
                e.preventDefault();
                var url = 'http://417mag.mkt7054.com/HomepageWelcomeForm/HomepageGateway';
                var $form = jQuery(this),
                        sp = jQuery('input[name="sp_exp"]').val(),
                        subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                        address = jQuery('input[name="Email"]').val(),
                        club = jQuery('input[name="417 Magazine Club 417"]').val();
                // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+club);
                jQuery.post(url, {sp_exp: sp, '417 Magazine Club 417': club, PrintSubscriber: subscribe, Email: address});
                jQuery('.silverPop1_clickRemove').hide();
                jQuery('#silverPop1_greyOut').remove();
                setCookie("magUser", address, 365);
            });
        </script>
    {/literal}
</div>