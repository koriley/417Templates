{literal}
    <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'search',
  search: '#417foodwars',
  interval: 30000,
  title: '417 Magazines Food Wars',
  subject: '#417foodwars',
  width: 300,
  height: 300,
  theme: {
    shell: {
      background: '#7c959e',
      color: '#ffffff'
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