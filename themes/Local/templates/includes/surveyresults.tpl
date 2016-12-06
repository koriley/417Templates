{if $cssname=='mn'}
<div id="greybox">
  <div class="header-box">
    <div class="headline">
      <h2>Poll</h2>
    </div>
  </div>
  <div class="content-box">
  <h3 style="margin-top:0px; margin-bottom:0px;">{$survey.title}</h3>
  <h4>{$survey.params.responseheading}</h4>
  {section name=x loop=$results}
      {strip}
      <table border="0" cellpadding="2" cellspacing="2">
        <tr>
          <td class="headline" colspan="2">{$results[x].question}</td>
        </tr>
        {section name=y loop=$results[x].answers}
        <tr>
          <td><h5 style="margin:0;">{$results[x].answers[y].answer}</h5></td>
        </tr>
        <tr>
          <td valign="top"><table border="0" cellpadding="0" cellspacing="0" width="{$results[x].answers[y].width}">
              <tr>
                <td height="23"><img src="{$images}/poll-result-left-end.gif" width="16" height="23" alt="" /></td>
                <td height="23"><img src="{$images}/poll-result-bg.gif" width="{$results[x].answers[y].width}" height="23" alt="{$results[x].answers[y].responses} Responses" /></td>
                <td height="23"><img src="{$images}/poll-result-right-end.gif" width="16" height="23" alt="" /></td>
                <td valign="top">&nbsp;{math equation="(a / t) * 100" a=$results[x].answers[y].responses t=$survey.responses format="%.0f"}%</td>
              </tr>
            </table></td>
        </tr>
        {/section}
      </table>
      {/strip}
      {/section} 
  </div>
</div>
{else}
<div>
  <div class="header-box">
    <div class="headline">
     <!-- <img src="/images/poll.gif" alt="Poll" /> -->
    </div>
  </div>
  <div class="content-box" style="font-family:arial;">
  <h3 style="margin-top:0px; margin-bottom:0px;">{$survey.title}</h3>
  <h4>{$survey.params.responseheading}</h4>
  {section name=x loop=$results}
      {strip}
      <table border="0" cellpadding="2" cellspacing="2">
        <tr>
          <td class="headline" colspan="2" >{$results[x].question}</td>
        </tr>
        {section name=y loop=$results[x].answers}
        <tr>
          <td><h5 style="margin:0; font-family:arial;">{$results[x].answers[y].answer}</h5></td>
        </tr>
        <tr>
          <td valign="top"><table border="0" cellpadding="0" cellspacing="0" width="{$results[x].answers[y].width}">
              <tr>
                <td height="23"><img src="{$images}/poll-result-left-end.gif" width="16" height="23" alt="" /></td>
                <td height="23"><img src="{$images}/poll-result-bg.gif" width="{$results[x].answers[y].width}" height="23" alt="{$results[x].answers[y].responses} Responses" /></td>
                <td height="23"><img src="{$images}/poll-result-right-end.gif" width="16" height="23" alt="" /></td>
                <td valign="top">&nbsp;{math equation="(a / t) * 100" a=$results[x].answers[y].responses t=$survey.responses format="%.0f"}%</td>
              </tr>
            </table></td>
        </tr>
        {/section}
      </table>
      {/strip}
      {/section} 
  </div>
</div>
{/if}