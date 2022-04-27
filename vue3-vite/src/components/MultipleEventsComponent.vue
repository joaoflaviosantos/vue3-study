<template>
  <div>
    <button @click="first(txt1, $event), second(txt2, $event)">
      Enable Multiple Events
    </button>
    <p>{{ multiple_events }}</p>
  </div>
</template>

<script>
export default {
  name: "MultipleEventsComponent",
  data() {
    return {
      multiple_events: "",
      txt1: "First Event Enabled",
      txt2: "Second Event Enabled",
    };
  },
  methods: {
    first(txt, e) {
      this.multiple_events = this.txt1;
    },
    second(txt, e) {
      setTimeout(() => (this.multiple_events = this.txt2), 1000);
    },
  },
};
</script>

<style scoped>
div {
  margin: 50px;
}
</style>
