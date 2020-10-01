---
to: src/components/<%= name %>.svelte
---
<!--
  <%= name %> Component
  <%= description %>
-->
<script lang="ts">
<% props && props.forEach(prop => { -%>
  /** <%= prop.description %> */
  export let <%= prop.name %>: <%= prop.type %>;
<% }) -%>
</script>

<style>

</style>


