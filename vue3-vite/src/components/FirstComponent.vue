<template>
  <div>
    <h1>Hello Vue3!</h1>
    <p>My name is {{ name }}. I work with {{ occupation }}.</p>
    <MultipleEventsComponent />
    <ReuseComponent />
    <ReuseComponent />
    <ReuseComponent />
    <NetworkStatus />
  </div>
</template>

<script>
import MultipleEventsComponent from "./MultipleEventsComponent.vue";
import ReuseComponent from "./ReuseComponent.vue";
import NetworkStatus from "./NetworkStatus.vue";

export default {
  name: "FirstComponent",
  components: {
    MultipleEventsComponent,
    ReuseComponent,
    NetworkStatus,
  },
  data() {
    return {
      name: "John",
      occupation: "Software Developer",
    };
  },
};
</script>
