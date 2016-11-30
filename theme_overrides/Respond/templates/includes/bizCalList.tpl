{addcss file="bizCalList.css" order="900"}
{calGetLatestEvents calendarid=$calID category=$category max="100" assign="events"}
<div class="calListParent">
    <a href="{$calLink}"><img src="{$headImage}" /></a>
    <!-- <div style="background-color:black;">
         <a href="http://www.417mag.com/417-Magazine/417-Calendar/Calendar/index.php?search=&categoryfilter=Sports"><img alt="family" src="/images/2014/family3.jpg" style="padding-top: 0px;" /></a>
     </div> -->
    <table class="calListTable" width="100%" cellspacing="0" cellpadding="5" border="0" style="" >

        <tbody>
            {section loop=$events name="x" max=$MAX}

                <tr>
                    <!-- <td style="border-bottom:1px solid #cbcbcb;">
                         <a href="{$calLink}/?view=view_event&itm={$events[x].id}">{if $events[x].image<>''}<img width="75" height="75" alt="" src="{$events[x].image}" />{/if}</a>
                     </td>-->
                    <td style="border-bottom:1px solid #cbcbcb;">
                        <div class="calListTitle">
                            <a href="{$calLink}/?view=view_event&itm={$events[x].id}">
                                {$events[x].title}</a>
                        </div>
                        <div class="calListDate">{$events[x].location} on {$events[x].eventdate|dateformat:"%a, %b %e, %Y @ "}{$events[x].starttime}</div>{*the start time is not part of the date, so you cannot pass the time vars to date.*}
                        <div class="calListDesc">
                        {$events[x].description|striptags|truncate:100}
                        </div>
                        
                        
                        <a href="{$calLink}/?view=view_event&itm={$events[x].id}"><div class="calListReadMore">&raquo; Event Details</div></a>
                    </td>
                </tr>
            {/section}
            <tr>
                <td colspan="2" style="text-align:center;">
                    <a href="{$calLink}">&raquo; More Events</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>