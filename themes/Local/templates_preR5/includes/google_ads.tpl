{if $SERVERINFO.SERVER_PORT==80}

{assign var="googleAdManagerID" value="PUT GOOGLE AD MANAGER ID HERE"}

<!-- Google Ad Manager -->
<script type="text/javascript" src="http://partner.googleadservices.com/gampad/google_service.js">
</script>
<script type="text/javascript">
  GS_googleAddAdSenseService("{$googleAdManagerID}");
  GS_googleEnableAllServices();
</script>
<script type="text/javascript">
var googleArray = adPositions.split(',');
for(i=0;i<googleArray.length;i++) {ldelim}
  GA_googleAddSlot("{$googleAdManagerID}", googleArray[i]);
{rdelim}
</script>
<script type="text/javascript">
  GA_googleFetchAds();
</script>
<!-- Google Ad Manager -->
{/if}

