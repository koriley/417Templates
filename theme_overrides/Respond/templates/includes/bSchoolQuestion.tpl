<div class="askQuestion dashBottom" style="padding:25px; text-align: center;">
    <div class="questionImage" style="margin-bottom:5px;"><img src="{$header}" /></div>
    <form  class="questionForm" >
        <div><textarea placeholder="Ask a question" class="" id="theQuestion" name="question" style="width:100%;"></textarea></div>

        <div><input placeholder="Your email address" class="" id="theAsker" name="emailAddress" type="text" value="" style="width:100%;" /></div>
        <button id="questionSubmit" class="btn">Submit</button>

    </form></div>
<div id="thanks" class="dashBottom" style="display:none; padding:25px; text-align: center;"></div>
{literal}
    <script>
        var toMail = '{/literal}{$toMail}{literal}';
        var mailSubject = '{/literal}{$subject}{literal}';

        jQuery('#questionSubmit').click(function(event) {
            event.preventDefault();
            var question = jQuery('#theQuestion').attr('value');
            var asker = jQuery('#theAsker').attr('value');
            var sendPath = 'http://www.gonsave.com/email/bSchoolQuestion.php';
            //var toMail = 'kevin@417mag.com';
            //var mailSubject = "A B-School Question";
            if ((question !== '') && (asker !== '')) {
                jQuery.post(sendPath, {to: toMail, fromName: asker, fromEmail: asker, subject: mailSubject, message: question}, "html");

                jQuery('#thanks').html('Thank you for the question:<br/> "' + question + '"');
                jQuery('.askQuestion').hide();
                jQuery('#thanks').fadeIn('slow');
                setTimeout(function() {
                    jQuery('#theQuestion').val('');
                    jQuery('.askQuestion').fadeIn('slow');
                    jQuery('#thanks').hide();
                }, 5000);
            }
        });
    </script>{/literal}