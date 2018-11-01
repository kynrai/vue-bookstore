<template>
  <div class="book-card">
    <div class="flip-card">
      <div class="front">
        <img :src="Cover">
        <!-- <img :src="Detail"/> -->
      </div>
      <div class="back">
        <h2>{{ Title }}</h2>
        <p>{{ Description }}</p>
        <button>More info</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "book",
  props: {
    Book: Object
  },
  data() {
    return {
      Title: String,
      Description: String,
      Language: String,
      Cover: String,
      Detail: String
    };
  },
  created() {
    this.Title = this.Book.title;
    this.Description = this.Book.description;
    this.Language = this.Book.language;
    this.Cover = this.Book.cover;
    this.Detail = this.Book.detail;
  }
};
</script>

<style scoped>
.book-card {
  perspective: 1000px;
  width: 100%;
  height: 500px;
  background-color: transparent;
}
.flip-card {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}
.book-card:hover .flip-card {
  transform: rotateY(180deg);
}
.front,
.back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}
.front {
  background-color: transparent;
  color: black;
}
.back {
  background-color: transparent;
  transform: rotateY(180deg);
}
img {
  max-height: 90%;
  max-width: 100%;
}
</style>
