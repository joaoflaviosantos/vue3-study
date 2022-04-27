<template>
  <div>
    <h1>Hello Vue3!</h1>
    <p>My name is {{ name }}. I work with {{ occupation }}.</p>
    <MultipleEventsComponent />
  </div>
</template>

<script>
import MultipleEventsComponent from "./MultipleEventsComponent.vue";

export default {
  name: "FirstComponent",
  components: {
    MultipleEventsComponent,
  },
  data() {
    return {
      name: "John",
      occupation: "Software Developer",
    };
  },
};
</script>
