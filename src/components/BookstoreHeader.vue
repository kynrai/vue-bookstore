<template>
	<header>
		<h1>Book Store</h1>
		<search-box/>
		<hr>
	</header>
</template>

<script>
import SearchBox from "./SearchBox.vue";

export default {
  components: {
    "search-box": SearchBox
  }
};
</script>

<style scoped>
header {
  margin: 5% 20%;
}
</style>

