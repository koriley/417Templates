{pagetools}
{if $email_icon||$print_icon||$delicious_icon||$digg_icon||$yahoo_icon}
<div id="pagetools">
	{if $email_icon}<a title="email this page" href="#" onclick="window.open('/core/pagetools.php?url={$SERVERINFO.REQUEST_URI|escape:'url'}&amp;mode=email','emailThisPage','status=no,scrollbars=yes,resizable=yes,width=370,height=500'); return false;" ><img src="/images//pagetools-email.gif" alt="Email this page" />&nbsp;<b>Email this page</b></a>{/if}
	{if $print_icon}<a target="_blank" title="print this page" href="#" onclick="window.open('/core/pagetools.php?url={$SERVERINFO.REQUEST_URI|escape:'url'}&amp;mode=print','printThisPage','status=no,toolbar=yes,menubar=yes,scrollbars=yes,resizable=yes,width=550'); return false;"><img src="/images//pagetools-print.gif" alt="Print this page" />&nbsp;Print this page</a>{/if}
	{if $delicious_icon}<a target="_blank" title="add to del.icio.us" href="http://del.icio.us/post?url={$SERVERINFO.REQUEST_URI|escape:'url'}&amp;title={$publication.title}{if $Page->title} - {$Page->title}{/if}"><img src="/images//pagetools-delicious.gif" alt="del.icio.us" />&nbsp;del.icio.us</a>{/if}
	{if $digg_icon}<a target="_blank" title="digg this page" href="http://digg.com/submit?phase=2&amp;url={$SERVERINFO.REQUEST_URI|escape:'url'}&amp;title={$publication.title|escape:'url'}{if $Page->title}+-+{$Page->title|escape:'url'}{/if}{if $Page->description}&amp;bodytext={$Page->description|escape:'url'}{/if}"><img src="/images//pagetools-digg.gif" alt="Digg this" />&nbsp;digg</a>{/if}
	{if $yahoo_icon}<a target="_blank" title="add to yahoo! myWeb" href="http://myweb2.search.yahoo.com/myresults/bookmarklet?u={$SERVERINFO.REQUEST_URI|escape:'url'}&amp;t={$publication.title|escape:'url'}{if $Page->title} - {$Page->title|escape:'url'}{/if}"><img src="/images//pagetools-yahoo.gif" alt="Yahoo! myWeb" />&nbsp;Yahoo! myWeb</a>{/if}
</div>
{/if}
