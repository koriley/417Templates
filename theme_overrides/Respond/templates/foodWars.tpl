

{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
<!DOCTYPE html>
<html lang="en">
<head>
{include file="2014head.tpl"}
{addcss file="foodWars.css" order="998"}
</head>
<body>
{include file="2014Top.tpl"}
<div id="index-container" class="page-container container-fluid">
	{*include file="breadcrumb.tpl"*}
	 <div class="columns-container">
             <div class="row-fluid">
                <div class="respond-container span12">
                	{assign var="respond_containers" value="12,12"}
                        {loadModules position="topleft"}        
                </div>
                
            </div>
        <!--<div class="row-fluid" > 
            <div class=" respond-container span12" style="text-align:center; margin-top:25px;">
                {*assign var="respond_containers" value="12,12"}
                {loadModules position="topcenter"*}
                
            </div>    
        </div>    -->
        <div class="row-fluid" id="topLeftandRight">
                <div class="column-left respond-container span8">
                	{assign var="respond_containers" value="12,7"}
                        {if $pagecontent<>''}{$pagecontent}{/if}
            		{loadModules position="left"}
                        
                </div>
                <div class="column-right respond-container span4" >
                	{assign var="respond_containers" value="12,4"}
            		{loadModules position="right"}
                </div>
            </div>
                
    </div> 
</div>
                
               
                
<div style="text-align:center;" class="hidden-phone">{include file="footboard.tpl"}</div> 
{include file="bottom.tpl"}




</body>
</html>

{if $Page->tags[52]<>'' || $article.tags[52]<>''}
    {literal}
        <script>
            jQuery('#topLeftandRight').hide();
             
                
        </script>
    {/literal}
{/if} 

{literal}
        <script>
            jQuery('.page-container .respond-container').css('border-right', '0px');
         jQuery('.page-container .row-fluid').css('border-bottom', '0px');
            jQuery('.twtr-doc').css("-moz-border-radius","0px");
var myCo;
    function reset(){
        jQuery('div[id^="company"]').each(function(){
             myCo = jQuery(this).attr('data-coname');
             //console.log(myCo);
            jQuery('#'+myCo+'Before').show();
            jQuery('#'+myCo+'After').hide();
            
        });
    }
    
    jQuery('#company1').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company2').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        //console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company3').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company4').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
     jQuery('#company5').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
     jQuery('#company6').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
  jQuery('#company7').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company8').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company9').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname');
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
    jQuery('#company10').click(function(){
        reset();
        myCo = jQuery(this).attr('data-coname'); 
        console.log(myCo);
        jQuery('#'+myCo+'Before').toggle();
        jQuery('#'+myCo+'After').toggle();
        jQuery('#fwClientVote').attr('value', myCo);
    });
   
                
        </script>
    {/literal}

{php}
//DO NOT EDIT THIS TEMPLATE WITHOUT PERMISSION FROM KEVIN ORILEY
  
    require_once 'inc/MCAPI.class.php';
    $apikey="625fe830ae378113cdfa0d1686e685a6-us1";
     $api = new MCAPI($apikey);
     //$groups1 = $api->listInterestGroupings("e24d246ce5");
     //print_r( $groups1);
     $email=$_POST['eAddress'];
     $fname=$_POST['fname'];
     $lname=$_POST['lname'];
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
}
{/php}



