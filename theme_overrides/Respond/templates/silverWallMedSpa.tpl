<div id="gatewayAd" class="desktopForm" style="display:none;">
    <div style="position:relative; width:600px; height: 400px">
        <div style="background-image: url('/images/medicalSpa/2017/MedSpa17_web_gateway.png');  background-repeat: no-repeat; width: 600px; height: 400px;">
            <div style="text-align: center; position: absolute; top: 200px; width:450px;">
                <div><input name="Email" placeholder="Email Address" style="width: 80%; height: 15px;" type="text" /></div>

                <div><input name="First Name" placeholder="First Name" style="width: 80%;height: 15px;" type="text" /></div>

                <div><input name="Last Name" placeholder="Last Name" style="width: 80%;height: 15px;" type="text" /></div>


                <div style="position: relative; overflow: hidden; color: white; margin-top: -5px; " id="container_COLUMN24">

                    <div >
                        <table cellspacing="0" cellpadding="0" border="0" style="text-align: center; margin: auto; color: #91b7d8;">
                            <tr  >
                                <td><div class="fieldLabel" style=" margin: 5px 3px; font-weight: bold; "> Do you subscribe to <em>417 Magazine?</em> </div></td>
                                <td>
                                    <input type="radio" style="margin: 0px 4px 0px 0px; width: 13px;"  name="PrintSubscriber" id="control_COLUMN24_0" label="Do you subscribe to &lt;i&gt;417 Magazine&lt;/i&gt;?" value="Yes">
                                </td>
                                <td class="defaultText" style="padding-right: 10px;">Yes</td>
                                <td>
                                    <input type="radio" style="margin: 0px 4px 0px 0px; width: 13px;"  name="PrintSubscriber" id="control_COLUMN24_1" label="Do you subscribe to &lt;i&gt;417 Magazine&lt;/i&gt;?" value="No">
                                </td>
                                <td class="defaultText" style="padding-right: 10px;">No</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="color: #91b7d8;font-weight: bold;" ><input  style="color: #91b7d8;" type="checkbox" checked name="OptIn" id="control_COLUMN10" value="Yes"> Send me special beauty and shopping offers!</div>

                <div><input id="subButton" name="submit" style="width: 80%;height: 30px;" type="submit" value="Gimme!" /></div>
            </div>
        </div>
    </div>
</div>

<div id="gatewayAd" class="mobileForm" style="display:none;">
    <div style="position:relative; width:350px; height: 373px;">
        <div style="background-image: url('/images/medicalSpa/2017/MedSpa17_web_gateway_mobile.png');  background-repeat: no-repeat; width: 350px; height: 373px;">
            <div style="text-align: center; position: absolute; top: 120px; width: 100%;">
                <div><input name="Email" placeholder="Email Address" style="width: 70%; height: 30px;" type="text" /></div>
                <div style="color: #91b7d8;font-weight: bold;" ><input  style="color: #91b7d8;" type="checkbox" checked name="OptIn" id="control_COLUMN10" value="Yes">Send me special beauty and shopping offers!</div>

                <div><input id="subButton" name="submit" style="width: 70%;height: 30px;" type="submit" value="Gimme!" /></div>
            </div>
        </div>
    </div>
</div>
{literal}
    <script>



        jQuery(document).ready(function () {
            jQuery('#subButton').on('click touchstart', function (e) {
                e.preventDefault();

                var url = 'http://417mag.mkt7054.com/MedSpaMonth/medSpaMonth2017';
                var $form = jQuery(this),
                        sp = "Yes",
                        address = jQuery('input[name="Email"]').val(),
                        fname = jQuery('input[name="First Name"]').val(),
                        lname = jQuery('input[name="Last Name"]').val();
                subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                        optin = jQuery('input[name="OptIn"]').val();
                        

                if (address != '') {
                    //alert('test');
                    // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+tt +' - '+fname+' - '+lname);
                    jQuery.post(url, {sp_exp: sp,  Email: address, 'First Name': fname, 'Last Name': lname, 'PrintSubscriber': subscribe, 'beauty': optin, '417 Magazine Shop Talk':optin });
                    jQuery('.gatewayAd_clickRemove').hide();
                    jQuery('#gatewayAd_greyOut').remove();
                    setCookie("medSpa", address, 365);
                }

            });
        });
    </script>{/literal}