<!--
  ContentBlock Component
  Two-up block of content with heading
-->
<script lang="ts">
  /** Heading of the content block */
  export let heading: string;
</script>

<style lang="scss">
  .block {
    grid-column: 1 / -1;
    grid-template-columns: repeat(8, 1fr);
    column-gap: var(--content-gutter);
    &:not(:first-child) {
      margin-top: var(--spacing-3);
    }
    @media (min-width: 45em) {
      display: grid;
      &:not(:first-child) {
        margin-top: 56px;
      }
    }
  }

  h3 {
    grid-column: 1 / span 3;
    font-size: var(--scale-3);
    @media (min-width: 35em) {
      font-size: var(--scale-4);
    }
    @media (min-width: 55em) {
      font-size: var(--scale-5);
    }
  }

  .content {
    grid-column: 4 / -1;
    @media (min-width: 45em) {
      & > :global(p:first-child) {
        margin-top: 0;
      }
    }
    & :global(em) {
      text-decoration: underline;
    }
  }
</style>

<div class="block">
  <h3>{heading}</h3>
  <div class="content">
    <slot />
  </div>
</div>
