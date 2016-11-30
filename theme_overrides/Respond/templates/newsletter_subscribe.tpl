

{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
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
<body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
{include file="2014Top.tpl"}
<div id="index-container" class="page-container container-fluid">
	{include file="breadcrumb.tpl"}
	 <div class="columns-container">
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span8">
                	{assign var="respond_containers" value="12,8"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
            		{loadModules position="middle"}<div id='mother'></div>
                        
                </div>
                <div class="column-middle respond-container span4">
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                </div>
            </div>
                
    </div> 
</div>
{include file="bottom.tpl"}
</body>
</html>


{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    
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
       require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
       //echo 'email in if '.$email;
     if($club417 == 'on'){ array_push($groups, array('name'=>'417 Magazine Club 417', 'groups'=>'Club 417'));}
     if($bestOfTheWeek == 'on'){ array_push($groups, array('name'=>'417 Magazine Best of the Week', 'groups'=>'Best of the Week'));}
     if($tableTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Table Talk', 'groups'=>'Table Talk'));}
     if($rightAtHome == 'on'){ array_push($groups, array('name'=>'417 Magazine Right at Home', 'groups'=>'Right at Home'));}
     if($shopTalk == 'on'){ array_push($groups, array('name'=>'417 Magazine Shop Talk', 'groups'=>'Shop Talk'));}
     if($brideBuzz == 'on'){ array_push($groups, array('name'=>'417 Magazine Bridal Buzz', 'groups'=>'Bridal Buzz'));}
     if($weekendPass == 'on'){ array_push($groups, array('name'=>'417 Magazine Weekend Pass', 'groups'=>'Weekend Pass '));}
     
     //print_r($groups);
     $merge_vars = array('FNAME'=>$fname, 'LNAME'=>$lname, 'GROUPINGS'=>$groups);
    

     $retval = $api->listSubscribe("e24d246ce5", $email, $merge_vars );
if ($api->errorCode){
echo "<script> errorCode('".$api->errorMessage."');</script>";
} else {
echo "<script> errorCode('Subscribed - look for the confirmation email!');</script>";
   }
 }
{/php}
