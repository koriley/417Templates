A new user has signed up for the website.

This user needs to be approved!

Please login to the Rivista Admin website and go to Publishing  -> User Manager
to approve the user.

First name: {$user.firstname}
Last name: {$user.lastname}
Email: {$user.email}
Date signed on: {$smarty.now|date_format:$config.shortdateformat}

<!-- Opt-in? {if $user.optin=='t'}Yes{else}No{/if} -->

{if count($groups)>0}
This user is requesting access to the following:

{section name="x" loop=$groups}
	{$groups[x].title}
{/section}
{/if}
