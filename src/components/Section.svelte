<!--
  Section Component
  Section of content
-->
<script lang="ts">
  export let title: string;
  export let fullwidth: boolean = false;
  export let first: boolean = false;
</script>

<style lang="scss">
  .section {
    margin: var(--spacing-2) 0;
    grid-column: 1 / -1;
    @media (min-width: 45em) {
      margin: var(--spacing-3) 0;
    }
    @media (min-width: 60em) {
      margin: var(--spacing-4) 0;
      grid-column: 2 / 12;
    }
    @media (min-width: 70em) {
      grid-column: 3 / 11;
    }
  }

  .section.fullwidth {
    grid-column: 1 / -1 !important;
  }

  .section.first {
    margin-top: var(--spacing-4);
    @media (min-width: 45em) {
      margin-top: var(--spacing-5);
    }
    @media (min-width: 60em) {
      margin-top: var(--spacing-6);
    }
  }

  h2 {
    color: var(--color-text-secondary);
  }

  .content {
    margin-top: var(--spacing-2);
    @media (min-width: 45em) {
      margin-top: 42px;
    }
  }
</style>

<section class="section" class:fullwidth class:first>
  <h2>{title}</h2>
  <div class="content">
    <slot />
  </div>
</section>
