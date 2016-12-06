<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{$title} | E-Mail this page to a friend</title>
<meta name="robots" content="noindex" />
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link type="text/css" rel="stylesheet" href="/media/css/emailthispage.css" />
{addjs file="validate.js"}
</head>
<body>
{tracker item="pagetools_email" extra="$pagetype" itemid="$pageid"}
<form action="/core/pagetools.php?url={$page->url}&mode=sendemail" method="post" onsubmit="return autocheck(this);" />
<p>A link to the article, "{$title}," has been emailed to {$toEmailAddress}.</p>
<p class="footer"><a href="#" onclick="window.close();">close this window</a></p>
</body>
</html>
