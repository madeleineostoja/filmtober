<script lang="ts">
  import ContentBlock from './components/ContentBlock.svelte';
  import ContentGrid from './components/ContentGrid.svelte';
  import ExternalLink from './components/ExternalLink.svelte';
  import Hero from './components/Hero.svelte';
  import ImageBanner from './components/ImageBanner.svelte';
  import InstagramGallery from './components/InstagramGallery.svelte';
  import OverflowScroller from './components/OverflowScroller.svelte';
  import Section from './components/Section.svelte';
  import ThemeCard from './components/ThemeCard.svelte';
  import './styles';
</script>

<style>
  main {
    position: relative;
    display: grid;
    grid-template-columns: var(--page-grid);
    padding: var(--spacing-3) 0;
    overflow: hidden;
  }
</style>

<main>
  <!-- <span class="attribution">A project by
    <ExternalLink href="https://www.instagram.com/seaneking/">@seaneking</ExternalLink>
  </span> -->
  <ContentGrid>
    <!-- Hero -->
    <Hero heading="#FILMTOBER" description="Filmtober is a celebration of film photography, and a challenge to capture photographs on film every day during October" />
  </ContentGrid>

  <ImageBanner />

  <ContentGrid>
    <!-- Basics -->
    <Section first title="The Basics">
      <ContentBlock heading="Take and post a photo daily">
        <p>Take a photo every day during October, and post a photo taken during the last 2 weeks. This means you can start with photos taken in September.</p>
        <p><em>Half marathon:</em> Take a photo every 2nd day, and post from the last month.</p>
      </ContentBlock>

      <ContentBlock heading="Tag and share your photos">
        <p>Tag your posts with <ExternalLink href="https://www.instagram.com/explore/tags/filmtober/">#filmtober</ExternalLink> and <ExternalLink href="https://www.instagram.com/explore/tags/filmtober2020/">#filmtober2020</ExternalLink> so we can follow along on social media. Include the film and camera/lens you shot with as well.</p>
        <p><em>Bonus points:</em> Tag your photo with <ExternalLink href="https://www.instagram.com/explore/tags/filmtober_photo/">#filmtober_photo</ExternalLink> and it will be featured here on the official site.</p>
      </ContentBlock>

      <ContentBlock heading="Use themes for inspiration">
        <p>Use the weekly themes posted below for inspiration for your photos and submissions. Themes are additional creative constraints and entirely optional.</p>
      </ContentBlock>
    </Section>

    <!-- Rules -->
    <Section title="The Rules">
      <ContentBlock heading="Film only">
        <p>Any format goes — 35mm, 120, 4x5, polaroid — as long as it’s analog. If you home develop and/or scan, mention it for extra brownie points.</p>
      </ContentBlock>

      <ContentBlock heading="Rules are guidelines">
        <p>Other than shooting on film, every rule of Filmtober is a guideline designed to get you shooting more. If they don't fit your style you can bend them.</p>
      </ContentBlock>
    </Section>
  </ContentGrid>

  <!-- Themes -->
  <OverflowScroller title="The Themes">
      <ThemeCard
        theme="Light"
        dates="1st - 11th"
        description="Whether available or studio, show us how you can make light a key part of your composition." />
      <ThemeCard
        active
        theme="People"
        dates="12th - 18th"
        description="From formal portraiture to candid street photography, capture the beautiful humans around you for a week." />
      <ThemeCard
        theme="Minimalism"
        dates="19th - 25th"
        description="Do more with less. Challenge yourself to communicate with simple forms, leaning towards the abstract." />
      <ThemeCard
        theme="Open Theme"
        dates="26th - 31st"
        description="For last week of Filmtober, there are no rules! Shoot anything you like, in any way you like, and let your creaive mind run free." />
    </OverflowScroller>

  <!-- Photos -->
  <ContentGrid>
  <Section title="The Photos" fullwidth>
    <div class="elfsight-app-712c7064-0d50-4c48-8bc4-cecb802b1303" />
  </Section>
  </ContentGrid>
</main>
