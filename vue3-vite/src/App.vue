<template>
  <FirstComponent />
  <p>The main App data is: {{ testing }}</p>
  <LifeCycle />
</template>

<script>
import FirstComponent from "./components/FirstComponent.vue";
import LifeCycle from "./components/LifeCycle.vue";

export default {
  name: "App",
  components: {
    FirstComponent,
    LifeCycle,
  },
  data() {
    return {
      testing: "Test",
    };
  },
};
</script>
