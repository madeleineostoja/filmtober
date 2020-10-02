<!--
  ExternalLink Component
  Simple external link wrapper
-->
<script lang="ts">
  /** URL to link to */
  export let href: string;

  function trackLink() {
    gtag('event', 'click', {
      event_category: 'outbound',
      event_label: href,
      transport_type: 'beacon'
    });
  }
</script>

<a {href} on:click={trackLink} target="_blank" rel="noopener"><slot /></a>
