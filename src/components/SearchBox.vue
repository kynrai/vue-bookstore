<template>
  <div>
    <input type="text" @keyup="searchBooks" v-model="search" placeholder="Search">
  </div>
</template>

<script>
import { bus } from "../main";

export default {
  name: "SearchBox",
  data() {
    return {
      search: ""
    };
  },
  methods: {
    searchBooks() {
      bus.$emit("searchBooks", this.search);
    }
  }
};
</script>

<style scoped>
</style>
