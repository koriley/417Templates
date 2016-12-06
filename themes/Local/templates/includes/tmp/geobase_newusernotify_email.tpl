Thank you for registering with us.

You submitted the following information:

First name: {$user.firstname}
Last name: {$user.lastname}
Email: {$user.email} (this is your login user name)
Date signed on: {$smarty.now|date_format:$config.shortdateformat}

Opt-in? {if $user.optin=='t'}Yes{else}No{/if}

{if count($groups)>0}
You are requesting access to the following:

{section name="x" loop=$groups}
        {$groups[x].title}
{/section}
{/if}
