<template>
  <HeaderComponent :is_authenticated="true" />
  <div style="margin-inline: 50px">
    <FirstComponent />
    <p class="parent-paragraph">The main App data is: {{ testing }}</p>
    <LifeCycle />
    <PeopleComponent />
  </div>
</template>

<script>
import FirstComponent from "./components/FirstComponent.vue";
import LifeCycle from "./components/LifeCycle.vue";
import PeopleComponent from "./components/PeopleComponent.vue";
import HeaderComponent from "./components/HeaderComponent.vue";

export default {
  name: "App",
  components: {
    FirstComponent,
    LifeCycle,
    PeopleComponent,
    HeaderComponent,
  },
  data() {
    return {
      testing: "Study Project",
    };
  },
};
</script>

<style>
body {
  background-color: rgba(187, 200, 197, 0.795);
  color: rgb(33, 33, 33);
}
a {
  color: red;
}
.test {
  background-color: #51b38a;
}
</style>
