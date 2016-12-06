<h4>Archives</h4>
<ul>
  {issuelist publicationid=$publication.id}
  {section name=issue loop=$issuelist max=10}
  <li><a href="{$issuelist[issue].url}">{$issuelist[issue].period} {$issuelist[issue].year}</a></li>
  {/section}
</ul>