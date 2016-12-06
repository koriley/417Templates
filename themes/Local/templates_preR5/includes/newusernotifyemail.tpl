Thank you for registering with us.

You submitted the following information:

First name: {$user.firstname}
Last name: {$user.lastname}
Email: {$user.email} (this is your login user name)
Date signed up: {$smarty.now|date_format:$config.shortdateformat}
Password: {$user.passwordhash}

{if count($groups)>0}
You are requesting access to the following:

{section name="x" loop=$groups}
	{$groups[x].title}
{/section}
{/if}
