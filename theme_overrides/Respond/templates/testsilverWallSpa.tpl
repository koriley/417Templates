<div id="spShopTalk" style="display:none; background-color: white; padding: 20px; margin: auto; text-align: center; font-family: helvetica, sans-serif; font-weight: 100; " >
    <div style="margin-bottom: 20px; ">Enter your email address below to view Spa & Salon Week Menus.</div>
<form action="http://417mag.mkt7054.com/ShopTalkSignUpFunnel/ShopTalkSignUp" id="silverForm" method="post"  pageId="6498509" siteId="225218" parentPageId="6498508" style="    margin-bottom: 0px;" >
    <table  style="margin: auto; text-align: center;"cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td >
                <div style="position: relative; overflow: hidden; " id="container_EMAIL">
                    <div style=" overflow: hidden; ">
                       
                    </div>
                    <input type="text" name="Email" id="control_EMAIL" class="required" label="Email" placeholder="Email Address" class="textInput defaultText" style=" height: 25px; width:300px;">
                </div>
            </td>
        </tr>
        <tr>
            <td >
                <div style="position: relative; overflow: hidden; " id="container_COLUMN24">
                   
                    <div >
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr style="height: 30px">
                                <td><div class="fieldLabel" style=" margin: 5px 3px; ">Do you subscribe to <i>417 Magazine</i>?</div></td>
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
        </tr>
        <tr>
            <td id="errorMessageContainerId" class="formErrorMessages" style="display: none;">
            </td>
        </tr>
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
                <input type="hidden" name="2016SpaAndSalonWeek" id="control_COLUMN62" value="Yes">
            </td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="beauty" id="control_COLUMN49" value="Yes">
            </td>
        </tr>
        <input type="hidden" name="formSourceName" value="StandardForm">
        <!-- DO NOT REMOVE HIDDEN FIELD sp_exp -->
        <input type="hidden" name="sp_exp" value="yes">
    </table>
                                    <button style="width: 100%; background-color: #37b1a5; font-weight: Bold; color:white; font-size: 24; border: 0; height: 30px;  text-align: center;"id="subButton" >ENTER</button>

</form>


 {literal}
        <script>
            jQuery.ajaxSetup({ cache: false }); //this is used to stop browsers from caching load functions.
            /* jQuery('#subButton').click(function(e) {
                e.preventDefault();
                
             // var url = 'http://417mag.mkt7054.com/ShopTalkSignUpFunnel/ShopTalkSignUp';
                var $form = jQuery(this),
                        sp = jQuery('input[name="sp_exp"]').val(),
                        subscribe = jQuery('input[name="PrintSubscriber"]:checked').val(),
                        address = jQuery('input[name="Email"]').val(),
                        st = jQuery('input[name="417 Magazine Shop Talk"]').val(),
                        fname = jQuery('input[name="First Name"]').val(),
                        lname = jQuery('input[name="Last Name"]').val(),
                        beauty = jQuery('input[name="beauty"]').val(),
                        fsn = jQuery('input[name="formSourceName"]').val();
                        var spa = jQuery('input[name="2016SpaAndSalonWeek"]').val();
                        
                // alert(url+' - '+sp+' - '+subscribe+' - '+address+' - '+tt +' - '+fname+' - '+lname);
              jQuery.post(url, {sp_exp: sp, '2016SpaAndSalonWeek':spa, beauty:beauty, formSourceName:fsn, '417 Magazine Shop Talk': st, PrintSubscriber: subscribe, Email: address, 'First Name': fname, 'Last Name': lname});
                jQuery('.spShopTalk_clickRemove').hide();
                jQuery('#spShopTalk_greyOut').remove();
                setCookie("shopTalkSub", address, 365);
                //setLocal("spaWall", address);
              //jQuery('#silverForm').submit();
               
                
            });*/

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
            jQuery('#silverForm').submit(function(e){
                console.log(e); 
                e.preventDefault();
            })
        </script>
    {/literal}
</div> 