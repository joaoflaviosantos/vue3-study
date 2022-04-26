<template>
  <div>
    <h1>My name is: {{ name }}</h1>
  </div>
</template>

<script>
export default {
  name: "LifeCycle",
  data() {
    return {
      name: "Nothing",
    };
  },
  created() {
    setTimeout(() => {
      this.name = "John";
    }, 1000);
    this.createdlifeCycle();
  },
  mounted() {
    setTimeout(() => {
      this.name = "John F.";
    }, 2000);
    this.mountedlifeCycle();
  },
  methods: {
    createdlifeCycle() {
      console.log("Created!");
    },
    mountedlifeCycle() {
      console.log("Mounted!");
    },
  },
};
</script>
