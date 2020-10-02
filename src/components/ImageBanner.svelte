<!--
  ImageBanner Component
  Banner of images
-->
<script lang="ts">
  import { onMount } from 'svelte';
  import Rellax from 'rellax';

  let width: number;
  let speed: number;

  const setParams = (bp: {
    width: number;
    speed: number;
    query: MediaQueryListEvent | MediaQueryList;
  }) => {
    console.log(bp.query.matches);
    if (bp.query.matches) {
      width = bp.width;
      speed = bp.speed;
    }
  };

  const breakpoints = [
    {
      width: 160,
      speed: 2,
      query: matchMedia(`(max-width: 40em)`)
    },
    {
      width: 260,
      speed: 3,
      query: matchMedia(`(min-width: 40em) and (max-width: 60em)`)
    },
    {
      width: 360,
      speed: 3,
      query: matchMedia(`(min-width: 60em)`)
    }
  ];

  breakpoints.forEach((bp) => {
    setParams(bp);
    (bp.query as any).addListener(() => setParams(bp));
  });

  const IMAGES = [
    {
      alt: 'Portrait of a man',
      src:
        'https://images.unsplash.com/photo-1495557367294-fd19a5c20524?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Man walking down street',
      src:
        'https://images.unsplash.com/photo-1495783172747-d5d17dac6d8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Windows',
      src:
        'https://images.unsplash.com/photo-1586966145732-8b681e97c682?ixlib=rb-1.2.1'
    },

    {
      alt: 'Man walking down street',
      src:
        'https://images.unsplash.com/photo-1495783172747-d5d17dac6d8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Woman walking down stairs',
      src:
        'https://images.unsplash.com/photo-1549281899-f75600a24107?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Cyclists',
      src:
        'https://images.unsplash.com/photo-1595169258753-eac3f7b1879f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Woman with child',
      src:
        'https://images.unsplash.com/photo-1593427657652-e49a8fbe1bd7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    },
    {
      alt: 'Pigeons',
      src:
        'https://images.unsplash.com/photo-1598279100660-2d29e5ee129f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'
    }
  ];

  onMount(() => {
    const rellax = new Rellax('.rellax');
  });
</script>

<style>
  .banner {
    grid-column: 1 / -1;
    display: flex;
    justify-content: center;
    margin-top: var(--spacing-4);
  }

  img {
    margin: 0 0.25rem;
    background: var(--color-grey-100);
  }
</style>

<div class="banner">
  {#each IMAGES as { alt, src }, i}
    <img
      {width}
      height={width / (3 / 2)}
      {alt}
      data-rellax-speed={Math.floor(Math.random() * speed)}
      class="rellax"
      src={`${src}&auto=format&ar=3:2&fit=crop&q=80&w=${width}`} />
  {/each}
</div>
