{literal}
    <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'search',
  search: '#10mb',
  interval: 30000,
  title: '10 Most Beautiful',
  subject: '#10mb',
  width: 310,
  height: 300,
  theme: {
    shell: {
      background: '#cfcfd0',
      color: '#000000'
    },
    tweets: {
      background: '#ffffff',
      color: '#444444',
      links: '#1985b5'
    }
  },
  features: {
    scrollbar: false,
    loop: true,
    live: true,
    behavior: 'default'
  }
}).render().start();
</script>
{/literal}
