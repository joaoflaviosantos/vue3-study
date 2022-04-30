<template>
  <BannerComponent />
  <div class="main-container">
    <h1>Make your hamburger:</h1>
    <BurgerFormComponent />
  </div>
</template>

<script>
import BannerComponent from "../components/BannerComponent.vue";
import BurgerFormComponent from "../components/BurgerFormComponent.vue";

export default {
  components: {
    BannerComponent,
    BurgerFormComponent,
  },
};
</script>

<style></style>
