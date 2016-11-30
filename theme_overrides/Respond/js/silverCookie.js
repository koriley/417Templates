/* 
 * This is a set cookie function 'class'.
 * This is created for silver pop, but is generic enough that we can set others cookies too
 * Check cookie is an example of how it works.
 */

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/";

}
//setting a value in local storage
function setLocal(key, value) {
    localStorage.setItem(key, value);
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1);
        if (c.indexOf(name) == 0)
            return c.substring(name.length, c.length);
    }
    return "";
}

function getLocal(key) {
    localStorage.getItem(key);
}

function checkCookie() {
    var user = getCookie("username");
    if (user != "") {
        alert("Welcome again " + user);
    } else {
        user = prompt("Please enter your name:", "");
        if (user != "" && user != null) {
            setCookie("username", user, 365);
        }
    }
}

function silverPop1() {
    var user = getCookie("magUser");
    if (user != "") {
        //setCookie("magUser", user, 365);
        koPopUp('silverPop1'); //remove this after testing
    } else {
        koPopUp('silverPop1');
    }
}

//newsletter cookies
function tableTalkCookie() {
    var user = getCookie("tableTalkSub");
    if (user != "") {
        //setCookie("magUser", user, 365);
        // koPopUp('silverPop1'); //remove this after testing
    } else {
        koPopUp('spTableTalk');
    }

}

function shopTalkCookie() {
    var user = getCookie("shopTalkSub");
    //alert(user);
    if (user !== "") {
        // alert(user);
        //setCookie("magUser", user, 365);
        // koPopUp('silverPop1'); //remove this after testing
    } else {
        koPopUp('spShopTalk', 'no'); //the second argument sets if it can be close.
    }

}

function testshopTalkCookie() {
    var user = getCookie("testshopTalkSub");
    //alert(user);
    if (user !== "") {
        // alert(user);
        //setCookie("magUser", user, 365);
        // koPopUp('silverPop1'); //remove this after testing
    } else {
        koPopUp('spShopTalk', 'no'); //the second argument sets if it can be close.
    }

}

function restaurantCookie() {
    var user = getCookie("restaurantSub");
    //alert(user);
    if (user !== "") {
        // alert(user);
        //setCookie("magUser", user, 365);
        jQuery('#spShopTalk').remove();
        koPopUp('gatewayAd');
    } else {
        jQuery('.gatewayAd').remove();
        koPopUp('spShopTalk', 'no'); //the second argument sets if it can be close. //we are calling a 'spShopTalk' div cause lazy.
    }

}

function boutiqueCookie() {
    var user = getCookie("boutiqueSub");
    //alert(user);
    if (user !== "") {
        // alert(user);
        //setCookie("magUser", user, 365);

    } else {
        var screenWidth = jQuery(window).width();
        if (screenWidth <= 600) {
            jQuery('.desktopForm').remove();
            jQuery(window).load(function () {
                koPopUp('gatewayAd', 'no');
            });
        }
        if (screenWidth >= 600) {
            jQuery('.mobileForm').remove();
            jQuery(window).load(function () {
                koPopUp('gatewayAd', 'no');
            });
        }
        //koPopUp('spShopTalk', 'no'); //the second argument sets if it can be close. //we are calling a 'spShopTalk' div cause lazy.
    }

}

function medSpaCookie() {
    var user = getCookie("medSpa");
    //alert(user);
    if (user !== "") {
        // alert(user);
        //setCookie("magUser", user, 365);

    } else {
        var screenWidth = jQuery(window).width();
        if (screenWidth <= 600) {
            jQuery('.desktopForm').remove();
            jQuery(window).load(function () {
                koPopUp('gatewayAd', 'no');
            });
        }
        if (screenWidth >= 600) {
            jQuery('.mobileForm').remove();
            jQuery(window).load(function () {
                koPopUp('gatewayAd', 'no');
            });
        }
        //koPopUp('spShopTalk', 'no'); //the second argument sets if it can be close. //we are calling a 'spShopTalk' div cause lazy.
    }

}


