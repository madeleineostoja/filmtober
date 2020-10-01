---
to: packages/template/src/components/<%= name %>/<%= name %>.svelte
---
<!--
  <%= name %> Component
  <%= description %>
-->

<script lang="ts">
<% props.forEach(prop => { -%>
/** <%= prop.description %> */
export let <%= prop.name %>: <%= prop.type %>;
<% }) -%>
</script>

<style>

</style>


