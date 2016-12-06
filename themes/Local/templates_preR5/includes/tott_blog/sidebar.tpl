<div class="tott blog-rail " style="border-top-left-radius: 0px;	border-top-right-radius: 0px;" >
    <div class="content">
        {assign var=modules value=$blogdata.modules}
        {section name=m loop=$modules}
            {include file="module-"|cat:$modules[m].name|cat:".tpl"}
        {/section}
    </div>
</div>
