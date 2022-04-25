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
  },
  mounted() {
    setTimeout(() => {
      this.name = "Alice";
    }, 2000);
  },
};
</script>
