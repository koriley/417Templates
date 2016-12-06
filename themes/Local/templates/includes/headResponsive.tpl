<meta charset="utf-8">
<title><PAGETITLE></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="description" content="{$Page->description|default:$issue.description|default:$publication.description}">
<meta name="keywords" content="{$Page->keywords|default:$issue.keywords|default:$publication.keywords}">
<link rel="shortcut icon" href="{$publication.params.faviconpath}">
{* disabling these for now - we need to look into how we want to deal with these in the future *}
{*
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="/ico/apple-touch-icon-57-precomposed.png">
*}
{* styles.less should always be the first less file since it defines bootstrap *}
{addless file="style.less" order="1" localoverride=false}
{addcss file="moz.css" order="100"}
{addcss file="ie9.css" order="100" IE="IE 9"}
{addcss file="ie8.css" order="100" IE="lt IE 9"}
{* custom_styles.less should be the final less so that it can override styles defined earlier *}
{addless file="custom_styles.less" order="99999999" localoverride=true}

{* javascript files *}
{addjs file="html5_shiv.js" IE="lt IE 9" order=0 position="header"}  {* this MUST be loaded in the header *}
{addjs file="respond.js"  IE="lt IE 9" order=0 position="footer"}
{addjs file="windowResizeResponder.js" order=0 position="header"}  {* load in header to ensure that it loads before other javascript *}
{addjs file="moduleEventExchange.js" order=0 position="header"}  {* load in header to ensure that it loads before other javascript *}
{addjs file="base.js" position="footer"}
{addjs file="photoContainerScaler.js" position="footer"}
{addjs file="validate.js" position="footer"}
{addjs file="rivista.js" position="footer"}
{addjs file="xml.js" position="footer"}
{addjs file="photoCaption.class.js" position="footer"}
{addjs file="bootstrap.min.js" order=50 position="footer"}
{addjs file="bootstrap-overrides.js" order=51 position="footer"}
{addjs file="matchmedia.js" position="footer"}
{addjs file="picturefill.js" position="footer"}
{addjs file="debugConsole.js" position="footer"}