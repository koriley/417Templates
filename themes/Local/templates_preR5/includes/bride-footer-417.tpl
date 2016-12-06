<div id="footer">
<div id="crma-network-container"><div style="padding: 10px; text-align: left;" id="crma-network">
	</div></div>
<p>
<a href="/417-Magazine/">Home</a> | 
<a href="/417-Magazine/417-Dining">417 Dining</a> | 
<a href="/417-Magazine/417-Calendar">417 Calendar</a> | 
<a href="/417-Magazine/People-Pics">People Pics</a> | 
<a href="/417-Magazine/Best-of-417">Best of 417</a> | 
<a href="/417-Magazine/417-Shopping">417 Shopping</a> | 
<a href="/417-Magazine/Store">Store</a> | 
<a href="/417-Magazine/archive-index">Archive</a> | 
<a href="/417-Home">417 Home</a> | 
<a href="/417-Bride">417 Bride</a>
</p>
<p>
{if $Page->user->id==''}<a href="/417-Magazine/My-Account">Log In</a>{else}
<a href="/417-Magazine/My-Account/index.php?action=logout">Log Off</a>{/if} | <a href="/417-Magazine/Store/">Subscribe</a> | <a href="/417-Magazine/My-Account">My Account</a> | <a href="/417-Magazine/Site-Map">Site Map</a> | <a href="/417-Magazine/About-417">About Us</a> | <a href="/417-Magazine/About-417/Contact-Us/">Contact</a> | <a href="http://www.417bride.com/417-Bride/Advertise-with-417-Bride/">Advertise</a>
</p>
<p>Copyright&nbsp;{$smarty.now|date_format:"%Y"}&nbsp; Whitaker Publishing LLC</p>

<p><a href="http://www.godengo.com" class="footer-link"><img width="115" height="17" border="0" src="/images/powered-by.gif" alt="" style="vertical-align: middle;" /></a> | <a href="http://www.godengo.com" class="footer-link">A Godengo Technology</a> | <a href="/417-Magazine/Privacy-Policy/" class="footer-link">Privacy Policy</a></p>

<p>
{globalcontent contentid="18"}

</div>
{include file="xetag.tpl"}
{if $Page->params.noad==''}{if $SERVERINFO.SERVER_PORT==80}{globalcontent contentid="58"}{/if}{/if}
