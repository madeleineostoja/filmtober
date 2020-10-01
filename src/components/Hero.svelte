<!--
  Hero Component
  Hero heading for the page
-->
<script lang="ts">
  /** Heading */
  export let heading: string;
  /** Description */
  export let description: string;
</script>

<style lang="scss">
  .hero {
    text-align: center;
    grid-column: 2 / 12;
    @media (min-width: 50em) {
      grid-column: 3 / 11;
    }
    @media (min-width: 62em) {
      grid-column: 4 / 10;
    }
  }

  h1 {
    font-size: var(--scale-5);
    font-weight: var(--font-weight-bold);
    letter-spacing: var(--tracking-00);
    @media (min-width: 35em) {
      font-size: var(--scale-6);
    }
    @media (min-width: 50em) {
      font-size: var(--scale-7);
    }
  }

  p {
    font-weight: 500;
    color: var(--color-grey-700);
    @media (max-width: 35em) {
      font-size: var(--scale-0);
    }
  }
</style>

<div class="hero">
  <h1>{heading}</h1>
  <p>{description}</p>
</div>
