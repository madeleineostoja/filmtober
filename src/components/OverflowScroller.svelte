<!--
  OverflowScroller Component
  Overflow scrolling style grid
-->
<script lang="ts">
  /** Title of the section */
  export let title: string;
</script>

<style lang="scss">
  .wrapper {
    grid-column: 1 / -1;
    display: grid;
    grid-template-columns: var(--content-grid);
    column-gap: var(--content-gutter);
    margin: var(--spacing-4) 0;
  }

  .outer,
  .titlewrap {
    display: subgrid;
    padding: 0 var(--page-gutter);
  }

  .outer {
    overflow-x: scroll;
    overflow-y: hidden;
    margin-top: 42px;
    -ms-overflow-style: none;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
    &::-webkit-scrollbar {
      display: none;
    }
  }

  h2 {
    color: var(--color-text-secondary);
  }

  .inner,
  h2 {
    grid-column: 1 / -1;
    @media (min-width: 56em) {
      grid-column: 2 / 12;
    }
    @media (min-width: 70em) {
      grid-column: 3 / 11;
    }
  }

  .inner {
    display: flex;
    justify-content: flex-start;
    overflow: visible;
    margin: 0 calc(0px - var(--content-gutter) / 2);
    & > :global(*) {
      flex-shrink: 0;
      padding: 0 calc(var(--content-gutter) / 2);
    }
  }
</style>

<div class="wrapper">
  <div class="titlewrap">
    <h2>{title}</h2>
  </div>
  <div class="outer">
    <div class="inner">
      <slot />
    </div>
  </div>
</div>
