<div id="login">
<div class="login1">
  <h2 align="center">Existing Customers</h2><MESSAGES>
    <h3 align="center">Please login to your account:</h3>
    <div class="formline">
      <div class="formtitle">Email Address*</div>
      <div class="formfield">
        <input name="login_email" type="text" label="Email address" id="login_email" value="" onblur="requireValue(this)*checkEmail(this)"/>
      </div>
    </div>
    <div class="formline">
      <div class="formtitle">Password</div>
      <div class="formfield">
        <input name="login_password" type="password" id="login_password" value=""/>
      </div>
    </div>
    <div class="formline">
      <div class="formtitle">&nbsp;</div>
      <div class="formfield"><input name="Next" type="submit" value="Login"/></div>
    </div>
	<div class="formline">
      <div class="formtitle">&nbsp;</div>
      <div class="formfield"><input type=checkbox name=forgotpw value=1>&nbsp;Forgot your password?</div>
    </div>
</div>
<div class="login2">
  <h2 align="center">New Customers</h2>
    <h3 align="center">Create an account!</h3>
    <div align="center">
      <input type=button value="Start &raquo;" onclick="javascript:window.location.href='/media/Add-A-Listing/';">
    </div>
</div>
</div>
