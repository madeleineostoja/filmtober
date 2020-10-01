---
to: packages/template/src/components/<%= name %>/<%= name %>.stories.ts
---
import <%= name %> from './<%= name %>.svelte';

export default {
  title: 'Components/<%= name %>',
};

export const Default = () => ({
  Component: <%= name %>,
  props: {}
});