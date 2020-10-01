<!--
  ThemeCard Component
  Card outlining a theme
-->
<script lang="ts">
  /** Name of the theme */
  export let theme: string;
  /** When the theme runs */
  export let dates: string;
  /** Description of the theme */
  export let description: string;
  /** Whether the theme is currently active */
  export let active: boolean = false;
</script>

<style lang="scss">
  .card {
    width: 100%;
    max-width: 20rem;
    &:not(.active) {
      opacity: 0.25;
    }
  }

  h2 {
    font-size: var(--scale-5);
  }

  .dates {
    display: block;
    font-size: var(--scale-0);
    color: var(--color-text-secondary);
    margin-top: 0.25rem;
  }
</style>

<div class="card" class:active>
  <h2>{theme}</h2>
  <span class="dates">{dates} Oct</span>
  <p class="description">{description}</p>
</div>
