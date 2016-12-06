<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{$page->title} | E-Mail this page to a friend</title>
<meta name="robots" content="noindex" />
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link type="text/css" rel="stylesheet" href="/media/css/emailthispage.css" />
{addjs file="validate.js"}
</head>
<body>
<form action="/core/pagetools.php?url={$page->url}&mode=sendemail" method="post" onSubmit="return autocheck(this);">
  <input type="hidden" name="pageurl" value="{$page->url}" />
  <input type="hidden" name="title" value="{$page->title}" />
  <input type="hidden" name="pageid" value="{$page->id}" />
  <input type="hidden" name="pagetype" value="{$pagetype}" />
  <input type="hidden" name="publication" value="{$publication.title}" />
  <input type="hidden" name="description" value="{$page->description}" />
  <p><em>Send the page:</em></p>
  <h1>{$page->title}</h1>
  <table cellspacing="0" cellpadding="5" border="0">
    <tr>
      <td colspan="3"><h4>To:</h4></th>
    </tr>
    <tr class="information">
      <td>E-mail address:</td>
      <td class="error">*</td>
      <td><input type="text" maxlength="120" name="toEmailAddress" label="To email address" value="" onBlur="requireValue(this)*checkEmail(this);" />
      </td>
    </tr>
    <tr>
      <td colspan="3"><h4>Your Details:</h4></th>
    </tr>
    <tr class="information">
      <td>Your name: </td>
      <td class="error">*</td>
      <td><input type="text" maxlength="120" name="fromName" label="Your name" value="" onBlur="requireValue(this);" />
      </td>
    </tr>
    <tr class="information">
      <td>E-mail address: </td>
      <td class="error">*</td>
      <td class="right"><input type="text" maxlength="120" name="fromEmailAddress" label="Your email address" value="" onBlur="requireValue(this)*checkEmail(this);" />
      </td>
    </tr>
    <tr class="information">
      <td valign="top"><p>Message:<br>
          (maximum message length of 1,000 characters)</p></td>
      <td>&nbsp;</td>
      <td valign="top"><textarea cols="15" rows="5" name="message"></textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2"></td>
      <td><input class="button" type="submit" value="send" />
      </td>
    </tr>
  </table>
</form><p class="error">* Information Required</p>
<p class="footer">The details you provide on this page will not be used to send unsolicited e-mail, and will not be sold to a 3rd party. <a href="{$publication.url}Privacy-Policy/" target="_blank">Privacy Statement</a></p>
</body>
</html>
