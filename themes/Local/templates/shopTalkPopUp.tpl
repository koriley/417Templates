   



<html>
    <head>
        {literal}
        <style>
        a:link {color:#fa007c;}
        a:visited {color:#fa007c;}
        a:hover {color:#fa007c;}
        a:active {color:#fa007c;}
        </style>
        {/literal}
    {literal}
    <script>
        var errorText;
        function errorCode(errorText){
           //document.getElementById("shopForm").style.visibility="hidden";
           document.getElementById('mother').innerHTML=errorText;   
        }    
    </script>
{/literal} 
    </head>
    <body style="background-color:#000;">
        <div  style="background-image:url('http://www.417mag.com/images/10%20beautiful/2014/shopTalkPopUp.jpg'); width:600px; height:400px; position:relative; top:0; left:0;">
            <form method="post" name="newsletter signup" id="shopForm">
                <div style="position:absolute; bottom:0px; left:5px; width:300px; height:210px; color:#fff;" id="mother">
                    <input name="shop_talk" type="hidden" value="on" />
                    <input mandatory="Y" name="fName" size="15" type="text" placeholder="First Name" style="margin:5px; width:100%; height:30px;" /><br/>
                    <input mandatory="Y" name="lName" size="15" type="text" placeholder="Last Name" style="margin:5px; width:100%; height:30px;" /><br/>
                    <input mandatory="Y" name="eAddress" size="15" type="text" placeholder="Email" style="margin:5px; width:100%; height:30px;" /><br/> 
                    <div style="text-align:center;"><input name="Submit" type="submit" value="Gimme!" style="margin:auto; width:100px;" />
                    </div>
                </div>
            </form>
        </div>

    </body></html>
{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['eAddress'];
     $fname=$_POST['fName'];
     $lname=$_POST['lName'];
     $groups = array();
     $club417 = $_POST['promotions'];
     $bestOfTheWeek = $_POST['417_best_of_the_week'];
     $tableTalk = $_POST['table_talk'];
     $rightAtHome = $_POST['right_at_home'];
     $shopTalk = $_POST['shop_talk'];
     $brideBuzz = $_POST['417_bride_newsletter'];
     $weekendPass = $_POST['weekend_pass'];


   if($email != ''){
     if($club417 == 'on'){ array_push($groups, array('name'=>'417 Magazine Club 417', 'groups'=>'Club 417'));}
     if($bestOfTheWeek == 'on'){ array_push($groups, array('name'=>'417 Magazine Best of the Week', 'groups'=>'Best of the Week'));}
     if($tableTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Table Talk', 'groups'=>'Table Talk'));}
     if($rightAtHome == 'on'){ array_push($groups, array('name'=>'417 Magazine Right at Home', 'groups'=>'Right at Home'));}
     if($shopTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Shop Talk', 'groups'=>'Shop Talk'));}
     if($brideBuzz == 'on'){ array_push($groups, array('name'=>'417 Magazine Bridal Buzz', 'groups'=>'Bridal Buzz'));}
     if($weekendPass == 'on'){ array_push($groups, array('name'=>'417 Magazine Weekend Pass', 'groups'=>'Weekend Pass '));}
     
     
     $merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'GROUPINGS'=>$groups);
    

     $retval = $api->listSubscribe("e24d246ce5", $email, $merge_vars );
if ($api->errorCode){
echo "<script> errorCode('".$api->errorMessage."');</script>";
} else {
echo "<script> errorCode('Subscribed - look for the confirmation email!');</script>";
   }
 }
{/php}