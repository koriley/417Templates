<!--<div class="def"></div>-->
<div class="instagram" id="cell"></div><br/>


 <script>
    
     {literal}
     
         var seed= Math.floor((Math.random()*100)+1); 
         var hash = "{/literal}{$hash}{literal}";
         var num = "{/literal}{$numShown}{literal}";
         var size = "{/literal}{$size}{literal}";
$(function() {
  var clientId = "7183968862b543b28120a8e332a59fb5";
  $(".instagram").instagram({
      
      hash: ''+hash+'',
      show: num,
      image_size : ''+size+'',
      clientId: clientId
  });
});
$(".def").html("#"+hash+"");
    
 {/literal}       
</script>
