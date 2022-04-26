<template>
  <FirstComponent />
  <p>The main App data is: {{ testing }}</p>
  <LifeCycle />
  <PeopleComponent />
</template>

<script>
import FirstComponent from "./components/FirstComponent.vue";
import LifeCycle from "./components/LifeCycle.vue";
import PeopleComponent from "./components/PeopleComponent.vue";

export default {
  name: "App",
  components: {
    FirstComponent,
    LifeCycle,
    PeopleComponent,
  },
  data() {
    return {
      testing: "Study Project",
    };
  },
};
</script>
