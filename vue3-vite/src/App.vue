<template>
  <FirstComponent />
  <p>The main App data is: {{ testing }}</p>
</template>

<script>
import FirstComponent from "./components/FirstComponent.vue";

export default {
  name: "App",
  components: {
    FirstComponent,
  },
  data() {
    return {
      testing: "Test",
    };
  },
};
</script>
