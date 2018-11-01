<template>
  <div id="app">
    <store-header/>
    <books/>
  </div>
</template>

<script>
import Header from "./components/BookstoreHeader.vue";
import Books from "./components/Books.vue";

export default {
  name: "app",
  components: {
    books: Books,
    "store-header": Header
  }
};
</script>

<style>
</style>
