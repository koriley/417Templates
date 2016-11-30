<div class="bizBreakForm">
<form method="post" action="" pageId="7163409" siteId="224438" parentPageId="7163407" >
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td style="padding: 5px 0px 0px 5px;">
                <div style="position: relative; overflow: hidden; width:300px;" id="container_COLUMN1">
                   
                    <input placeholder="First Name" type="text" name="First Name" id="control_COLUMN1" label="First Name" class="textInput defaultText" style="margin: 0 3px 5px 3px; height: 20px; width: 294px;">
                </div>
            </td>
        </tr>
        <tr>
            <td style="padding: 5px 0px 0px 5px;">
                <div style="position: relative; overflow: hidden; width:300px;" id="container_COLUMN2">
                    
                    <input  placeholder="Last Name" type="text" name="Last Name" id="control_COLUMN2" label="Last Name" class="textInput defaultText" style="margin: 0 3px 5px 3px; height: 20px; width: 294px;">
                </div>
            </td>
        </tr>
        <tr>
            <td style="padding: 5px 0px 0px 5px;">
                <div style="position: relative; overflow: hidden; width:300px;" id="container_EMAIL">
                    
                    <input placeholder="Email Address" type="text" name="Email" id="control_EMAIL" label="Email" class="textInput defaultText" style="margin: 0 3px 5px 3px; height: 20px; width: 294px;">
                </div>
            </td>
        </tr>
        <tr>
            <td id="errorMessageContainerId" class="formErrorMessages" style="display: none;">
            </td>
        </tr>
        <tr>
            <td style="padding: 5px 0px 0px 5px;">
                <div style="position: relative; overflow: hidden; width:300px;">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td style="padding-right: 10px;">
                                <input type="submit" class="defaultText buttonStyle" id="formSubmitBizBreak" value="Submit">
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="BizBreak" id="control_COLUMN80" value="yes">
            </td>
        </tr>
        <input type="hidden" name="formSourceName" value="StandardForm">
        <!-- DO NOT REMOVE HIDDEN FIELD sp_exp -->
        <input type="hidden" name="sp_exp" value="yes">
    </table>
</form>
</div>
<div class="bizBreakThanks" style="color:grey; text-align: center; display: none;">Thank You</div>

{literal}
    <script>
 jQuery('#formSubmitBizBreak').click(function(e){
        //this is where any silverpop info can go
        //triggered when the submit button is hit.
e.preventDefault();
        var url = 'http://417mag.mkt7054.com/Biz417/bizBreak';
        var fn = jQuery('input[name="First Name"]').val();
        var ln = jQuery('input[name="Last Name"]').val();
        var em = jQuery('input[name="Email"').val();
        var subscribe = jQuery('input[name="subscribe"]:checked').val();
        var nl = jQuery('input[name="club417"]:checked').val();
        var sp = 'yes';
        if(em !== ''){
        jQuery.post(url, {sp_exp: sp, 'BizBreak': 'yes', Email: em, 'First Name': fn, 'Last Name': ln, formSourceName:'StandardForm'});
             jQuery('.bizBreakForm').hide();
                jQuery('.bizBreakThanks').fadeIn('slow');
                setTimeout(function() {
                   // jQuery('#theQuestion').val('');
                    jQuery('.bizBreakForm').fadeIn('slow');
                    jQuery('.bizBreakThanks').hide();
                }, 5000);
        }
        
    });
    </script>
{/literal}