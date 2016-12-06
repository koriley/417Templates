{if $cssname=='mn'}
<div id="greybox">
  <div class="header-box" >
    <div class="headline">
      <h2>Poll stop</h2>
    </div>
  </div>
  <div class="content-box">
<table border="0" width="100%" cellpadding="10" cellspacing="0" class="poll" >
  <tr>
    <td><form method="post" name="survey">
        {section name=survey loop=$surveylist} {strip} <h3 style="margin-top:0px; margin-bottom:0px;">{$surveylist[survey].title}</h3>
		<table border="0" cellpadding="0" cellspacing="5">
               <tr>
			   <td colspan="2"> {section name=questions loop=$surveylist[survey].questions}<h4>{$surveylist[survey].questions[questions].question}</h4></td>
			   </tr>
          {section name=choices loop=$surveylist[survey].questions[questions].answers}<tr><td valign="top" width="10">
          <input type="radio" name="answer[q{$surveylist[survey].questions[questions].id}]" value="{$surveylist[survey].questions[questions].answers[choices].id}" /></td>
<td><span style="line-height:normal;">{$surveylist[survey].questions[questions].answers[choices].answer}</span></td>
			</tr>
          {/section}{/section}{/strip}{/section}
		  <tr><td colspan="2">
        <input type="submit" value="Submit" /></td>
		</tr>
		<tr><td colspan="2">
        <a href="{pageurl view='results'}">Show results</a></td>
  </tr>
  </table>
  </form>
  </td>
  </tr>
</table>
</div>
</div>
{else}

<div class="beigebox">
  
  <div class="content-box">
<table border="0" width="100%" cellpadding="10" cellspacing="0" class="poll" >
  <tr>
    <td><form method="post" name="survey">
        {section name=survey loop=$surveylist} {strip} <h3 style="margin-top:0px; margin-bottom:0px;">{$surveylist[survey].title}</h3>
		
		<table border="0" cellpadding="0" cellspacing="5" class="poll{$surveylist}">
				
		
               <tr>
			   <td colspan="3" > {section name=questions loop=$surveylist[survey].questions}<h4 style="color:#fff;">{$surveylist[survey].questions[questions].question}</h4></td>
		</tr>
          {section name=choices loop=$surveylist[survey].questions[questions].answers}<tr><td style="padding-left:40px;"></td><td valign="top" width="5" >
          <input style="text-align:right;" type="radio" name="answer[q{$surveylist[survey].questions[questions].id}]" value="{$surveylist[survey].questions[questions].answers[choices].id}" /></td>
<td><span style="line-height:normal;">{$surveylist[survey].questions[questions].answers[choices].answer}</span></td>
			</tr>
		<tr><td colspan="3" class="spacer"></td><tr>
          {/section}{/section}{/strip}{/section}
		  <tr><td colspan="3">
        <input type="submit" value="Submit" /></td>
		</tr>
		<tr><td colspan="3">
        <a href="{pageurl view='results'}">Show results</a></td>
  </tr>
  </table>
  </form>
  </td>
  </tr>
</table>
</div>
</div>{/if}