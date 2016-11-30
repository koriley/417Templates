<div class="gatewayAd hidden-phone" style=" display:none;">  

     {literal}
            <script>
                GA_googleFillSlot("rmGateway2");
                
            </script>
            {/literal}

</div>   

<div id="spShopTalk" style="display:none;  padding: 20px; margin: auto; text-align: center; font-family: helvetica, sans-serif; font-weight: 700;" >
    <div class="hidden-phone">
        
        
        {literal}
            <script>
                GA_googleFillSlot("rmGateway");
                
            </script>
            {/literal}
        
    </div>
    <div style="background-color: white; max-width: 600px; padding:10px; ">
        <div style="margin-bottom: 20px; padding-top: 20px; ">Enter your email address below to view Restaurant Month Menus.</div>

        <form method="post" action="" pageId="7108042" siteId="255399" parentPageId="7108040" style="margin-bottom: 0px;" >
            <table  style="margin: auto; text-align: center;"cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td >
                        <div style="position: relative; overflow: hidden; " id="container_EMAIL">
                            <div style=" overflow: hidden; ">

                            </div>
                            <input type="text" name="Email" id="control_EMAIL" class="required" label="Email" placeholder="Email Address" class="textInput defaultText" style=" height: 25px; max-width:600px; ">
                        </div>
                    </td>
                </tr>
               <!-- <tr>
                    <td >
                        <div style="position: relative; overflow: hidden; " id="container_COLUMN24">

                            <div >
                                <table cellspacing="0" cellpadding="10" border="0" style="text-align: center; margin: auto;">
                                    <tr  >
                                        <td><div class="fieldLabel" style=" margin: 5px 3px; "> Do you subscribe to 417 Magazine? </div></td>
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
                    </td>
                </tr>-->
                <tr>
                    <td id="errorMessageContainerId" class="formErrorMessages" style="display: none;">
                    </td>
                </tr>
                <tr><td><input type="checkbox" checked name="417 Magazine Table Talk" id="control_COLUMN10" value="Yes"> Sign me up for Table Talk E-Newsletter! </td></tr>
                <tr>
                    <td >
                        <div style="position: relative; overflow: hidden; ">
                            <table cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td >
                                        <!--<input style="" type="submit" id="subButton" class="defaultText buttonStyle" value="Enter">-->
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="hidden" name="foodDrink" id="control_COLUMN46" value="Yes">
                    </td>
                </tr>
                <input type="hidden" name="formSourceName" value="StandardForm">
                <!-- DO NOT REMOVE HIDDEN FIELD sp_exp -->
                <input type="hidden" name="sp_exp" value="yes">
            </table>
            <button style="border-radius: 5px; margin-bottom: 10px; margin-top: 5px; width: 70%; background-color: black; font-weight: Bold; color:white; font-size: 18px; border: 1px solid grey; text-align: center; line-height:25px;" id="subButton" >SEE THE MENUS NOW!</button>

        </form>


        {literal}
            <script>
                jQuery.ajaxSetup({cache: false}); //this is used to stop browsers from caching load functions.
                jQuery('#subButton').click(function (e) {
                    e.preventDefault();

                    var url = 'http://417mag.mkt7054.com/RestaurantMO/GatewayForm2016';
                    var $form = jQuery(this),
                            sp = jQuery('input[name="sp_exp"]').val(),
                            subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                            address = jQuery('input[name="Email"]').val(),
                            foodDrink = jQuery('input[name="foodDrink"]').val(),
                            fsn = jQuery('input[name="formSourceName"]').val();
                            NLsub = jQuery('input[name="417 Magazine Table Talk"]').val();

                    if (address != "") {
                        // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+tt +' - '+fname+' - '+lname);
                        jQuery.post(url, {sp_exp: sp, '417 Magazine Table Talk':NLsub, foodDrink: foodDrink, formSourceName: fsn, PrintSubscriber: subscribe, Email: address});
                        jQuery('.spShopTalk_clickRemove').hide();
                        jQuery('#spShopTalk_greyOut').remove();
                        setCookie("restaurantSub", address, 365);
                        //setLocal("spaWall", address);
                        //jQuery('#silverForm').submit();

                    }
                });

                /*   jQuery('#subButtonMobile').click(function(e) {
                 // e.preventDefault();
                 //  var url = 'http://417mag.mkt7054.com/ShopTalkSignUpFunnel/ShopTalkSignUp';
                 var $form = jQuery(this),
                 sp = jQuery('input[name="sp_exp"]').val(),
                 subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                 address = jQuery('input[name="Email"]').val(),
                 st = jQuery('input[name="417 Magazine Shop Talk"]').val(),
                 fname = jQuery('input[name="First Name"]').val(),
                 lname = jQuery('input[name="Last Name"]').val();
                 // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+tt);
                 // jQuery.post(url, {sp_exp: sp, '417 Magazine Shop Talk': st, PrintSubscriber: subscribe, Email: address, 'First Name': fname, 'Last Name': lname});
                 jQuery('.spShopTalk_clickRemove').hide();
                 jQuery('#spShopTalk_greyOut').remove();
                 setCookie("shopTalkSub", address, 365);
                 });*/
                var screenwidth = jQuery(window).width();
                if (screenwidth <= 430) {
                    // jQuery('#desktop').remove();
                }
                if (screenwidth >= 430) {
                    //jQuery('#mobile').remove();
                }
            </script>
        {/literal}
    </div> 
</div>