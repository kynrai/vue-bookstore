<template>
  <div>
    <div class="grid-container">
      <div class="grid-item" v-for="(book) in filteredBooks" :key="book.title">
        <Book :Book="book"/>
      </div>
    </div>
  </div>
</template>

<script>
import { bus } from "../main";
import Book from "./Book.vue";

export default {
  name: "Books",
  components: {
    Book
  },
  data() {
    return {
      books: [],
      search: ""
    };
  },
  created() {
    fetch("https://api.myjson.com/bins/zyv02")
      .then(data => data.json())
      .then(response => {
        this.books = response.books;
      });
    bus.$on("searchBooks", data => {
      this.search = data;
    });
  },
  computed: {
    filteredBooks() {
      var books = this.books.filter(book => {
        return book.title.toLowerCase().includes(this.search.toLowerCase());
      });
      return books;
    }
  }
};
</script>

<style scoped>
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  margin: 5% 20%;
}
.grid-item {
  max-width: 100%;
  max-height: 100%;
  margin: 2px;
}
</style>
