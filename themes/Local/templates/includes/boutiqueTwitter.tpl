{literal}
    <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'search',
  search: '#417BoutiqueWeek',
  interval: 30000,
  title: '417 Magazines Boutique Week',
  subject: '#417BoutiqueWeek',
  width: 353,
  height: 300,
  theme: {
    shell: {
      background: '#f29fb7',
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