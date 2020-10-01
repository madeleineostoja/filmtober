<!--
  ContentGrid Component
  Simple content grid wrapper
-->
<style>
  div {
    display: grid;
    grid-column: 2 / 3;
    grid-template-columns: var(--content-grid);
    column-gap: var(--content-gutter);
  }
</style>

<div>
  <slot />
</div>
