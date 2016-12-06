
                  <table width="100%" class="signup-table">
                    <tr align="center">
                      <td class="step" width="50%">Existing Customers</td>
                      <td class="step" width="50%">New Customers</td>
                    </tr>
                    <tr>
                    <td width="50%" valign="top" align="center">
                    <p>Please login to your account:</p>
						<table border="0" width="100%" id="login-table">
						  <tr>
						<td align="right">Email Address* </td>
						<td><input name="login_email" type="text" id="login_email" size="30"  value="" onblur="requireValue(this)*checkEmail(this)"/></td>
						  </tr>
						  <tr>
						<td align="right">Password*</td>
						<td><input name="login_password" type="password" id="login_password" size="30"  value="" onblur="requireValue(this)"/></td>
						  </tr>
						  <tr>
						<td align="right" nowrap="nowrap">&nbsp;</td>
						<td><input name="Next" type="submit" value="Login"/>&nbsp;<input type="checkbox" name="forgotpw" value="1">Forgot your password?</td>
						  </tr>
						  </table></form>
					</td>
					<td width="50%" valign="top" align="center" valign="middle">
                    <p class="headline">&nbsp;</p><p>
                    <a href="{pageurl signupstep=2}">Click here to create an account</a>
					</p>
					</td>
                    </tr>
                  </table>