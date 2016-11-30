{********************************************************
* store_checkout_ordersummary_inc.tpl
*
* @author Stefan Topfstedt <stefan@godengo.com>
* @copyright Godengo Inc., 2008
* created on 7/16/2008 12:16:29 PM
********************************************************}
<table class="frmTable" cellpadding="0" cellspacing="7" width="100%">
    <tr><th colspan="2">Order information:</th></tr>
            {if $ecom_order.status <> 'TMP'}
        <tr>
            <td width="110" nowrap class="frmLabel">Order ID</td>
            <td class="frmData"><strong>{$ecom_order.id}</strong></td>
        </tr>
    {/if}
    <tr>
        <td nowrap class="frmLabel">Gift order?</td>
        <td class="frmData"><strong>{if $ecom_order.isgift=='t'}Yes{else}No{/if}</td>
    </tr>
    <tr><th colspan="2">Shipping information:</th></tr>
    <tr>
        <td nowrap class="frmLabel">E-Mail Address</td>
        <td class="frmData emailAddress"><strong>{$ecom_order.email}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">First Name</td>
        <td class="frmData fName"><strong>{$ecom_order.firstname}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Last Name</td>
        <td class="frmData lName"><strong>{$ecom_order.lastname}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Phone</td>
        <td class="frmData"><strong>{$ecom_order.phone}</strong>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Address</td>
        <td class="frmData address"><strong>{$ecom_order.address}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Address 2</td>
        <td class="frmData address2"><strong> {$ecom_order.address2}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">City</td>
        <td class="frmData city"><strong>{$ecom_order.city}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Zipcode</td>
        <td class="frmData zip"><strong>{$ecom_order.zipcode}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">State/Province</td>
        <td class="frmData state"><strong>{$ecom_order.state}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Country</td>
        <td class="frmData"><strong>{$ecom_order.country}</strong></td>
    </tr>
    <tr><th colspan="2">Billing information:</th></tr>
    <tr>
        <td nowrap class="frmLabel">Name on Credit Card</td>
        <td class="frmData"><strong>{$ecom_order.ccfname} {$ecom_order.cclname}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Credit Card Number</td>
        <td class="frmData"><strong>{$ecom_order.ccnum|safecc} ({$ecom_order.cctype})</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Expiration date:</td>
        <td><strong>{$ecom_order.ccexpmonth}/{$ecom_order.ccexpyear}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Billing Address</td>
        <td nowrap class="frmData"><strong>{$ecom_order.ccaddress}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Billing City</td>
        <td nowrap class="frmData"><strong>{$ecom_order.cccity}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Billing Zipcode</td>
        <td nowrap class="frmData"><strong>{$ecom_order.cczipcode}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Billing State/Province</td>
        <td nowrap class="frmData"><strong>{$ecom_order.ccstate}</strong></td>
    </tr>
    <tr>
        <td nowrap class="frmLabel">Billing Country</td>
        <td nowrap class="frmData"><strong>{$ecom_order.cccountry}</strong></td>
    </tr>
</table>
<hr size="1" noshade />
<table border="0" cellpadding="2" cellspacing="2" width="100%" class="baskettable">
    <tr>
        <td>Qty</td>
        <td>Product</td>
        <td>Price</td>
        <td>Extended Price</td>
    </tr>
    {section name=p loop=$basket}
        {if $basket[p].productname <> ''}
            <tr>
                <td><strong>{$basket[p].qty}</strong></td>
                <td>{$basket[p].description|default:$basket[p].productname}</td>
                <td>${$basket[p].price|string_format:"%.2f"}</td>
                <td>${$basket[p].extprice|string_format:"%.2f"}</td>
            </tr>
        {/if}
    {/section}
    <tr>
        <td colspan="2">&nbsp;</td>
        <td align="right">Shipping:</td>
        <td><strong>${$ecom_order.shiptotal|string_format:"%.2f"}</strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
        <td align=right>Sales Tax:</td>
        <td><strong>${$ecom_order.taxtotal|string_format:"%.2f"}</strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
        <td align="right">Total:</td>
        <td><strong>${$ecom_order.ordertotal|string_format:"%.2f"}</strong></td>
    </tr>
</table>

{literal}
    <script>
var price = {/literal}{$ecom_order.ordertotal|string_format:"%.2f"}{literal}
        var emailAddress = jQuery('.emailAddress strong').html();
        var fName = jQuery('.fName strong').html();
        var lName = jQuery('.lName strong').html();
        var address = jQuery('.address strong').html();
        var address2 = jQuery('.address2 strong').html();
        var city = jQuery('.city strong').html();
        var state = jQuery('.state strong').html();
        var zip = jQuery('.zip strong').html();
        var sp = 'yes';
        var biz ='';
        var sub ='';
        if(price === 9.99){
         biz ='Yes';
         sub = '';
    }else{
         biz ='';
        sub = 'Yes';
    }
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();

        if (dd < 10) {
            dd = '0' + dd;
        }

        if (mm < 10) {
            mm = '0' + mm;
        }

        today = mm + '/' + dd + '/' + yyyy;
        //alert(emailAddress+" - "+fName+" -"+ lName+" -"+ address+" -"+ address2+" - "+city+" - "+state+" - "+zip+" - "+sp+" - "+today);
    //alert(price);   
    var url = 'https://www.pages03.net/417magazine/SubscriptionConfirmationPage/subConfirmationForm';

        jQuery.post(url, {sp_exp: sp, 'Print Sub Start Date': today, PrintSubscriber: sub, BizSubscriber: biz, 'Last Name': lName, 'First Name': fName, 'Address 2': address2, 'Address 1': address, City: city, State: state, 'Zip Code': zip, Email: emailAddress});



    </script>
{/literal}


{include file="store_checkout_tracking_inc.tpl"}